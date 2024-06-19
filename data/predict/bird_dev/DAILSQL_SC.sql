SELECT MAX((`Free Meal Count (K-12)` / `Enrollment (K-12)`)*100) AS highest_eligible_free_rate FROM frpm INNER JOIN schools ON frpm.CDSCode = schools.CDSCode WHERE schools.County = 'Alameda'
SELECT `School Name`, `Free Meal Count (Ages 5-17)`, `Enrollment (Ages 5-17)`, (`Free Meal Count (Ages 5-17)` / `Enrollment (Ages 5-17)`) as `Eligible Free Rate` FROM frpm WHERE `Educational Option Type` = 'Continuation' ORDER BY `Eligible Free Rate` ASC LIMIT 3
SELECT T1.Zip FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.`Charter School (Y/N)` = 1 AND T1.District = 'Fresno County Office of Education'
SELECT MailStreet, MailCity, MailZip, MailState FROM schools WHERE CDSCode = ( SELECT CDSCode FROM frpm ORDER BY `FRPM Count (K-12)` DESC LIMIT 1 )
SELECT T2.Phone FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.`Charter School (Y/N)` = 1 AND T2.OpenDate > '2000-01-01' AND T2.FundingType = 'Directly funded'
SELECT COUNT(DISTINCT T1.cds) FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T1.AvgScrMath < 400 AND T2.Virtual = 'F'
SELECT T1.School FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumTstTakr > 500 AND T1.Magnet = 1
SELECT T2.Phone FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T1.NumGE1500 = ( SELECT MAX(NumGE1500) FROM satscores )
SELECT SUM(T2.NumTstTakr) FROM frpm AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds ORDER BY T1.`FRPM Count (K-12)` DESC LIMIT 1
SELECT COUNT(T1.cds) FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T2.FundingType = 'Directly funded' AND T1.AvgScrMath > 560
SELECT T2.`FRPM Count (Ages 5-17)` FROM satscores AS T1 INNER JOIN frpm AS T2 ON T1.cds = T2.CDSCode ORDER BY T1.AvgScrRead DESC LIMIT 1
SELECT CDSCode FROM frpm WHERE `Enrollment (K-12)` + `Enrollment (Ages 5-17)` > 500 
SELECT MAX(`Percent (%) Eligible Free (Ages 5-17)`) FROM frpm AS f INNER JOIN satscores AS s ON f.CDSCode = s.cds WHERE s.NumGE1500 / s.NumTstTakr > 0.3;
SELECT Phone FROM schools WHERE CDSCode IN ( SELECT cds FROM ( SELECT cds, CAST(NumGE1500 AS REAL) / NumTstTakr AS excellence_rate FROM satscores ORDER BY excellence_rate DESC LIMIT 3))
SELECT schools.NCESSchool, frpm.`Enrollment (Ages 5-17)` FROM schools INNER JOIN frpm ON schools.CDSCode = frpm.CDSCode ORDER BY frpm.`Enrollment (Ages 5-17)` DESC LIMIT 5
SELECT T2.District, AVG(T1.AvgScrRead) AS AverageReadingScore FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T2.StatusType = 'Active' AND T1.AvgScrRead IS NOT NULL GROUP BY T2.District ORDER BY AverageReadingScore DESC LIMIT 1
SELECT COUNT(T1.cds) FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T2.County = 'Alameda' AND T1.NumTstTakr < 100
SELECT T2.CharterNum FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T1.AvgScrWrite = 499 
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.County = 'Contra Costa' AND T1.FundingType = 'Directly Funded' AND T2.NumTstTakr <= 250
SELECT schools.Phone FROM satscores JOIN schools ON satscores.cds = schools.CDSCode ORDER BY satscores.AvgScrMath DESC LIMIT 1;
SELECT COUNT(*) FROM frpm WHERE `County Name` = 'Amador' AND `Low Grade` = '9' AND `High Grade` = '12'
SELECT COUNT(C1.CDSCode) FROM frpm AS C1 INNER JOIN schools AS C2 ON C1.CDSCode = C2.CDSCode WHERE C2.City = 'Los Angeles' AND C1.`Free Meal Count (K-12)` > 500 AND C1.`FRPM Count (K-12)` < 700
SELECT `School Name` FROM frpm INNER JOIN satscores ON frpm.CDSCode= satscores.cds WHERE `County Name` = 'Contra Costa' ORDER BY NumTstTakr DESC LIMIT 1
SELECT `School`, `Street` FROM frpm INNER JOIN schools ON frpm.CDSCode = schools.CDSCode WHERE ABS(`Enrollment (K-12)` - `Enrollment (Ages 5-17)`) > 30
SELECT T1.`School Name` FROM frpm AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.`Percent (%) Eligible Free (K-12)` > 0.1 AND T2.NumGE1500 >= 1500
SELECT T2.School, T2.FundingType FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T2.County = 'Riverside' GROUP BY T2.School, T2.FundingType HAVING AVG(T1.AvgScrMath) > 400
SELECT S.School, S.Street, S.City, S.Zip, S.State FROM schools S INNER JOIN frpm F ON S.CDSCode = F.CDSCode WHERE F.`FRPM Count (Ages 5-17)` > 800 AND S.County = 'Monterey' AND S.SOCType = 'High School'
SELECT schools.School, AVG(satscores.AvgScrWrite), schools.Phone FROM schools INNER JOIN satscores ON schools.CDSCode = satscores.cds WHERE schools.OpenDate > '1991-12-31' OR (schools.ClosedDate < '2000-01-01' AND schools.ClosedDate IS NOT NULL) GROUP BY schools.School, schools.Phone
SELECT S.School, S.DOCTYPE FROM schools AS S JOIN ( SELECT F.CDSCode, (F.`Enrollment (K-12)` - F.`Enrollment (Ages 5-17)`) AS diff FROM frpm AS F JOIN schools AS S ON F.CDSCode = S.CDSCode WHERE S.FundingType = 'Local' ) AS T ON S.CDSCode = T.CDSCode WHERE T.diff > ( SELECT AVG(F.`Enrollment (K-12)` - F.`Enrollment (Ages 5-17)`) AS avg_diff FROM frpm AS F JOIN schools AS S ON F.CDSCode = S.CDSCode WHERE S.FundingType = 'Local' )
SELECT OpenDate FROM schools WHERE CDSCode = (SELECT CDSCode FROM frpm WHERE `Enrollment (K-12)` = (SELECT MAX(`Enrollment (K-12)`) FROM frpm))
SELECT City, SUM(`Enrollment (K-12)`) AS TotalEnrollment FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY City ORDER BY TotalEnrollment ASC LIMIT 5
SELECT `School Name`,(`Free Meal Count (K-12)` / `Enrollment (K-12)`) AS eligible_free_rate FROM frpm ORDER BY `Enrollment (K-12)` DESC LIMIT 11,2 
SELECT T1.`School Name`, (T1.`FRPM Count (K-12)` / T1.`Enrollment (K-12)`) AS `Eligible FRPM Rate` FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.DOC = 66 ORDER BY T1.`FRPM Count (K-12)` DESC LIMIT 5
SELECT schools.School, schools.Website FROM schools INNER JOIN frpm ON schools.CDSCode = frpm.CDSCode WHERE frpm.`Free Meal Count (Ages 5-17)` BETWEEN 1900 AND 2000
SELECT (`Free Meal Count (Ages 5-17)` / `Enrollment (Ages 5-17)`) as free_rate FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE AdmFName1 = 'Kacey' AND AdmLName1 = 'Gibson'
SELECT T2.AdmEmail1 FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.`Charter School (Y/N)` = 1 ORDER BY T1.`Enrollment (K-12)` ASC LIMIT 1 
SELECT T1.AdmFName1, T1.AdmLName1, T1.AdmFName2, T1.AdmLName2, T1.AdmFName3, T1.AdmLName3 FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds ORDER BY T2.NumGE1500 DESC LIMIT 1
SELECT T1.Street, T1.City, T1.State, T1.Zip FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds ORDER BY (T2.NumGE1500 / T2.NumTstTakr) ASC LIMIT 1
SELECT s.Website FROM satscores AS sats INNER JOIN schools AS s ON sats.cds = s.CDSCode WHERE s.County = 'Los Angeles' AND sats.NumTstTakr BETWEEN 2000 AND 3000
SELECT AVG(satscores.NumTstTakr) FROM satscores INNER JOIN schools ON satscores.cds = schools.CDSCode WHERE schools.County = 'Fresno' AND schools.OpenDate BETWEEN '1980-01-01' AND '1980-12-31'
SELECT T1.Phone FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.District = 'Fresno Unified' ORDER BY T2.AvgScrRead ASC LIMIT 1 
SELECT s.School, ss.AvgScrRead FROM schools AS s INNER JOIN satscores AS ss ON s.CDSCode = ss.cds WHERE s.Virtual = 'F' ORDER BY ss.AvgScrRead DESC LIMIT 5
SELECT EILName FROM schools WHERE CDSCode = ( SELECT cds FROM satscores ORDER BY AvgScrMath DESC LIMIT 1 )
SELECT T2.AvgScrMath, T3.County FROM ( SELECT cds, (AvgScrRead + AvgScrMath + AvgScrWrite)/3 AS AvgTotal FROM satscores ORDER BY AvgTotal ASC LIMIT 1) AS T1 INNER JOIN satscores AS T2 ON T1.cds = T2.cds INNER JOIN schools AS T3 ON T2.cds = T3.CDSCode;
SELECT AVG(T2.AvgScrWrite), T1.City FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumGE1500 = ( SELECT MAX(NumGE1500) FROM satscores )
SELECT T3.School, AVG(T2.AvgScrWrite) FROM schools AS T3 INNER JOIN satscores AS T2 ON T3.CDSCode = T2.cds WHERE T3.AdmFName1 = 'Ricci' AND T3.AdmLName1 = 'Ulrich' GROUP BY T3.School
SELECT `District Name`, SUM(`Enrollment (K-12)`) as Total_Enrollment FROM frpm WHERE `District Code`= 31 GROUP BY `District Name` ORDER BY Total_Enrollment DESC LIMIT 1;
SELECT COUNT(*)/12 FROM schools WHERE County = 'Alameda' AND DOC = '52' AND strftime('%Y', OpenDate) = '1980'
SELECT SUM(IIF(DOC = '54', 1.0, 0)) / SUM(IIF(DOC = '52', 1.0, 0)) AS Ratio FROM schools WHERE County = 'Orange' AND StatusType = 'Merged'
SELECT County, School, ClosedDate FROM schools WHERE StatusType = 'Closed' GROUP BY County, School ORDER BY COUNT(CDSCode) DESC LIMIT 1
SELECT T1.Street, T1.School FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds ORDER BY T2.AvgScrMath DESC LIMIT 1 OFFSET 5
SELECT schools.MailStreet, schools.School FROM schools INNER JOIN satscores ON schools.CDSCode = satscores.cds ORDER BY satscores.AvgScrRead LIMIT 1
SELECT COUNT(*) FROM satscores AS S INNER JOIN schools AS Sch ON S.cds = Sch.CDSCode WHERE (S.AvgScrRead + S.AvgScrMath + S.AvgScrWrite) >= 1500 AND Sch.MailCity = 'Lakeport' 
SELECT SUM(satscores.NumTstTakr) FROM satscores INNER JOIN schools ON satscores.cds = schools.CDSCode WHERE schools.MailCity = 'Fresno'
SELECT School, MailZip FROM schools WHERE AdmFName1 = 'Avetik' AND AdmLName1 = 'Atoian'
SELECT CAST(COUNT(CASE WHEN County = 'Colusa' THEN 1 ELSE NULL END) AS REAL) / COUNT(CASE WHEN County = 'Humboldt' THEN 1 ELSE NULL END) AS Ratio FROM schools WHERE MailState = 'California'
SELECT COUNT(DISTINCT CDSCode) FROM schools WHERE MailState = 'CA' AND StatusType = 'Active' AND County = 'San Joaquin'
SELECT Phone, Ext FROM schools WHERE CDSCode = ( SELECT cds FROM satscores ORDER BY AvgScrWrite DESC LIMIT 332, 1 )
SELECT School, Phone, Ext FROM schools WHERE Zip = '95203-3704'
SELECT Website FROM schools WHERE AdmFName1 = 'Mike' AND AdmLName1 = 'Larson' OR AdmFName2 = 'Dante' AND AdmLName2 = 'Alvarez' OR AdmFName3 = 'Dante' AND AdmLName3 = 'Alvarez'
SELECT Website FROM schools WHERE Virtual = 'P' AND Charter = 1 AND County = 'San Joaquin'
SELECT COUNT(CDSCode) FROM schools WHERE City = 'Hickman' AND DOC = 52 AND Charter = 1
SELECT COUNT(*) FROM frpm INNER JOIN schools ON frpm.CDSCode = schools.CDSCode WHERE schools.Charter = 0 AND schools.County = 'Los Angeles' AND ((frpm.`Free Meal Count (K-12)` / frpm.`Enrollment (K-12)`) * 100) < 0.18
SELECT School, City, AdmFName1, AdmLName1, AdmFName2, AdmLName2, AdmFName3, AdmLName3 FROM schools WHERE Charter = 1 AND CharterNum = '00D2'
SELECT COUNT(CDSCode) FROM schools WHERE MailCity = 'Hickman' and CharterNum = '00D4'
SELECT CAST(SUM(CASE WHEN FundingType = 'locally' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(CDSCode) FROM schools WHERE County = 'Santa Clara'
SELECT COUNT(*) FROM schools WHERE County = 'Stanislaus' AND FundingType = 'Directly Funded' AND OpenDate BETWEEN '2000-01-01' AND '2005-12-31'
SELECT COUNT(DISTINCT CDSCode) FROM schools WHERE DOCType = 'Community College District' AND ClosedDate LIKE '1989%' AND City = 'San Francisco'
SELECT County FROM schools WHERE SOC = '11' AND STRFTIME('%Y', ClosedDate) BETWEEN '1980' AND '1989' GROUP BY County ORDER BY COUNT(*) DESC LIMIT 1
SELECT NCESSchool FROM schools WHERE SOC = '31'
SELECT COUNT(District) FROM schools WHERE County = 'Alpine' AND DOCType = 'District Community Day School' AND (StatusType = 'Active' OR StatusType = 'Closed')
SELECT `District Code` FROM frpm WHERE CDSCode IN ( SELECT CDSCode FROM schools WHERE Magnet = 0 AND City = 'Fresno' )
SELECT `Enrollment (Ages 5-17)` FROM frpm INNER JOIN schools ON frpm.CDSCode = schools.CDSCode WHERE schools.EdOpsCode = 'SSS' AND schools.City = 'Fremont' AND frpm.`Academic Year` = '2014-2015'
SELECT `FRPM Count (Ages 5-17)` FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.School = 'Youth Authority School' AND T2.MailStreet = 'PO Box 1040'
SELECT `Low Grade` FROM frpm WHERE `District Type` = 'SPECON' AND `District Code` = 613360
SELECT `School Name`, `Educational Option Type` FROM frpm WHERE `NSLP Provision Status` = 'Breakfast Provision 2' AND `County Code` = '37'
SELECT City FROM schools WHERE CDSCode IN ( SELECT CDSCode FROM frpm WHERE `Low Grade` = '9' AND `High Grade` = '12' AND `NSLP Provision Status` = '2' ) AND County = 'Merced' AND EILCode = 'HS' 
SELECT T1.`School`, (T2.`Free Meal Count (Ages 5-17)` / T2.`Enrollment (Ages 5-17)`) * 100 AS `Percent (%) Eligible FRPM (Ages 5-17)` FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County = 'Los Angeles' AND T1.GSserved = 'K-9'
SELECT GSserved FROM schools WHERE City = 'Adelanto' GROUP BY GSserved ORDER BY COUNT(GSserved) DESC LIMIT 1
SELECT County, COUNT(*) AS Total FROM schools WHERE Virtual = 'F' AND (County = 'San Diego' OR County = 'Santa Barbara') GROUP BY County ORDER BY Total DESC LIMIT 1
SELECT `School Type`, `School Name`, Latitude FROM schools WHERE Latitude = ( SELECT MAX(Latitude) FROM schools )
SELECT T1.City, T1.School, T1.GSoffered FROM schools AS T1 WHERE T1.State = 'CA' ORDER BY T1.Latitude LIMIT 1
SELECT GSoffered FROM schools ORDER BY Longitude DESC LIMIT 1
SELECT City, COUNT(School) as NumberOfSchools FROM schools WHERE Magnet = 1 AND GSoffered = 'K-8' AND EdOpsCode = 'Multiple Provision Types' GROUP BY City 
SELECT AdmFName1, District, COUNT(*) as count FROM schools GROUP BY AdmFName1, District ORDER BY count DESC LIMIT 2 
SELECT `District Code`, (`Free Meal Count (K-12)` / `Enrollment (K-12)`) * 100 AS Percentage_Free FROM frpm INNER JOIN schools ON frpm.CDSCode = schools.CDSCode WHERE AdmFName1 = 'Alusine'
SELECT AdmLName1, District, County, School FROM schools WHERE CharterNum = '40'
SELECT AdmEmail1 FROM schools WHERE County = 'San Bernardino' AND District = 'San Bernardino City Unified' AND OpenDate BETWEEN '2009-01-01' AND '2010-12-31' AND (SOC = '62' OR DOC = '54')
SELECT T1.School, T1.AdmEmail1 FROM schools AS T1 INNER JOIN satscores AS T2 ON T2.cds = T1.CDSCode ORDER BY T2.NumGE1500 DESC LIMIT 1
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.frequency = 'POPLATEK PO OBRATU' AND T2.A3 = 'East Bohemia'
SELECT COUNT(DISTINCT T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN loan AS T3 ON T1.account_id = T3.account_id WHERE T2.A3 = 'Prague'
SELECT IIF(AVG(A12) > AVG(A13), '1995', '1996') AS 'Higher Unemployment Year' FROM district
SELECT COUNT(DISTINCT T1.district_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'F' AND T2.A11 > 6000 AND T2.A11 < 10000
SELECT COUNT(DISTINCT T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'M' AND T2.A3 = 'North Bohemia' AND T2.A11 > 8000 
SELECT T1.account_id, max(T4.A11) - min(T4.A11) FROM disp AS T1 INNER JOIN client AS T2 ON T1.client_id = T2.client_id INNER JOIN account AS T3 ON T1.account_id = T3.account_id INNER JOIN district AS T4 ON T2.district_id = T4.district_id WHERE T2.gender = 'F' GROUP BY T1.account_id ORDER BY T2.birth_date DESC, T4.A11 ASC LIMIT 1;
SELECT T1.account_id FROM disp AS T1 INNER JOIN client AS T2 ON T1.client_id = T2.client_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id ORDER BY T2.birth_date DESC, T3.A11 DESC LIMIT 1
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T3.frequency = 'POPLATEK TYDNE' AND T2.type = 'OWNER'
SELECT DISTINCT T1.client_id, T1.gender, T1.birth_date FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T2.type = 'Disponent' AND T3.frequency = 'POPLATEK PO OBRATU'
SELECT account.account_id, loan.amount FROM account INNER JOIN loan ON account.account_id=loan.account_id WHERE loan.status = 'A' AND STRFTIME('%Y', loan.date) = '1997' AND account.frequency = 'POPLATEK TYDNE' ORDER BY loan.amount ASC LIMIT 1
SELECT T1.account_id, T1.amount FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.duration > 12 AND STRFTIME('%Y', T2.date) = '1993' ORDER BY T1.amount DESC LIMIT 1
SELECT COUNT(DISTINCT T3.account_id) FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN account AS T3 ON T2.account_id = T3.account_id INNER JOIN district AS T4 ON T1.district_id = T4.district_id WHERE T1.gender = 'F' AND T1.birth_date < '1950-01-01' AND T4.A2 = 'Sokolov'
SELECT DISTINCT T1.account_id FROM account AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE STRFTIME('%Y', T2.date) = '1995' ORDER BY T2.date ASC LIMIT 1 
SELECT T1.account_id FROM account AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.date < '1997-01-01' AND T2.amount > 3000
SELECT T2.client_id FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T1.issued = '1994-03-03'
SELECT T1.date FROM account AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.amount = 840 AND T2.date = '1998-10-14'
SELECT a.district_id FROM loan as l INNER JOIN account as a ON l.account_id = a.account_id WHERE l.date = '1994-08-25'
SELECT MAX(T1.amount) FROM trans AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id INNER JOIN card AS T3 ON T2.disp_id = T3.disp_id WHERE T3.issued = '1996-10-21'
SELECT T3.gender FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN client AS T3 ON T3.district_id = T2.district_id WHERE T2.A11 = ( SELECT MAX(A11) FROM district ) ORDER BY T3.birth_date ASC LIMIT 1
SELECT T5.amount FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN disp AS T3 ON T2.account_id = T3.account_id INNER JOIN client AS T4 ON T3.client_id = T4.client_id INNER JOIN trans AS T5 ON T2.account_id = T5.account_id WHERE T1.loan_id = ( SELECT loan_id FROM loan ORDER BY amount DESC LIMIT 1 ) ORDER BY T5.date ASC LIMIT 1
SELECT COUNT(DISTINCT c.client_id) FROM client AS c INNER JOIN disp AS d ON d.client_id = c.client_id INNER JOIN account AS a ON a.account_id = d.account_id INNER JOIN district AS dt ON dt.district_id = a.district_id WHERE dt.A2 = 'Jesenik' AND c.gender = 'F'
SELECT T1.disp_id FROM disp AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.amount = 5100 AND STRFTIME('%Y-%m-%d', T2.date) = '1998-09-02'
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 'Litomerice' AND STRFTIME('%Y', T1.date) = '1996' 
SELECT T4.A2 FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN account AS T3 ON T2.account_id = T3.account_id INNER JOIN district AS T4 ON T3.district_id = T4.district_id WHERE T1.gender = 'F' AND T1.birth_date = '1976-01-29'
SELECT T2.birth_date FROM loan AS T1 INNER JOIN client AS T2 ON T1.account_id = T2.client_id WHERE T1.amount = 98832 AND T1.date = '1996-01-03'
SELECT T1.account_id FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'Prague' ORDER BY T1.date LIMIT 1
SELECT CAST(SUM(IIF(gender = 'M', 1, 0)) AS REAL) * 100 / COUNT(client_id) FROM client WHERE district_id = (SELECT district_id FROM district WHERE A3 = 'south Bohemia' ORDER BY A4 DESC LIMIT 1)
SELECT (CAST((SELECT balance FROM trans WHERE account_id IN (SELECT account_id FROM loan WHERE DATE = '1993-07-05') AND date = '1998-12-27') - (SELECT balance FROM trans WHERE account_id IN (SELECT account_id FROM loan WHERE DATE = '1993-07-05') AND date = '1993-03-22') AS REAL) / (SELECT balance FROM trans WHERE account_id IN (SELECT account_id FROM loan WHERE DATE = '1993-07-05') AND date = '1993-03-22')) * 100 FROM account WHERE account_id IN (SELECT account_id FROM loan WHERE DATE = '1993-07-05')
SELECT CAST(SUM(CASE WHEN status = 'A' THEN amount ELSE 0 END) AS REAL) * 100 / SUM(amount) from loan 
SELECT CAST(SUM(CASE WHEN T1.status = 'C' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.loan_id) AS percentage_no_issues FROM loan AS T1 WHERE T1.amount<100000
SELECT T1.account_id, T4.A2 as district_name, T4.A3 as district_region FROM account AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id INNER JOIN disp AS T3 ON T1.account_id = T3.account_id INNER JOIN district AS T4 ON T1.district_id = T4.district_id WHERE T3.type = 'POPLATEK PO OBRATU' AND STRFTIME('%Y', T1.date) = '1993'
SELECT T1.account_id, T1.frequency FROM account T1 INNER JOIN disp T2 ON T1.account_id = T2.account_id INNER JOIN client T3 ON T2.client_id = T3.client_id INNER JOIN district T4 ON T3.district_id = T4.district_id WHERE (T4.A2 = 'east Bohemia' OR T4.A3 = 'east Bohemia') AND (STRFTIME('%Y', T1.date) BETWEEN '1995' AND '2000')
SELECT T1.account_id, T1.date FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 'Prachatice'
SELECT T2.A2 AS district, T2.A3 AS region FROM loan AS T1 INNER JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.loan_id = 4990 
SELECT T1.account_id, T3.A2 AS district, T3.A3 AS region FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T1.amount > 300000
SELECT L.loan_id, D.A3 AS 'district', D.A11 AS 'average_salary' FROM loan L INNER JOIN account A ON L.account_id = A.account_id INNER JOIN district D ON A.district_id = D.district_id WHERE L.duration = 60
SELECT T1.A2 AS 'District Name', T1.A3 AS 'State', ((T1.A13 - T1.A12) / T1.A12) * 100 AS 'Unemployment Rate Increment from 1995 to 1996' FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id INNER JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T3.status = 'D'
SELECT CAST((SUM(CASE WHEN d.A2 = 'Decin' THEN 1 ELSE 0 END)) AS REAL) * 100 / COUNT(a.account_id) FROM account AS a INNER JOIN district AS d ON a.district_id = d.district_id WHERE STRFTIME('%Y', a.date) = '1993'
SELECT account_id FROM account WHERE frequency = 'POPLATEK MESICNE' 
SELECT T2.A2 FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'F' GROUP BY T2.A2 ORDER BY COUNT(T1.client_id) DESC LIMIT 10 
SELECT DISTINCT T2.A2, T1.amount FROM trans AS T1 INNER JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.type = 'VYDAJ' AND STRFTIME('%Y-%m', T1.date) = '1996-01' ORDER BY T1.amount DESC LIMIT 10
SELECT COUNT(DISTINCT account.account_id) FROM account JOIN district ON account.district_id = district.district_id LEFT JOIN disp ON account.account_id = disp.account_id LEFT JOIN card ON disp.disp_id = card.disp_id WHERE district.A3 = 'South Bohemia' AND card.card_id IS NULL
SELECT A3 FROM district WHERE district_id = ( SELECT account.district_id FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE (status = 'C' OR status = 'D') GROUP BY account.district_id ORDER BY COUNT(loan.loan_id) DESC LIMIT 1 )
SELECT AVG(loan.amount) FROM loan INNER JOIN disp ON loan.account_id = disp.account_id INNER JOIN client ON disp.client_id = client.client_id WHERE client.gender = 'M'
SELECT A2 AS district_name, A3 AS branch_location FROM district WHERE A13 = ( SELECT MAX(A13) FROM district )
SELECT COUNT(account_id) FROM account WHERE district_id = ( SELECT district_id FROM district WHERE A16 = (SELECT MAX(A16) FROM district) )
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.operation = 'VYBER KARTOU' AND T2.balance < 0 AND T1.frequency = 'POPLATEK MESICNE'
SELECT COUNT(DISTINCT T1.loan_id) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date BETWEEN '1995-01-01' AND '1997-12-31' AND T1.amount >= 250000 AND T2.frequency = 'POPLATEK MESICNE' AND T1.status = 'approved'
SELECT COUNT(DISTINCT T1.account_id) FROM account AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id INNER JOIN district AS T3 ON T1.district_id = T3.district_id WHERE (T2.status = 'C' OR T2.status = 'D') AND T3.district_id = 1
SELECT COUNT(T1.gender) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A15 = ( SELECT min(A15) FROM ( SELECT A15 FROM district ORDER BY A15 DESC LIMIT 2 ) temp ) AND T1.gender = 'M'
SELECT COUNT(DISTINCT T1.card_id) FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T1.type = 'gold' AND T2.type = 'disponent'
SELECT COUNT(account_id) FROM account WHERE district_id = ( SELECT district_id FROM district WHERE A2 = 'Pisek' )
SELECT DISTINCT T4.A2 AS district_name FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN district AS T4 ON T2.district_id = T4.district_id WHERE T1.amount > 10000 AND STRFTIME('%Y', T1.date) = '1997' 
SELECT account_id FROM `order` WHERE k_symbol = 'SIPO' AND bank_to = 'Pisek'
SELECT T1.account_id FROM disp AS T1 INNER JOIN card AS T2 ON T1.disp_id = T2.disp_id WHERE T2.type IN ('gold', 'junior') GROUP BY T1.account_id HAVING COUNT(DISTINCT T2.type) = 2
SELECT AVG(amount) FROM trans WHERE type = 'VYBER KARTOU' AND STRFTIME('%Y', date) = '2021' AND STRFTIME('%m', date) IS NOT NULL
SELECT T1.disp_id FROM disp AS T1 INNER JOIN ( SELECT T3.account_id, AVG(T3.amount) AS AvgAmount FROM trans AS T3 WHERE T3.operation = 'VYBER KARTOU' AND STRFTIME('%Y', T3.date) = '1998' GROUP BY T3.account_id HAVING AVG(T3.amount) < ( SELECT AVG(T4.amount) FROM trans AS T4 WHERE T4.operation = 'VYBER KARTOU' AND STRFTIME('%Y', T4.date) = '1998' ) ) AS T2 ON T2.account_id = T1.account_id
SELECT DISTINCT T4.client_id, T4.gender FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id INNER JOIN loan AS T3 ON T2.account_id = T3.account_id INNER JOIN client AS T4 ON T2.client_id = T4.client_id WHERE T4.gender = 'F'
SELECT COUNT(T3.client_id) FROM district AS T1 INNER JOIN client AS T2 ON T1.district_id = T2.district_id INNER JOIN disp AS T3 ON T2.client_id = T3.client_id WHERE T1.A3 = 'south Bohemia' AND T2.gender = 'F'
SELECT T1.account_id FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN disp AS T3 ON T1.account_id = T3.account_id WHERE T2.A2 = 'Tabor' AND T3.type = 'OWNER'
SELECT account.frequency FROM account LEFT JOIN loan ON account.account_id = loan.account_id INNER JOIN district ON account.district_id = district.district_id WHERE loan.account_id IS NULL AND district.A11 BETWEEN 8000 AND 9000
SELECT COUNT(DISTINCT T2.account_id) FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id INNER JOIN trans AS T3 ON T2.account_id = T3.account_id WHERE T1.A3 = 'North Bohemia' AND T3.bank = 'AB'
SELECT DISTINCT T2.A2 FROM trans AS T1 INNER JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.type = 'VYDAJ'
SELECT A3, AVG(A15) FROM district WHERE A15 > 4000 AND EXISTS (SELECT 1 FROM account WHERE district_id = district.district_id AND date >= '1997-01-01') GROUP BY A3
SELECT COUNT(T1.card_id) FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id INNER JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T1.type = 'classic' AND T2.type = 'OWNER'
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 'Hl.m. Praha' AND T1.gender = 'M'
SELECT CAST(SUM(CASE WHEN type = 'Gold' AND STRFTIME('%Y', issued) < '1998' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM card
SELECT T3.gender, T3.birth_date FROM client AS T3 INNER JOIN disp AS T2 ON T3.client_id = T2.client_id INNER JOIN account AS T1 ON T2.account_id = T1.account_id INNER JOIN loan AS T4 ON T1.account_id = T4.account_id WHERE T2.type = 'OWNER' ORDER BY T4.amount DESC LIMIT 1
SELECT A15 FROM district WHERE district_id = ( SELECT district_id FROM account WHERE account_id = 532 )
SELECT T2.district_id FROM `order` AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.order_id = 33333
SELECT T1.account_id, T1.date, T1.amount FROM trans AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T2.client_id = 3356 AND T1.operation = 'VYBER'
SELECT COUNT(DISTINCT a.account_id) FROM account a INNER JOIN loan l ON a.account_id = l.account_id WHERE a.frequency = 'POPLATEK TYDNE' AND l.amount < 200000
SELECT T2.type FROM disp AS T1 INNER JOIN card AS T2 ON T1.disp_id = T2.disp_id WHERE T1.client_id = 13539
SELECT T2.A3 FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.client_id = 3541
SELECT T.A2 FROM ( SELECT T1.A2, COUNT(T1.district_id) AS num FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id INNER JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T3.status = 'A' GROUP BY T1.district_id ) AS T ORDER BY T.num DESC LIMIT 1
SELECT T2.client_id FROM `order` AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T1.order_id = 32423
SELECT * FROM trans WHERE account_id IN ( SELECT account_id FROM account WHERE district_id = 5 )
SELECT COUNT(account_id) FROM account WHERE district_id = ( SELECT district_id FROM district WHERE A3 = 'Jesenik' )
SELECT DISTINCT T1.client_id FROM disp AS T1 INNER JOIN card AS T2 ON T1.disp_id = T2.disp_id WHERE T2.type = 'junior' AND T2.issued >= '1997-01-01'
SELECT CAST(SUM(IIF(T3.gender = 'F', 1, 0)) AS REAL) * 100 / COUNT(T3.client_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN client AS T3 ON T3.district_id = T2.district_id WHERE T2.A11 > 10000
SELECT 100.0 * (SUM(CASE WHEN strftime('%Y', L2.`date`) = '1997' THEN L2.amount ELSE 0 END) - SUM(CASE WHEN strftime('%Y', L2.`date`) = '1996' THEN L2.amount ELSE 0 END)) / SUM(CASE WHEN strftime('%Y', L2.`date`) = '1996' THEN L2.amount ELSE 0 END) FROM client AS C1 INNER JOIN disp AS D1 ON C1.client_id = D1.client_id INNER JOIN loan AS L2 ON D1.account_id = L2.account_id WHERE C1.gender = 'M' AND strftime('%Y', L2.`date`) BETWEEN '1996' AND '1997'
SELECT COUNT(trans_id) FROM trans WHERE operation = 'VYBER KARTOU' AND strftime('%Y', date) > '1995'
SELECT (SUM(CASE WHEN A3 = 'North Bohemia' THEN A16 ELSE 0 END) - SUM(CASE WHEN A3 = 'East Bohemia' THEN A16 ELSE 0 END)) AS crime_difference FROM district WHERE A16 IS NOT NULL
SELECT type, COUNT(disp_id) FROM disp WHERE account_id BETWEEN 1 AND 10 GROUP BY type 
SELECT t1.frequency, t2.k_symbol FROM account AS t1 INNER JOIN trans AS t2 ON t1.account_id = t2.account_id WHERE t1.account_id = 3 AND t2.amount = 3539
SELECT T1.birth_date FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.account_id = 130
SELECT COUNT(DISTINCT T1.account_id) FROM account AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'OWNER' AND T1.frequency = 'POPLATEK PO OBRATU'
SELECT T1.amount, T1.status FROM loan AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T2.client_id = 992 
SELECT T3.gender, T1.balance FROM trans AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id INNER JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T2.client_id = 4 AND T1.trans_id = 851
SELECT T2.type FROM client AS T1 INNER JOIN card AS T2 ON T1.client_id= T2.disp_id WHERE T1.client_id = 9 
SELECT SUM(T1.amount) FROM trans AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T2.client_id = 617 AND STRFTIME('%Y', T1.date) = '1998'
SELECT C.client_id FROM client AS C INNER JOIN disp AS D ON C.client_id = D.client_id INNER JOIN account AS A ON D.account_id = A.account_id INNER JOIN district AS R ON A.district_id = R.district_id WHERE C.birth_date BETWEEN '1983-01-01' AND '1987-12-31' AND R.A3 = 'East Bohemia'
SELECT T1.client_id FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T1.gender = 'F' ORDER BY T3.amount DESC LIMIT 3
SELECT COUNT(*) FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN trans AS T3 ON T2.account_id = T3.account_id WHERE T1.gender = 'M' AND STRFTIME('%Y', T1.birth_date) BETWEEN '1974' AND '1976' AND T3.operation = 'SIPO' AND T3.amount > 4000
SELECT COUNT(account_id) FROM account a INNER JOIN district d ON a.district_id = d.district_id WHERE d.A3 = 'Beroun' AND STRFTIME('%Y', a.date) > '1996'
SELECT COUNT(DISTINCT T2.client_id) FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id INNER JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T3.gender = 'F' AND T1.type = 'junior'
SELECT CAST(SUM(CASE WHEN T1.gender = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.client_id) FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN account AS T3 ON T2.account_id = T3.account_id INNER JOIN district AS T4 ON T3.district_id = T4.district_id WHERE T4.A3 = 'Prague'
SELECT CAST(SUM(CASE WHEN T1.gender = 'M' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.client_id) FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T3.frequency = 'POPLATEK TYDNE'
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T3.frequency = 'POPLATEK TYDNE' AND T2.type = 'USER'
SELECT account.account_id FROM account INNER JOIN loan ON account.account_id = loan.account_id WHERE loan.duration > 24 AND account.date < '1997-01-01' ORDER BY loan.amount ASC LIMIT 1
SELECT account_id FROM disp WHERE client_id IN (SELECT client_id FROM client WHERE gender = 'F' ORDER BY birth_date ASC) AND account_id IN (SELECT account_id FROM trans WHERE (type = 'Withdrawal' AND operation = 'Remittance to another bank' AND trans_id IN (SELECT trans_id FROM trans WHERE amount = (SELECT MIN(amount) FROM trans WHERE (type = 'Withdrawal' AND operation = 'Remittance to another bank')))))
SELECT COUNT(DISTINCT T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE STRFTIME('%Y', T1.birth_date) = '1920' AND T2.A3 = 'east Bohemia'
SELECT COUNT(A.account_id) FROM account AS A INNER JOIN loan AS L ON A.account_id = L.account_id WHERE L.duration = 24 AND A.frequency = 'POPLATEK TYDNE'
SELECT AVG(T1.amount) FROM loan AS T1 INNER JOIN trans T2 ON T1.account_id = T2.account_id WHERE (T1.status = 'C' OR T1.status = 'D') AND T2.k_symbol = 'POPLATEK PO OBRATU'
SELECT T1.client_id, T1.district_id FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.type = 'OWNER'
SELECT T1.client_id, (CURRENT_DATE - T1.birth_date) / 365 AS age FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN card AS T3 ON T2.disp_id = T3.disp_id INNER JOIN loan AS T4 ON T2.account_id = T4.account_id WHERE T3.type = 'gold'
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY COUNT(bond_type) DESC LIMIT 1
SELECT COUNT(DISTINCT T1.atom_id) FROM atom AS T1 INNER JOIN molecule as T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' AND T1.element = 'cl'
SELECT AVG(CASE WHEN T1.element = 'O' THEN 1 ELSE 0 END) AS Avg_Oxygen_Atoms FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id OR T1.atom_id = T2.atom_id2 INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = '-'
SELECT CAST(SUM(CASE WHEN T3.bond_type = '-' THEN 1 ELSE 0 END) AS REAL) / COUNT(DISTINCT T2.atom_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T2.molecule_id = T3.molecule_id INNER JOIN connected AS T4 ON T3.bond_id = T4.bond_id WHERE T1.label = '+'
SELECT COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' AND T1.element = 'na'
SELECT molecule_id FROM molecule WHERE label = '+' AND molecule_id IN ( SELECT molecule_id FROM bond WHERE bond_type = '#' )
SELECT CAST(SUM(CASE WHEN T1.element = 'C' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T3.bond_id = T2.bond_id WHERE T3.bond_type = '='
SELECT COUNT(bond_id) FROM bond WHERE bond_type = '#'
SELECT COUNT(atom_id) FROM atom WHERE element != 'br'
SELECT COUNT(molecule_id) FROM molecule WHERE molecule_id BETWEEN 'TR000' AND 'TR099' AND label = '+'
SELECT molecule_id FROM atom WHERE element = 'si'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR004_8_9'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = 'double'
SELECT T2.label FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'h' GROUP BY T2.label ORDER BY COUNT(T2.label) DESC LIMIT 1
SELECT T3.bond_type FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T1.element = 'Te'
SELECT T1.atom_id, T1.atom_id2 FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.bond_type = '-'
SELECT T1.atom_id, T1.atom_id2 FROM connected AS T1 INNER JOIN atom AS T2 ON T1.atom_id = T2.atom_id INNER JOIN molecule AS T3 ON T2.molecule_id = T3.molecule_id WHERE T3.label = '-'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' GROUP BY T1.element ORDER BY COUNT(T1.atom_id) ASC LIMIT 1
SELECT T3.bond_type FROM connected AS T1 INNER JOIN atom AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T1.bond_id = T3.bond_id WHERE (T1.atom_id = 'TR004_8' AND T1.atom_id2 = 'TR004_20') OR (T1.atom_id = 'TR004_20' AND T1.atom_id2 = 'TR004_8')
SELECT label FROM molecule WHERE molecule_id NOT IN ( SELECT molecule_id FROM atom WHERE element = 'Sn' )
SELECT COUNT(DISTINCT a.atom_id) FROM atom AS a JOIN connected AS c ON a.atom_id = c.atom_id JOIN bond AS b ON c.bond_id = b.bond_id WHERE a.element IN ('I', 'S') AND b.bond_type = '-'
SELECT T1.atom_id, T1.atom_id2 FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.bond_type = '#'
SELECT T4.atom_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN connected AS T3 ON T1.atom_id = T3.atom_id INNER JOIN atom AS T4 ON T3.atom_id2 = T4.atom_id WHERE T2.molecule_id = 'TR181'
SELECT CAST(SUM(CASE WHEN T2.element <> 'f' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+'
SELECT CAST(SUM(CASE WHEN T2.bond_type = '#' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.bond_type) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+'
SELECT element FROM atom WHERE molecule_id = 'TR000' ORDER BY element ASC LIMIT 3
SELECT T1.atom_id, T1.atom_id2 FROM connected AS T1 INNER JOIN atom AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T1.bond_id = T3.bond_id WHERE T2.molecule_id = 'TR001' AND T3.bond_id = 'TR001_2_6'
SELECT SUM(CASE WHEN label = '+' THEN 1 ELSE 0 END) - SUM(CASE WHEN label = '-' THEN 1 ELSE 0 END) FROM molecule
SELECT atom_id, atom_id2 FROM connected WHERE bond_id = 'TR_000_2_5'
SELECT bond_id FROM connected WHERE atom_id2 = 'TR000_2'
SELECT T2.label FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '=' ORDER BY T2.label ASC LIMIT 5
SELECT CAST(SUM(CASE WHEN T2.bond_type = ' = ' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.molecule_id = 'TR008'
SELECT CAST(SUM(CASE WHEN label = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(molecule_id) FROM molecule
SELECT CAST(SUM(CASE WHEN element = 'h' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(atom_id) FROM atom WHERE molecule_id = 'TR206'
SELECT T2.bond_type FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 'TR000'
SELECT T1.element, T2.label FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 'TR060'
SELECT T3.bond_type, T4.label FROM molecule AS T4 INNER JOIN bond AS T3 ON T4.molecule_id = T3.molecule_id INNER JOIN connected AS T2 ON T3.bond_id = T2.bond_id INNER JOIN atom AS T1 ON T2.atom_id = T1.atom_id WHERE T4.molecule_id = 'TR018' GROUP BY T3.bond_type ORDER BY COUNT(T3.bond_type) DESC LIMIT 1
SELECT T1.label FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN connected AS T3 ON T2.bond_id = T3.bond_id WHERE T2.bond_type = 'Single' AND T1.label != 'Carcinogenic' GROUP BY T1.molecule_id, T1.label ORDER BY T1.label ASC LIMIT 3
SELECT T2.bond_type FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.molecule_id = 'TR006' ORDER BY T2.bond_type ASC LIMIT 2
SELECT COUNT(bond_id) FROM connected WHERE (atom_id = 'TR009_12' OR atom_id2 = 'TR009_12') AND bond_id LIKE 'TR009_%'
SELECT COUNT(DISTINCT T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+' AND T2.element = 'br'
SELECT T3.bond_type, T1.atom_id AS 'First Atom', T1.atom_id2 AS 'Second Atom' FROM connected AS T1 INNER JOIN bond AS T3 ON T1.bond_id = T3.bond_id WHERE T3.bond_id = 'TR001_6_9'
SELECT CASE WHEN T1.label = '+' THEN 'Carcinogenic' ELSE 'Non-Carcinogenic' END AS Carcinogenic_or_not, T2.molecule_id FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.atom_id = 'TR001_10'
SELECT COUNT(DISTINCT T1.molecule_id) FROM `molecule` AS T1 INNER JOIN `bond` AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = '#'
SELECT COUNT(bond_id) FROM connected WHERE atom_id LIKE 'TR%_19' OR atom_id2 LIKE 'TR%_19'
SELECT element FROM atom WHERE molecule_id = 'TR004'
SELECT COUNT(molecule_id) FROM molecule WHERE label = '-'
SELECT molecule_id FROM molecule WHERE label = '+' AND molecule_id IN ( SELECT molecule_id FROM atom WHERE CAST(SUBSTRING(atom_id, 7, 2) AS INT) BETWEEN 21 AND 25 )
SELECT T3.bond_type FROM connected AS T1 INNER JOIN atom AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T1.bond_id = T3.bond_id WHERE (T2.element = 'P' OR T2.element = 'N') AND T2.element = T3.bond_type 
SELECT CASE WHEN T4.label = '+' THEN 'Yes' ELSE 'No' END AS IsCarcinogenic FROM molecule AS T4 WHERE T4.molecule_id = ( SELECT T3.molecule_id FROM bond AS T3 WHERE T3.bond_type = ' = ' GROUP BY T3.molecule_id ORDER BY COUNT(T3.bond_id) DESC LIMIT 1 )
SELECT CAST(COUNT(T2.bond_id) AS REAL) / COUNT(DISTINCT T1.atom_id) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = 'I'
SELECT T2.bond_type, T2.bond_id FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE SUBSTR(T1.atom_id, 7, 2) + 0 = 45
SELECT element FROM atom WHERE atom_id NOT IN (SELECT atom_id FROM connected)
SELECT T1.atom_id, T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id OR T1.atom_id = T2.atom_id2 INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id INNER JOIN molecule AS T4 ON T3.molecule_id = T4.molecule_id WHERE T3.bond_type = '#' AND T4.label = 'TR447'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR144_8_19'
SELECT T2.label FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '=' AND T2.label = '+' GROUP BY T2.molecule_id ORDER BY COUNT(T1.bond_id) DESC LIMIT 1
SELECT element FROM atom WHERE molecule_id IN ( SELECT molecule_id FROM molecule WHERE label = '+' ) GROUP BY element ORDER BY COUNT(*) ASC LIMIT 1
SELECT T2.atom_id FROM connected AS T1 INNER JOIN atom AS T2 ON T1.atom_id2 = T2.atom_id WHERE T1.atom_id IN ( SELECT atom_id FROM atom WHERE element = 'pb' )
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = '#'
SELECT CAST(COUNT(T2.bond_id) AS REAL) * 100 / ( SELECT COUNT(T1.bond_id) FROM ( SELECT T1.bond_id, COUNT(T2.atom_id) AS count_of_same_elements FROM bond AS T1 INNER JOIN connected AS T2 ON T2.bond_id = T1.bond_id INNER JOIN atom AS T3 ON T3.atom_id = T2.atom_id GROUP BY T1.bond_id, T3.element ORDER BY count_of_same_elements DESC LIMIT 1 ) AS T1 ) AS "percentage" FROM bond AS T1 INNER JOIN connected AS T2 ON T2.bond_id = T1.bond_id GROUP BY T2.bond_id ORDER BY COUNT(T2.bond_id) DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.label = '+' THEN 1 ELSE 0 END) AS REAL) / COUNT(T1.bond_id) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '-'
SELECT COUNT(atom_id) FROM atom WHERE element IN ('c', 'h')
SELECT T2.atom_id2 FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = 's'
SELECT DISTINCT T3.bond_type FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T1.element = 'sn'
SELECT COUNT(DISTINCT T1.element) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = '-'
SELECT COUNT(DISTINCT T1.atom_id) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = '#' AND (T1.element = 'p' OR T1.element = 'br')
SELECT DISTINCT T2.bond_id FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+'
SELECT T1.molecule_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '-' AND T2.label = '-'
SELECT CAST(SUM(CASE WHEN T1.element = 'cl' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.atom_id) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = '-'
SELECT label FROM molecule WHERE molecule_id IN ('TR000', 'TR001', 'TR002');
SELECT molecule_id FROM molecule WHERE label = '-'
SELECT COUNT(molecule_id) FROM molecule WHERE label = '+' AND molecule_id BETWEEN 'TR000' AND 'TR030'
SELECT T2.bond_type FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id BETWEEN 'TR000' AND 'TR050'
SELECT DISTINCT T1.element FROM Atom AS T1 INNER JOIN Connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR001_10_11'
SELECT COUNT(bond_id) FROM atom JOIN connected ON atom.atom_id = connected.atom_id WHERE element = 'i'
SELECT CASE WHEN COUNT(CASE WHEN T1.label = '+' THEN 1 ELSE NULL END) > COUNT(CASE WHEN T1.label = '-' THEN 1 ELSE NULL END) THEN 'Carcinogenic' ELSE 'Non Carcinogenic' END FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'ca'
SELECT CASE WHEN COUNT(DISTINCT element) = 2 THEN 'yes' ELSE 'no' END AS has_both_elements FROM atom as a INNER JOIN connected as c ON a.atom_id = c.atom_id OR a.atom_id = c.atom_id2 WHERE c.bond_id = 'TR001_1_8' AND a.element IN ('cl', 'c')
SELECT DISTINCT T1.molecule_id FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id OR T1.atom_id = T2.atom_id2 INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id INNER JOIN molecule AS T4 ON T1.molecule_id = T4.molecule_id WHERE T1.element = 'c' AND T3.bond_type = '#' AND T4.label = '-' LIMIT 2
SELECT CAST(SUM(CASE WHEN T2.element = 'cl' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id = 'TR001' 
SELECT molecule_id FROM bond WHERE bond_type = '='
SELECT T1.atom_id, T2.atom_id2 FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = '#'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR005_16_26' 
SELECT COUNT(DISTINCT T1.molecule_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '-' AND T2.bond_type = '-'
SELECT T1.label FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR001_10_11'
SELECT T2.bond_id, T1.label AS 'Carcinogenic' FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = '#' AND (T1.label = '+' OR T1.label = '-')
SELECT `a`.`element`, COUNT(`a`.`element`) FROM `atom` AS `a` INNER JOIN `molecule` AS `m` ON `a`.`molecule_id` = `m`.`molecule_id` WHERE `m`.`label` = '+' AND SUBSTRING(`a`.`atom_id`, 7, 1) = '4' GROUP BY `a`.`element`
SELECT CAST(SUM(CASE WHEN T1.element = 'h' THEN 1 ELSE 0 END) AS REAL) / COUNT(T1.element), T2.label FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 'TR006'
SELECT CASE WHEN EXISTS (SELECT * FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'Ca' AND T1.label = '+') THEN 'Yes' ELSE 'No' END AS is_carcinogenic 
SELECT T3.bond_type FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T1.element = 'Te'
SELECT T.element FROM atom AS T INNER JOIN connected AS T1 ON T.atom_id = T1.atom_id WHERE T1.bond_id = 'TR001_10_11'
SELECT CAST(SUM(CASE WHEN T2.bond_type = '#' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id
SELECT CAST(SUM(CASE WHEN bond.bond_type = ' = ' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(bond.bond_type) AS percentage FROM atom JOIN connected on atom.atom_id = connected.atom_id JOIN bond on connected.bond_id = bond.bond_id WHERE atom.molecule_id = 'TR047'
SELECT CASE WHEN T1.label = '+' THEN 'Yes' ELSE 'No' END AS Carcinogenic FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.atom_id = 'TR001_1'
SELECT CASE WHEN `label` = '+' THEN 'YES' ELSE 'NO' END FROM molecule WHERE `molecule_id` = 'TR151'
SELECT T2.element FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'TR151' AND T2.element IN ('cl', 'c', 'h', 'o', 's', 'n', 'p', 'na', 'br', 'f', 'i', 'sn', 'pb', 'te', 'ca')
SELECT COUNT(molecule_id) FROM molecule WHERE label = '+'
SELECT atom_id FROM atom WHERE molecule_id IN (SELECT molecule_id FROM molecule WHERE CAST(SUBSTR(molecule_id, 3) AS INTEGER) BETWEEN 10 AND 50) AND element = 'c'
SELECT COUNT(atom_id) FROM atom WHERE molecule_id = ( SELECT molecule_id FROM molecule WHERE label = '+' )
SELECT T1.bond_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+' AND T1.bond_type = ' = '
SELECT COUNT(DISTINCT T1.atom_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'H' AND T2.label = '+'
SELECT T1.molecule_id FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id INNER JOIN atom AS T3 ON T2.atom_id = T3.atom_id WHERE T1.bond_id = 'TR00_1_2' AND T3.atom_id = 'TR00_1'
SELECT atom_id FROM atom WHERE element = 'c' AND molecule_id NOT IN ( SELECT molecule_id FROM molecule WHERE label != '-' )
SELECT CAST(SUM(CASE WHEN T1.label = '+' AND T2.element = 'h' THEN 1.0 ELSE 0 END) AS REAL) * 100 / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id
SELECT CASE WHEN label = '+' THEN 'Yes' ELSE 'No' END FROM molecule WHERE molecule_id = 'TR124'
SELECT atom.atom_id, atom.element FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE molecule.label = 'TR186'
SELECT T1.bond_type FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T1.molecule_id = 'TR007_4_19'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR001_2_4'
SELECT COUNT(bond.bond_type), molecule.label FROM molecule LEFT JOIN bond ON molecule.molecule_id = bond.molecule_id LEFT JOIN connected ON bond.bond_id = connected.bond_id WHERE molecule.molecule_id = 'TR006' AND bond.bond_type = '='
SELECT T1.label, T2.element FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+' 
SELECT T1.bond_id, T3.atom_id, T3.atom_id2 FROM bond AS T1 INNER JOIN connected AS T3 ON T1.bond_id = T3.bond_id WHERE T1.bond_type = '-'
SELECT T4.label, GROUP_CONCAT(T1.element) AS elements FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id INNER JOIN molecule AS T4 ON T1.molecule_id = T4.molecule_id WHERE T3.bond_type = '#' GROUP BY T4.molecule_id
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR000_2_3'
SELECT COUNT(bond_id) FROM bond WHERE molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id IN (SELECT atom_id FROM atom WHERE element = 'chlorine'))
SELECT A.atom_id, COUNT(DISTINCT B.bond_type) FROM `atom` AS A INNER JOIN `connected` AS C ON A.atom_id = C.atom_id OR A.atom_id = C.atom_id2 INNER JOIN `bond` AS B ON C.bond_id = B.bond_id INNER JOIN `molecule` AS M ON M.molecule_id = A.molecule_id WHERE M.label = 'TR346' GROUP BY A.atom_id
SELECT COUNT(DISTINCT T1.molecule_id), COUNT(DISTINCT T2.molecule_id) FROM bond AS T1 LEFT JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id AND T2.label = '+' WHERE T1.bond_type = '='
SELECT COUNT(DISTINCT m.molecule_id) FROM molecule m WHERE m.molecule_id NOT IN (SELECT a.molecule_id FROM atom a WHERE a.element = 's') AND m.molecule_id NOT IN (SELECT b.molecule_id FROM bond b WHERE b.bond_type = 'double')
SELECT T3.label FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id INNER JOIN molecule AS T3 ON T1.molecule_id = T3.molecule_id WHERE T1.bond_id = 'TR001_2_4' AND T3.label = '+'
SELECT COUNT(atom_id) FROM atom WHERE molecule_id = 'TR005'
SELECT COUNT(bond_id) FROM bond WHERE bond_type = '-'
SELECT T3.label FROM atom AS T1 INNER JOIN molecule AS T3 ON T1.molecule_id = T3.molecule_id WHERE T1.element = 'cl' AND T3.label = '+'
SELECT T2.label FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'C' AND T2.label = '-'
SELECT CAST(SUM(CASE WHEN T1.label = '+' AND T2.element = 'Cl' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id
SELECT molecule_id FROM bond WHERE bond_id = 'TR001_1_7'
SELECT COUNT(DISTINCT T1.element) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_id = 'TR001_3_4'
SELECT T2.bond_type FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T1.atom_id = 'TR000_1' AND T1.atom_id2 = 'TR000_2'
SELECT T3.label FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN molecule AS T3 ON T1.molecule_id = T3.molecule_id WHERE T2.atom_id2 = 'TR000_4' AND T1.atom_id = 'TR000_2'
SELECT element FROM atom WHERE atom_id = 'TR000_1'
SELECT CASE WHEN label = '+' THEN 'Carcinogenic' ELSE 'Non-carcinogenic' END AS carcinogenic_status FROM molecule WHERE molecule_id = 'TR000'
SELECT (CAST(SUM(CASE WHEN bond.bond_type = '-' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(bond.bond_id)) AS percentage FROM atom LEFT JOIN connected on atom.atom_id = connected.atom_id LEFT JOIN bond on connected.bond_id = bond.bond_id;
SELECT COUNT(DISTINCT T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'n' AND T1.label = '+'
SELECT DISTINCT T4.label FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id INNER JOIN molecule AS T4 ON T1.molecule_id = T4.molecule_id WHERE T1.element = 's' AND T3.bond_type = ' = '
SELECT T1.molecule_id, T1.label FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '-' GROUP BY T2.molecule_id HAVING COUNT(T2.atom_id) > 5
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = '=' AND T1.molecule_id = 'TR024'
SELECT T1.label FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+' GROUP BY T1.molecule_id ORDER BY COUNT(T2.atom_id) DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.label = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.molecule_id) FROM molecule as T1 INNER JOIN atom as T2 ON T1.molecule_id = T2.molecule_id INNER JOIN connected as T3 ON T2.atom_id = T3.atom_id INNER JOIN bond as T4 ON T3.bond_id = T4.bond_id WHERE T2.element = 'H' AND T4.bond_type = '#'
SELECT COUNT(molecule_id) FROM molecule WHERE label = '+'
SELECT COUNT(DISTINCT T1.molecule_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = '-' AND T1.molecule_id BETWEEN 'TR004' AND 'TR010'
SELECT COUNT(atom_id) FROM atom WHERE element = 'c' AND molecule_id = 'TR008'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = 'TR004_7' AND T2.label = '-'
SELECT COUNT(DISTINCT m.molecule_id) FROM molecule m JOIN atom a ON m.molecule_id = a.molecule_id JOIN connected c ON a.atom_id = c.atom_id JOIN bond b ON b.bond_id = c.bond_id WHERE a.element = 'o' AND b.bond_type = '='
SELECT COUNT(DISTINCT T2.molecule_id) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '#' AND T2.label = '-'
SELECT T1.element, T3.bond_type FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T1.molecule_id = 'TR016'
SELECT T1.atom_id FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T1.element = 'C' AND T3.bond_type = '=' AND T1.molecule_id = 'TR012'
SELECT T1.atom_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'o' AND T2.label = '+'
SELECT name FROM cards WHERE cardKingdomFoilId = cardKingdomId AND cardKingdomId IS NOT NULL
SELECT name FROM cards WHERE borderColor = 'borderless' AND (cardKingdomFoilId IS NULL OR cardKingdomId IS NULL)
SELECT name FROM cards WHERE faceConvertedManaCost = ( SELECT MAX(faceConvertedManaCost) FROM cards )
SELECT name FROM cards WHERE edhrecRank < 100 AND frameVersion = '2015'
SELECT T1.name FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'mythic' AND T2.format = 'gladiator' AND T2.status = 'Banned'
SELECT T1.name, T2.status FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.types = 'Artifact' AND T1.side IS NULL AND T2.format = 'vintage'
SELECT T2.id, T2.artist FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.format LIKE 'commander' AND T1.status LIKE 'Legal' AND (T2.power IS NULL OR T2.power = '*')
SELECT T1.name, T2.text, T1.hasContentWarning FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = 'Stephen Daniele'
SELECT R.text FROM rulings AS R INNER JOIN cards AS C ON R.uuid = C.uuid WHERE C.name = 'Sublime Epiphany' AND C.number = '74s'
SELECT T1.name, T1.artist, T1.isPromo FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid GROUP BY T2.uuid ORDER BY COUNT(T2.uuid) DESC LIMIT 1
SELECT T1.language FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Annul' AND T2.number = '29'
SELECT T1.name FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = 'Japanese'
SELECT CAST(SUM(CASE WHEN T1.language = 'Chinese Simplified' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM foreign_data AS T1
SELECT T1.name, T1.totalSetSize FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'Italian' 
SELECT COUNT(DISTINCT type) FROM cards WHERE artist = 'Aaron Boyd'
SELECT keywords FROM cards WHERE name = 'Angel of Mercy'
SELECT COUNT(id) FROM cards WHERE power = '*'
SELECT promoTypes FROM cards WHERE name = 'Duress'
SELECT borderColor FROM cards WHERE name = 'Ancestor\'s Chosen'
SELECT originalType FROM cards WHERE name = 'Ancestor's Chosen' 
SELECT T3.language FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code INNER JOIN set_translations AS T3 ON T2.code = T3.setCode WHERE T1.name = 'Angel of Mercy' GROUP BY T3.language
SELECT COUNT(T1.uuid) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'restricted' AND T1.isTextless = 0
SELECT T2.text FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Condemn'
SELECT COUNT(*) FROM cards WHERE uuid IN ( SELECT uuid FROM legalities WHERE status = 'restricted' ) AND isStarter = 1
SELECT legalities.status FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.name = "Cloudchaser Eagle"
SELECT type FROM cards WHERE name = 'Benalish Knight' 
SELECT T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Benalish Knight'
SELECT DISTINCT cards.artist FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Phyrexian' 
SELECT CAST(SUM(CASE WHEN borderColor = 'borderless' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(id) FROM cards
SELECT COUNT(DISTINCT T1.id) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = 'German' AND T1.isReprint = 1
SELECT COUNT(*) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.borderColor = 'borderless' AND T2.language = 'Russian'
SELECT CAST(SUM(CASE WHEN T1.language = 'French' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.isStorySpotlight = 1
SELECT COUNT(id) FROM cards WHERE toughness = '99'
SELECT name FROM cards WHERE artist = 'Aaron Boyd'
SELECT COUNT(id) FROM cards WHERE borderColor = 'black' AND availability = 'mtgo'
SELECT id FROM cards WHERE convertedManaCost = 0
SELECT layout FROM cards WHERE keywords LIKE '%flying%'
SELECT COUNT(id) FROM cards WHERE originalType = 'Summon - Angel' AND subtypes != 'Angel'
SELECT id FROM cards WHERE cardKingdomFoilId IS NOT NULL AND cardKingdomId IS NOT NULL
SELECT id FROM cards WHERE duelDeck = 'a'
SELECT edhrecRank FROM cards WHERE frameVersion = '2015'
SELECT cards.artist FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Chinese Simplified'
SELECT T1.name FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.availability = 'paper' AND T2.language = 'Japanese'
SELECT COUNT(*) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Banned' AND T1.borderColor = 'white'
SELECT T1.uuid, T2.language FROM legalities AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.format = 'legacy'
SELECT T2.text FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Beacon of Immortality'
SELECT COUNT(T1.id), T2.status FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.frameVersion = 'future' AND T2.status = 'legal' 
SELECT T1.name, T1.colors FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.code = 'OGW'
SELECT T1.name, T3.language, T3.translation FROM cards AS T1 LEFT JOIN set_translations AS T3 ON T1.setCode = T3.setCode WHERE T1.setCode = '10E' AND T1.convertedManaCost = 5 AND T3.translation IS NOT NULL
SELECT T1.name, T2.date FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.originalType = 'Creature - Elf'
SELECT T1.colors, T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.id BETWEEN 1 AND 20
SELECT T1.name, T1.colors, T3.language FROM cards AS T1 JOIN foreign_data AS T3 ON T1.uuid = T3.uuid WHERE T1.originalType = 'Artifact' AND T1.colors = 'B'
SELECT T1.name FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'uncommon' ORDER BY T2.date ASC LIMIT 3;
SELECT COUNT(id) FROM cards WHERE artist = 'John Avon' AND cardKingdomId IS NOT NULL AND cardKingdomFoilId IS NULL 
SELECT COUNT(id) FROM cards WHERE borderColor = 'white' AND cardKingdomFoilId = cardKingdomId AND cardKingdomId IS NOT NULL
SELECT COUNT(id) FROM cards WHERE artist LIKE 'UDON' AND availability LIKE 'mtgo' AND hand = '-1'
SELECT COUNT(id) FROM cards WHERE frameVersion = '1993' AND availability = 'paper' AND hasContentWarning = 1
SELECT name, manaCost FROM cards WHERE layout = 'normal' AND frameVersion = '2003' AND borderColor = 'black' AND (availability = 'paper' OR availability = 'mtgo')
SELECT SUM(convertedManaCost) FROM cards WHERE artist = 'Rob Alexander'
SELECT DISTINCT subtypes, supertypes FROM cards WHERE availability = 'arena'
SELECT setCode FROM set_translations WHERE language = 'Spanish' 
SELECT CAST(SUM(case when hand = '+3' then 1 else 0 end) AS REAL) * 100 / ( SELECT COUNT(frameEffects) FROM cards WHERE frameEffects = 'legendary' ) FROM cards WHERE frameEffects = 'legendary'
SELECT CAST(SUM(CASE WHEN isStorySpotlight = 1 AND isTextless = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN isStorySpotlight = 1 THEN 1 ELSE 0 END) AS percentage, id FROM cards GROUP BY id
SELECT CAST(SUM(CASE WHEN language = 'Spanish' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(id) AS "percentage", name FROM foreign_data GROUP BY name ORDER BY percentage DESC
SELECT T2.language FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.baseSetSize = 309
SELECT COUNT(setCode) FROM set_translations WHERE language = 'Portuguese (Brasil)' AND setCode IN ( SELECT code FROM sets WHERE block = 'Commander' )
SELECT T1.id FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'legal' AND T1.types LIKE '%Creature%'
SELECT DISTINCT subtypes, supertypes FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = 'German' AND T1.subtypes IS NOT NULL AND T1.supertypes IS NOT NULL
SELECT COUNT(*) FROM cards WHERE (power IS NULL OR power = '*') AND text LIKE '%triggered ability%'
SELECT COUNT(*) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid INNER JOIN rulings AS T3 ON T1.uuid = T3.uuid WHERE T2.format = 'premodern' AND T3.text = 'This is a triggered mana ability' AND T1.side IS NULL
SELECT id FROM cards WHERE artist = 'Erica Yang' AND availability = 'paper' AND uuid IN ( SELECT uuid FROM legalities WHERE format = 'pauper' )
SELECT artist FROM cards WHERE text = 'Das perfekte Gegenmittel zu einer dichten Formation'
SELECT T1.name FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.language LIKE 'French' AND T2.borderColor LIKE 'black' AND T2.type LIKE 'Creature' AND T2.layout LIKE 'normal' AND T2.artist LIKE 'Matthew D. Wilson'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'rare' AND T2.date = '2009-01-10'
SELECT T1.language FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.baseSetSize = 180 AND T2.block = 'Ravnica'
SELECT CAST(SUM(CASE WHEN C.hasContentWarning = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(C.id) AS LEGAL_COMMANDER_CARDS_WITHOUT_CONTENT_WARNING FROM cards AS C INNER JOIN legalities AS L ON L.uuid = C.uuid WHERE L.format = 'commander' AND L.status = 'legal'
SELECT CAST(SUM(CASE WHEN T1.language = 'French' AND T2.power IS NULL OR T2.power = '*' THEN 1 ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN T2.power IS NULL OR T2.power = '*' THEN 1 ELSE 0 END) FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid
SELECT CAST(SUM(CASE WHEN T2.type = 'expansion' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.language = 'Japanese'
SELECT availability FROM cards WHERE artist = 'Daren Bader'
SELECT COUNT(*) FROM cards WHERE borderColor = 'borderless' AND edhrecRank > 12000
SELECT COUNT(id) FROM cards WHERE isOversized = 1 AND isReprint = 1 AND isPromo = 1 
SELECT name FROM cards WHERE (power IS NULL OR power = '*') AND promoTypes = 'arenaleague' ORDER BY name ASC LIMIT 3
SELECT language FROM foreign_data WHERE multiverseid = 149934
SELECT cardKingdomFoilId, cardKingdomId FROM cards WHERE cardKingdomFoilId IS NOT NULL AND cardKingdomId IS NOT NULL ORDER BY cardKingdomFoilId ASC LIMIT 3
SELECT CAST(SUM(CASE WHEN isTextless = 1 AND layout = 'normal' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(isTextless) FROM cards
SELECT cards.number FROM cards WHERE cards.otherFaceIds IS NULL AND cards.subtypes LIKE '%Angel%' AND cards.subtypes LIKE '%Wizard%'
SELECT name FROM sets WHERE mtgoCode IS NULL OR mtgoCode = '' ORDER BY name ASC LIMIT 3 
SELECT language FROM set_translations WHERE setCode = ( SELECT code FROM sets WHERE mcmName = 'Archenemy' AND code = 'ARC' )
SELECT T1.name, T2.translation FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.id = 5
SELECT T1.language, T2.type FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.id = 206
SELECT T1.id, T1.code FROM sets AS T1 INNER JOIN foreign_data AS T2 ON T1.code = T2.uuid WHERE T2.language = 'Italian' AND T1.block = 'Shadowmoor' ORDER BY T1.code ASC LIMIT 2
SELECT T1.id FROM sets AS T1 INNER JOIN foreign_data AS T2 ON T1.code = T2.uuid WHERE T1.isForeignOnly = 1 AND T1.isFoilOnly = 1 AND T2.language = 'Japanese'
SELECT T1.code FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'Russian' ORDER BY T1.baseSetSize DESC LIMIT 1 
SELECT CAST(COUNT(CASE WHEN T2.language = 'Chinese Simplified' AND T1.isOnlineOnly = 1 THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(T1.isOnlineOnly) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid
SELECT COUNT(DISTINCT T1.setCode) FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.language = 'Japanese' AND (T2.mtgoCode IS NULL OR T2.mtgoCode = '')
SELECT id FROM cards WHERE borderColor = 'black'
SELECT id FROM cards WHERE frameEffects = 'extendedart'
SELECT name FROM cards WHERE borderColor = 'Black' AND isFullArt = 1
SELECT T2.language FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.id = 174
SELECT name FROM sets WHERE code = 'ALL'
SELECT language FROM foreign_data WHERE name = 'A Pedra Fellwar' 
SELECT code FROM sets WHERE releaseDate = '2007-07-13'
SELECT baseSetSize, code FROM sets WHERE block IN ('Masques', 'Mirage')
SELECT setCode FROM sets WHERE type = 'expansion'
SELECT T1.name, T1.type FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.watermark = 'boros'
SELECT T1.language, T1.flavorText, T2.type FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.watermark = 'colorpie'
SELECT CAST(SUM(CASE WHEN cards.convertedManaCost = 10 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(cards.convertedManaCost) FROM cards INNER JOIN sets ON cards.setCode = sets.code WHERE sets.name = 'Abyssal Horror'
SELECT setCode FROM sets WHERE type = 'expansion' AND name LIKE '%Commander%'
SELECT T1.name, T2.type FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.watermark = 'abzan'
SELECT T2.language, T1.type FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.watermark = 'azorius'
SELECT COUNT(id) FROM cards WHERE artist = 'Aaron Miller' AND cardKingdomFoilId = cardKingdomId AND cardKingdomId IS NOT NULL
SELECT COUNT(*) FROM cards WHERE availability LIKE '%paper%' AND hand LIKE '+%'
SELECT name FROM cards WHERE isTextless = 0
SELECT convertedManaCost FROM cards WHERE name = 'Ancestor`s Chosen'
SELECT COUNT(*) FROM cards WHERE borderColor = 'white' AND (power = '*' OR power IS NULL)
SELECT name FROM cards WHERE isPromo = 1 AND side IS NOT NULL
SELECT subtypes, supertypes FROM cards WHERE name = 'Molimo, Maro-Sorcerer' 
SELECT purchaseUrls FROM cards WHERE promoTypes = 'bundle'
SELECT COUNT(DISTINCT artist) FROM cards WHERE borderColor = 'black' AND availability LIKE '%arena,mtgo%'
SELECT name FROM cards WHERE name IN ('Serra Angel', 'Shrine Keeper') ORDER BY convertedManaCost DESC LIMIT 1
SELECT artist FROM cards WHERE flavorName = 'Battra, Dark Destroyer'
SELECT name FROM cards WHERE frameVersion = '2003' ORDER BY convertedManaCost DESC LIMIT 3
SELECT T3.translation FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid INNER JOIN set_translations AS T3 ON T1.setCode = T3.setCode WHERE T2.language = 'Italian' AND T1.name = 'Ancestor''s Chosen'
SELECT COUNT(T3.translation) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code INNER JOIN set_translations AS T3 ON T2.code = T3.setCode WHERE T1.name = 'Angel of Mercy'
SELECT T1.name FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code INNER JOIN set_translations AS T3 ON T2.code = T3.setCode WHERE T3.translation = 'Hauptset Zehnte Edition'
SELECT CASE WHEN EXISTS ( SELECT 1 FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Ancestor''s Chosen' AND T2.language = 'Korean') THEN 'Yes' ELSE 'No' END AS 'Exists'
SELECT COUNT(DISTINCT T3.id) FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code INNER JOIN cards AS T3 ON T2.code = T3.setCode WHERE T1.translation = 'Hauptset Zehnte Edition' AND T3.artist = 'Adam Rex'
SELECT baseSetSize FROM sets WHERE code = ( SELECT setCode FROM set_translations WHERE translation = 'Hauptset Zehnte Edition' )
SELECT translation FROM set_translations WHERE setCode = ( SELECT code FROM sets WHERE name = 'Eighth Edition' ) AND language = 'Simplified Chinese'
SELECT T2.mtgoCode FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.name = 'Angel of Mercy' AND T2.mtgoCode IS NOT NULL 
SELECT T2.releaseDate FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.name = 'Ancestor''s Chosen'
SELECT T1.type FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.translation = 'Hauptset Zehnte Edition'
SELECT COUNT(DISTINCT T1.id) FROM sets AS T1 LEFT JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.block = 'Ice Age' AND T2.language = 'Italian'
SELECT T2.isForeignOnly FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.name = 'Adarkar Valkyrie'
SELECT COUNT(DISTINCT T1.code) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'Italian' AND T2.translation IS NOT NULL AND T1.baseSetSize < 10
SELECT COUNT(id) FROM cards WHERE borderColor = 'black' AND setCode = ( SELECT code FROM sets WHERE name = 'Coldsnap' )
SELECT name FROM cards WHERE setCode = ( SELECT code FROM sets WHERE name = 'Coldsnap' ) ORDER BY convertedManaCost DESC
SELECT T1.artist FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Coldsnap' AND T1.artist IN ('Jeremy Jarvis', 'Aaron Miller','Chippy')
SELECT T1.name FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Coldsnap' AND T1.number = '4'
SELECT COUNT(*) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Coldsnap' AND T1.convertedManaCost > 5 AND (T1.power = '*' OR T1.power IS NULL)
SELECT T1.flavorText FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.language = 'Italian' AND T2.name = 'Ancestor''s Chosen'
SELECT T2.language FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Ancestor''s Chosen' AND T2.flavorText IS NOT NULL
SELECT T2.type FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = 'German' AND T1.name = 'Ancestor''s Chosen'
SELECT T1.text FROM rulings AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid INNER JOIN cards AS T3 ON T2.uuid = T3.uuid INNER JOIN sets AS T4 ON T3.setCode = T4.code WHERE T4.name = 'Coldsnap' AND T2.language = 'Italian'
SELECT T2.name FROM foreign_data AS T2 INNER JOIN cards AS T1 ON T2.uuid = T1.uuid INNER JOIN sets AS T3 ON T1.setCode = T3.code WHERE T3.name = 'Coldsnap' AND T2.language = 'Italian' ORDER BY T1.convertedManaCost DESC
SELECT T1.date FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Reminisce'
SELECT CAST(SUM(CASE WHEN T1.convertedManaCost = 7 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.convertedManaCost) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Coldsnap'
SELECT CAST(SUM(CASE WHEN T1.cardKingdomFoilId = T1.cardKingdomId AND T1.cardKingdomId IS NOT NULL THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Coldsnap'
SELECT code FROM sets WHERE releaseDate = '2017-07-14'
SELECT keyruneCode FROM sets WHERE code = 'PKHC'
SELECT mcmId FROM sets WHERE code = 'SS2'
SELECT mcmName FROM sets WHERE releaseDate = '2017-06-09'
SELECT type FROM sets WHERE name LIKE '%From the Vault: Lore%'
SELECT parentCode FROM sets WHERE name = 'Commander 2014 Oversized'
SELECT T1.text, T2.hasContentWarning FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.artist = 'Jim Pavelec'
SELECT T2.releaseDate FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.name = 'Evacuation'
SELECT T1.baseSetSize FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.translation = 'Rinascita di Alara'
SELECT T1.type FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.translation = 'Huiti��me ��dition'
SELECT T2.translation FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.setCode = T2.setCode INNER JOIN foreign_data AS T3 ON T1.uuid = T3.uuid WHERE T2.language = 'French' AND T3.name = 'Tendo Ice Bridge'
SELECT COUNT(T2.translation) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = 'Salvat 2011' AND T2.translation IS NOT NULL
SELECT T3.translation FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code INNER JOIN set_translations AS T3 ON T2.code = T3.setCode WHERE T1.name = 'Fellwar Stone' AND T3.language = 'Japanese'
SELECT T1.name FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Journey into Nyx Hero''s Path' ORDER BY T1.convertedManaCost DESC LIMIT 1;
SELECT T1.releaseDate FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.translation = 'Ola de fr��o'
SELECT T2.type FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.name = 'Samite Pilgrim'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'World Championship Decks 2004' AND T1.convertedManaCost = 3
SELECT T2.translation FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = 'Mirrodin' AND T2.language = 'Chinese Simplified'
SELECT CAST(SUM(CASE WHEN T2.isNonFoilOnly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.language = 'Japanese'
SELECT CAST(SUM(CASE WHEN T1.isOnlineOnly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.language) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'Portuguese (Brazil)'
SELECT availability FROM cards WHERE artist = 'Aleksi Briclot' AND isTextless = 1 
SELECT id FROM sets ORDER BY baseSetSize DESC LIMIT 1 
SELECT artist FROM cards WHERE side IS NULL ORDER BY convertedManaCost DESC LIMIT 1 
SELECT frameEffects FROM cards WHERE cardKingdomFoilId IS NOT NULL AND cardKingdomId IS NOT NULL GROUP BY frameEffects ORDER BY COUNT(*) DESC LIMIT 1 
SELECT COUNT(id) FROM cards WHERE power IS NULL OR power = '*' AND hasFoil = 0 AND duelDeck = 'a'
SELECT id FROM sets WHERE type = 'Commander' ORDER BY totalSetSize DESC LIMIT 1
SELECT T1.name, T1.convertedManaCost FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = 'duel' ORDER BY T1.convertedManaCost DESC LIMIT 10 
SELECT cards.originalReleaseDate, legalities.format FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.rarity = 'mythic' AND legalities.status = 'legal' ORDER BY cards.originalReleaseDate LIMIT 1
SELECT COUNT(DISTINCT t1.id) FROM cards AS t1 INNER JOIN foreign_data AS t2 ON t1.uuid = t2.uuid WHERE t1.artist = 'Volkan Baga' AND t2.language = 'French'
SELECT COUNT(DISTINCT T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'rare' AND T1.types = 'Enchantment' AND T1.name = 'Abundance' AND T2.status = 'Legal'
SELECT T1.format, T2.name FROM Legalities AS T1 INNER JOIN Cards as T2 ON T1.uuid = T2.uuid WHERE T1.status = 'banned' GROUP BY T1.format ORDER BY COUNT(*) DESC LIMIT 1; 
SELECT T2.language FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = 'Battlebond'
SELECT card1.artist, legalities.format FROM cards AS card1 INNER JOIN legalities ON card1.uuid = legalities.uuid GROUP BY card1.artist HAVING COUNT(card1.artist) = (SELECT COUNT(card2.artist) FROM cards AS card2 GROUP BY card2.artist ORDER BY COUNT(card2.artist) LIMIT 1)
SELECT L.status FROM cards AS C INNER JOIN legalities AS L ON C.uuid = L.uuid WHERE C.frameVersion = '1997' AND C.artist = 'D. Alexander Gregory' AND C.hasContentWarning = 1 AND L.format = 'legacy'
SELECT T1.name, T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.edhrecRank = 1 AND T2.status = 'banned'
SELECT AVG(setCounts.setsPerYear) AS averageAnnualSets, language_with_max_count.language AS mostCommonLanguage FROM (SELECT strftime('%Y', releaseDate) AS year, COUNT(id) AS setsPerYear FROM sets WHERE releaseDate BETWEEN '2012-01-01' AND '2015-12-31' GROUP BY year) AS setCounts, (SELECT language, MAX(languageCount) AS maxCount FROM (SELECT language, COUNT(id) AS languageCount FROM foreign_data GROUP BY language)) AS language_with_max_count
SELECT DISTINCT artist FROM cards WHERE borderColor = 'black' AND availability = 'arena'
SELECT uuid FROM legalities WHERE format = 'oldschool' AND (status = 'banned' OR status = 'restricted')
SELECT COUNT(id) FROM cards WHERE artist = 'Matthew D. Wilson' AND availability = 'paper'
SELECT T2.text FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = 'Kev Walker' ORDER BY T2.date DESC
SELECT T1.name, T3.format FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code INNER JOIN legalities AS T3 ON T1.uuid = T3.uuid WHERE T3.status = 'legal' AND T2.name = 'Hour of Devastation'
SELECT sets.name FROM sets WHERE sets.code IN (SELECT set_translations.setCode FROM set_translations WHERE set_translations.language = 'Korean') AND sets.code NOT IN (SELECT set_translations.setCode FROM set_translations WHERE set_translations.language = 'Japanese')
SELECT C1.frameVersion, C1.name, L1.status FROM cards AS C1 LEFT JOIN legalities AS L1 ON C1.uuid = L1.uuid WHERE C1.artist = 'Allen Williams' AND L1.status = 'banned'
SELECT DisplayName FROM users WHERE DisplayName IN ('Harlan', 'Jarrod Dixon') ORDER BY Reputation DESC LIMIT 1 
SELECT DisplayName FROM users WHERE STRFTIME('%Y', CreationDate) = '2014'
SELECT COUNT(Id) FROM users WHERE LastAccessDate > '2014-09-01 00:00:00'
SELECT DisplayName FROM users ORDER BY Views DESC LIMIT 1
SELECT COUNT(Id) FROM users WHERE UpVotes > 100 AND DownVotes > 1
SELECT COUNT(*) FROM users WHERE Views > 10 AND strftime('%Y', CreationDate) > '2013'
SELECT COUNT(Id) FROM posts WHERE OwnerUserId = ( SELECT Id FROM users WHERE DisplayName = 'csgillespie' )
SELECT Title FROM posts WHERE OwnerUserId = ( SELECT Id FROM users WHERE DisplayName = 'csgillespie' )
SELECT T2.DisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = 'Eliciting priors from experts'
SELECT posts.Title FROM posts INNER JOIN users ON posts.OwnerUserId = users.Id WHERE users.DisplayName = 'csgillespie' ORDER BY posts.ViewCount DESC LIMIT 1
SELECT T2.DisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id ORDER BY T1.FavoriteCount DESC LIMIT 1
SELECT SUM(posts.CommentCount) FROM posts INNER JOIN users ON posts.OwnerUserId = users.Id WHERE users.DisplayName = 'csgillespie'
SELECT MAX(p.AnswerCount) FROM posts AS p INNER JOIN users AS u ON p.OwnerUserId = u.Id WHERE u.DisplayName = 'csgillespie' ORDER BY p.AnswerCount DESC LIMIT 1
SELECT T2.DisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.LastEditorUserId = T2.Id WHERE T1.Title = 'Examples for teaching: Correlation does not mean causation'
SELECT COUNT(*) FROM posts WHERE OwnerUserId = (SELECT Id FROM users WHERE DisplayName = 'csgillespie') AND ParentId IS NULL
SELECT T1.DisplayName FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.ClosedDate IS NOT NULL
SELECT COUNT(*) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Age > 65 AND T1.Score >= 20
SELECT T2.Location FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = 'Eliciting priors from experts'
SELECT T2.Body FROM tags AS T1 INNER JOIN posts AS T2 ON T1.ExcerptPostId = T2.Id WHERE T1.TagName = 'bayesian'
SELECT T2.Body FROM tags AS T1 INNER JOIN posts AS T2 ON T1.ExcerptPostId = T2.Id ORDER BY T1.Count DESC LIMIT 1
SELECT COUNT(ID) FROM badges WHERE UserId = ( SELECT Id FROM users WHERE DisplayName = 'csgillespie' )
SELECT T2.Name FROM Users AS T1 INNER JOIN Badges AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'csgillespie'
SELECT COUNT(*) FROM badges WHERE UserId = (SELECT Id FROM users WHERE DisplayName = 'csgillespie') AND STRFTIME('%Y', Date) = '2011'
SELECT T1.DisplayName FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId GROUP BY T1.DisplayName ORDER BY COUNT(T2.Id) DESC LIMIT 1 
SELECT AVG(T1.Score) from posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'csgillespie'
SELECT CAST(COUNT(T1.Id) AS REAL)/ COUNT(T2.DisplayName) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Views > 200; 
SELECT CAST(SUM(CASE WHEN T2.Age > 65 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Id) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Score > 20 
SELECT COUNT(votes.Id) FROM votes WHERE UserId = 58 AND DATE(CreationDate) = '2010-07-19'
SELECT CreationDate FROM votes GROUP BY CreationDate ORDER BY COUNT(Id) DESC LIMIT 1 
SELECT COUNT(Id) FROM badges WHERE Name = 'Revival'
SELECT T1.Title FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId ORDER BY T2.Score DESC LIMIT 1;
SELECT COUNT(T2.Id) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.ViewCount = 1910 
SELECT T2.FavoriteCount FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.UserId = 3025 AND T1.CreationDate = '2014-04-23 20:29:39'
SELECT T1.Text FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.ParentId = 107829 AND T2.CommentCount = 1 
SELECT CASE WHEN T2.ClosedDate IS NULL THEN 'No' ELSE 'Yes' END AS WellFinished FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.UserId = 23853 AND T1.CreationDate = '2013-07-12 09:08:18.0'
SELECT T1.Reputation FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Id = 65041
SELECT COUNT(T1.Id) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'Tiago Pasqualini'
SELECT T1.DisplayName FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.Id = 6347
SELECT COUNT(V.PostId) FROM posts AS P INNER JOIN votes AS V ON P.Id = V.PostId WHERE P.Title LIKE '%data visualization%'
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'DatEpicCoderGuyWhoPrograms' 
SELECT CAST(COUNT(T1.Id) AS REAL) / COUNT(T2.Id) FROM posts AS T1 INNER JOIN votes AS T2 ON T1.OwnerUserId = T2.UserId WHERE T1.OwnerUserId = '24' AND T2.UserId = '24'
SELECT ViewCount FROM posts WHERE Title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
SELECT Text FROM comments WHERE Score = 17;
SELECT DisplayName FROM users WHERE WebsiteUrl = 'http://stackoverflow.com'
SELECT DISTINCT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'SilentGhost'
SELECT T2.DisplayName FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Text = 'thank you user93!'
SELECT T2.Text FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'A Lion'
SELECT T1.DisplayName, T1.Reputation FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = 'Understanding what Dassault iSight is doing?'
SELECT T2.Text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'How does gentle boosting differ from AdaBoost?'
SELECT U.DisplayName FROM users AS U INNER JOIN badges AS B ON U.Id = B.UserId WHERE B.Name = 'Necromancer' LIMIT 10
SELECT T2.DisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.LastEditorUserId = T2.Id WHERE T1.Title = 'Open source tools for visualizing multi-dimensional data'
SELECT T1.Title FROM posts AS T1 INNER JOIN users AS T2 ON T1.LastEditorUserId = T2.Id WHERE T2.DisplayName = 'Vebjorn Ljosa'
SELECT SUM(T1.Score), T2.WebsiteUrl FROM posts AS T1 INNER JOIN users AS T2 ON T1.LastEditorUserId = T2.Id WHERE T2.DisplayName = 'Yevgeny'
SELECT T2.Text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId INNER JOIN postHistory AS T3 ON T1.Id = T3.PostId WHERE T1.Title = 'Why square the difference instead of taking the absolute value in standard deviation?'
SELECT SUM(T2.BountyAmount) FROM posts AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.PostId WHERE T1.Title LIKE '%data%'
SELECT T2.DisplayName FROM votes AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id INNER JOIN posts AS T3 ON T1.PostId = T3.Id WHERE T1.BountyAmount = 50 AND T3.Title LIKE '%variance%'
SELECT AVG(T1.ViewCount), T1.Title, T2.Text, T1.Score FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Tags LIKE '%humor%'
SELECT COUNT(ID) AS TotalComments FROM comments WHERE UserId = 13 
SELECT Id FROM users ORDER BY Reputation DESC LIMIT 1
SELECT UserId FROM users ORDER BY Views ASC LIMIT 1
SELECT COUNT(UserId) FROM badges WHERE STRFTIME('%Y', `Date`) = '2011' AND Name = 'Supporter'
SELECT UserId FROM badges GROUP BY UserId HAVING COUNT(Name) > 5 
SELECT COUNT(DISTINCT UserId) FROM badges b INNER JOIN users u ON b.UserId = u.Id WHERE (b.Name = 'Supporter' OR b.Name = 'Teacher') AND u.Location LIKE '%New York%'
SELECT T1.DisplayName, T1.Reputation FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Id = 1 
SELECT UserId FROM ( SELECT UserId, PostId FROM postHistory GROUP BY UserId, PostId HAVING COUNT(Id) = 1 ) AS OnePostHistoryUsers JOIN users ON users.Id = OnePostHistoryUsers.UserId WHERE Views >= 1000
SELECT T1.UserId, T2.Name FROM comments AS T1 LEFT JOIN badges AS T2 ON T1.UserId = T2.UserId GROUP BY T1.UserId ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT badges.UserId) FROM badges INNER JOIN users ON badges.UserId = users.Id WHERE users.Location LIKE '%India%' AND badges.Name = 'Teacher'
SELECT (COUNT(CASE WHEN strftime('%Y', Date) = '2010' AND Name = 'Student' THEN 1 ELSE 0 END) * 100.0 / COUNT(Id)) - (COUNT(CASE WHEN strftime('%Y', Date) = '2011' AND Name = 'Student' THEN 1 ELSE 0 END) * 100.0 / COUNT(Id)) AS percentage_difference FROM badges
SELECT T1.PostHistoryTypeId, COUNT(DISTINCT T2.UserId) FROM postHistory AS T1 LEFT JOIN comments AS T2 ON T1.PostId = T2.PostId WHERE T1.PostId = 3720 
SELECT T1.*, T2.ViewCount AS popularity FROM postLinks AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.RelatedPostId = 61217
SELECT T1.Score, T2.LinkTypeId FROM posts AS T1 INNER JOIN postLinks AS T2 ON T1.Id = T2.PostId WHERE T1.Id = 395
SELECT Id as PostId, OwnerUserId FROM posts WHERE Score > 60
SELECT SUM(FavoriteCount) FROM posts WHERE OwnerUserId = 686 AND YEAR(CreationDate) = 2011
SELECT AVG(T1.UpVotes), AVG(T1.Age) FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId GROUP BY T1.Id HAVING COUNT(T2.Id) > 10 
SELECT COUNT(UserId) FROM badges WHERE Name = 'Announcer'
SELECT Name FROM badges WHERE Date = '2010-07-19 19:39:08'
SELECT COUNT(*) FROM comments WHERE Score > 60; 
SELECT Text FROM comments WHERE CreationDate = '2010-07-19 19:25:47.0'
SELECT COUNT(Id) FROM posts WHERE Score = 10
SELECT Name FROM badges WHERE UserId IN ( SELECT Id FROM users WHERE Reputation = ( SELECT MAX(Reputation) FROM users ) )
SELECT T2.Reputation FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Date = '2010-07-19 19:39:08.0' 
SELECT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Pierre'
SELECT T2.Date FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Location = 'Rochester, NY'
SELECT CAST(COUNT(DISTINCT CASE WHEN Name = 'Teacher' THEN UserId END) AS REAL) * 100 / COUNT(DISTINCT UserId) FROM badges 
SELECT CAST(SUM(CASE WHEN T2.Age BETWEEN 13 AND 18 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.UserId) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Organizer'
SELECT T2.Score FROM comments AS T2 INNER JOIN posts AS T1 ON T2.PostId = T1.Id WHERE T1.CreaionDate = '2010-07-19 19:19:56.0'
SELECT T1.Text FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.CreaionDate = '2010-07-19 19:37:33.0'
SELECT T2.Age FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = 'Vienna, Austria'
SELECT COUNT(DISTINCT T1.UserId) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Supporter' AND T2.Age BETWEEN 19 AND 65
SELECT SUM(T1.Views) FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Date = '2010-07-19 19:39:08.0' 
SELECT Name FROM badges WHERE UserId = ( SELECT Id FROM users ORDER BY Reputation ASC LIMIT 1 )
SELECT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Sharpie'
SELECT COUNT(T1.UserId) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Supporter' AND T2.Age > 65 
SELECT DisplayName FROM users WHERE Id = 30 
SELECT COUNT(*) FROM users WHERE Location LIKE '%New York%'
SELECT COUNT(Id) FROM votes WHERE STRFTIME('%Y', CreationDate) = '2010'
SELECT COUNT(Id) FROM users WHERE Age BETWEEN 19 AND 65
SELECT DisplayName FROM users ORDER BY Views DESC LIMIT 1 
SELECT CAST(COUNT(CASE WHEN STRFTIME('%Y', CreationDate) = '2010' THEN 1 ELSE NULL END) AS REAL) / COUNT(CASE WHEN STRFTIME('%Y', CreationDate) = '2011' THEN 1 ELSE NULL END) AS vote_ratio FROM votes
SELECT DISTINCT T2.TagName FROM posts AS T1 INNER JOIN tags AS T2 ON T1.ID = T2.ExcerptPostId INNER JOIN users AS T3 ON T1.OwnerUserId = T3.ID WHERE T3.DisplayName = 'John Stauffer'
SELECT COUNT(Id) FROM posts WHERE OwnerUserId = ( SELECT Id FROM users WHERE DisplayName = 'Daniel Vassallo' )
SELECT COUNT(votes.Id) FROM votes INNER JOIN users ON votes.UserId = users.Id WHERE users.DisplayName = 'Harlan' 
SELECT T1.Id FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'slashnick' ORDER BY T1.AnswerCount DESC LIMIT 1 
SELECT users.DisplayName, SUM(posts.ViewCount) AS TotalViews FROM users INNER JOIN posts ON users.Id = posts.OwnerUserId WHERE users.DisplayName IN ('Harvey Motulsky', 'Noah Snyder') GROUP BY users.DisplayName ORDER BY TotalViews DESC LIMIT 1;
SELECT COUNT(posts.Id) FROM posts INNER JOIN users ON posts.OwnerUserId = users.Id INNER JOIN votes ON posts.Id = votes.PostId WHERE users.DisplayName = 'Matt Parker' GROUP BY votes.PostId HAVING COUNT(votes.PostId) > 4
SELECT COUNT(*) FROM comments AS C INNER JOIN posts AS P ON C.PostId = P.Id INNER JOIN users AS U ON P.OwnerUserId = U.Id WHERE C.Score < 60 AND U.DisplayName = 'Neil McGuigan'
SELECT DISTINCT T3.TagName FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId INNER JOIN tags AS T3 ON T2.Id = T3.ExcerptPostId WHERE T1.DisplayName = 'Mark Meckes' AND T2.CommentCount = 0
SELECT DISTINCT U.DisplayName FROM users U INNER JOIN badges B ON U.Id = B.UserId WHERE B.Name = 'Organizer'
SELECT CAST(SUM(CASE WHEN T.Tags LIKE '%<r>%' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) as percentage FROM (SELECT * FROM posts P JOIN users U ON P.OwnerUserId = U.Id WHERE U.DisplayName = 'Community') AS T
SELECT (SELECT SUM(ViewCount) FROM posts INNER JOIN users ON posts.OwnerUserId = users.Id WHERE users.DisplayName = 'Mornington') - (SELECT SUM(ViewCount) FROM posts INNER JOIN users ON posts.OwnerUserId = users.Id WHERE users.DisplayName = 'Amos') AS Difference
SELECT COUNT(DISTINCT UserId) AS NumberOfUsers FROM badges WHERE Name = 'Commentator' AND strftime('%Y', Date) = '2014';
SELECT COUNT(Id) FROM posts WHERE CreaionDate BETWEEN '2010-07-21 00:00:00' AND '2010-07-21 23:59:59'
SELECT DisplayName, Age FROM users WHERE Views = ( SELECT MAX(Views) FROM users )
SELECT LastEditDate, LastEditorUserId FROM posts WHERE Title = 'Detecting a given face in a database of facial images' 
SELECT COUNT(Id) FROM comments WHERE UserId = 13 AND Score < 60 
SELECT T1.Title, T2.UserDisplayName FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T2.Score > 60 
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE STRFTIME('%Y', T2.Date) = '2011' AND T1.Location = 'North Pole'
SELECT T2.DisplayName, T2.WebsiteUrl FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.FavoriteCount > 150
SELECT COUNT(T1.PostId), MAX(T1.CreationDate) FROM postHistory AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'What is the best introductory Bayesian statistics textbook?'
SELECT T1.LastAccessDate, T1.Location FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = 'Outliers'
SELECT T1.Title FROM posts AS T1 INNER JOIN postLinks AS T2 ON T1.Id = T2.RelatedPostId WHERE T2.PostId = ( SELECT Id FROM posts WHERE Title = 'How to tell if something happened in a data set which monitors a value over time' )
SELECT T1.Id AS PostId, T2.Name AS BadgeName FROM posts AS T1 INNER JOIN badges AS T2 ON T1.OwnerUserId = T2.UserId WHERE T1.OwnerDisplayName = 'Samuel' AND YEAR(T1.CreationDate) = 2013 AND YEAR(T2.Date) = 2013
SELECT T2.DisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id ORDER BY T1.ViewCount DESC LIMIT 1 
SELECT T2.DisplayName, T2.Location FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Id IN (SELECT ExcerptPostId FROM tags WHERE TagName = 'hypothesis-testing')
SELECT T2.Title, T1.LinkTypeId FROM postLinks AS T1 INNER JOIN posts AS T2 ON T1.RelatedPostId = T2.Id WHERE T1.PostId = ( SELECT Id FROM posts WHERE Title = 'What are principal component scores?' ) 
SELECT T2.DisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Score = ( SELECT MAX(Score) FROM posts WHERE ParentId IS NOT NULL ) AND T1.ParentId IS NOT NULL LIMIT 1
SELECT T1.DisplayName, T1.WebsiteUrl FROM users AS T1 INNER JOIN votes AS T2 ON T1.id = T2.UserId WHERE T2.VoteTypeId = 8 ORDER BY T2.BountyAmount DESC LIMIT 1;
SELECT Title FROM posts ORDER BY ViewCount DESC LIMIT 5 
SELECT COUNT(Id) FROM tags WHERE Count BETWEEN 5000 AND 7000
SELECT OwnerUserId FROM posts WHERE FavoriteCount = ( SELECT MAX(FavoriteCount) FROM posts ) 
SELECT Age FROM users ORDER BY Reputation DESC LIMIT 1 
SELECT COUNT(*) FROM posts AS P JOIN votes AS V ON P.Id = V.PostId WHERE V.BountyAmount = 50 AND STRFTIME('%Y', P.CreaionDate) = '2011'
SELECT Id FROM users ORDER BY Age DESC LIMIT 1
SELECT T1.Score FROM posts AS T1 INNER JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId WHERE T2.Count = ( SELECT MAX(Count) FROM tags ) LIMIT 1 
SELECT CAST(COUNT(T1.Id) AS REAL) / 12 FROM postLinks AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE strftime('%Y', T1.CreationDate) = '2010' AND T2.AnswerCount <= 2
SELECT T1.PostId FROM votes AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.UserId = 1465 ORDER BY T2.FavoriteCount DESC LIMIT 1
SELECT T2.Title FROM postLinks AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id ORDER BY T1.CreationDate ASC LIMIT 1 
SELECT T2.DisplayName FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id GROUP BY T1.UserId ORDER BY COUNT(T1.Name) DESC LIMIT 1 
SELECT MIN(T1.CreationDate) FROM votes AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'chl'
SELECT MIN(posts.CreaionDate) AS FirstPostDate FROM users JOIN posts ON users.Id = posts.OwnerUserId ORDER BY users.Age DESC LIMIT 1 
SELECT T2.DisplayName FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Autobiographer' ORDER BY T1.Date ASC LIMIT 1
SELECT COUNT(DISTINCT U.Id) FROM users U JOIN posts P ON U.Id = P.OwnerUserId WHERE U.Location LIKE '%United Kingdom%' GROUP BY U.Id HAVING SUM(P.FavoriteCount) >= 4
SELECT AVG(T1.PostId) FROM votes AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Age = ( SELECT MAX(Age) FROM users )
SELECT DisplayName FROM users ORDER BY Reputation DESC LIMIT 1
SELECT COUNT(Id) FROM users WHERE Reputation > 2000 AND Views > 1000;
SELECT DisplayName FROM users WHERE Age BETWEEN 19 AND 65
SELECT COUNT(*) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'Jay Stevens' AND YEAR(T1.CreationDate) = 2010
SELECT T1.Id, T1.Title FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'Harvey Motulsky' ORDER BY T1.ViewCount DESC LIMIT 1
SELECT T1.Id, T1.Title FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id ORDER BY T1.Score DESC LIMIT 1
SELECT AVG(Score) FROM posts WHERE OwnerUserId = ( SELECT Id FROM users WHERE DisplayName = 'Stephen Turner' )
SELECT T2.DisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE STRFTIME('%Y', T1.CreaionDate) = '2011' AND T1.ViewCount > 20000 
SELECT posts.Id, users.DisplayName FROM posts INNER JOIN users ON posts.OwnerUserId = users.Id WHERE STRFTIME('%Y', posts.CreaionDate) = '2010' ORDER BY posts.FavoriteCount DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.Reputation > 1000 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Id) AS percentage FROM posts AS T2 INNER JOIN users AS T1 ON T2.OwnerUserId = T1.Id WHERE strftime('%Y', T2.CreaionDate) = '2011'
SELECT CAST(COUNT(CASE WHEN Age BETWEEN 13 AND 19 THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(Id) FROM users
SELECT T1.ViewCount, T2.DisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.LastEditorUserId = T2.Id WHERE T1.Title = 'Computer Game Datasets' 
SELECT COUNT(*) FROM posts WHERE ViewCount > ( SELECT AVG(ViewCount) FROM posts )
SELECT COUNT(Id) FROM comments WHERE PostId = ( SELECT Id FROM posts ORDER BY Score DESC LIMIT 1 )
SELECT COUNT(*) FROM posts WHERE ViewCount > 35000 AND CommentCount = 0 
SELECT T2.DisplayName, T2.Location FROM posts AS T1 INNER JOIN users AS T2 ON T1.LastEditorUserId = T2.Id WHERE T1.Id = 183 ORDER BY T1.LastEditDate DESC LIMIT 1
SELECT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Emmett' ORDER BY T1.Date DESC LIMIT 1
SELECT COUNT(Id) FROM users WHERE Age BETWEEN 19 AND 65 AND UpVotes > 5000; 
SELECT strftime('%J', T2.Date) - strftime('%J', T1.CreationDate) AS days FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'Zolomon' 
SELECT (SELECT COUNT(*) FROM posts WHERE OwnerUserId = (SELECT Id FROM users ORDER BY CreationDate DESC LIMIT 1)) AS NumberOfPosts, (SELECT COUNT(*) FROM comments WHERE UserId = (SELECT Id FROM users ORDER BY CreationDate DESC LIMIT 1)) AS NumberOfComments
SELECT T1.Text, T2.DisplayName FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id INNER JOIN posts AS T3 ON T1.PostId = T3.Id WHERE T3.Title = 'Analysing wind data with R' ORDER BY T1.CreationDate DESC LIMIT 1
SELECT COUNT(DISTINCT UserId) FROM badges WHERE Name = 'Citizen Patrol'
SELECT COUNT(T1.Id) FROM posts AS T1 INNER JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId WHERE T2.TagName = 'careers'
SELECT Reputation, Views FROM users WHERE DisplayName = 'Jarrod Dixon'
SELECT (SELECT COUNT(*) FROM comments as C INNER JOIN posts as P on P.Id = C.PostId WHERE P.Title = 'Clustering 1D data') as Comments, (SELECT COUNT(*) FROM posts as A WHERE A.ParentId IN (SELECT Id FROM posts WHERE Title = 'Clustering 1D data') AND A.PostTypeId = 2) as Answers
SELECT CreationDate FROM users WHERE DisplayName = 'IrishStat'
SELECT COUNT(Id) FROM votes WHERE BountyAmount >= 30
SELECT CAST(SUM(CASE WHEN P.Score >= 50 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(P.Id) FROM posts P INNER JOIN ( SELECT U.Id FROM users U ORDER BY U.Reputation DESC LIMIT 1 ) AS MaxRepUser ON MaxRepUser.Id = P.OwnerUserId 
SELECT COUNT(ID) FROM posts WHERE Score < 20;
SELECT COUNT(Id) FROM tags WHERE Id < 15 AND Count <= 20 
SELECT ExcerptPostId, WikiPostId FROM tags WHERE TagName = 'sample'
SELECT T2.Reputation, T2.UpVotes FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Text = 'fine, you win :)'
SELECT T2.Text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'How can I adapt ANOVA for binary data?' 
SELECT c.Text FROM comments AS c INNER JOIN posts AS p ON c.PostId = p.Id WHERE p.ViewCount BETWEEN 100 AND 150 ORDER BY c.Score DESC LIMIT 1
SELECT T1.CreationDate, T1.Age FROM users AS T1 INNER JOIN comments AS T2 ON T2.UserId = T1.Id WHERE T2.Text LIKE '%http://%'
SELECT COUNT(DISTINCT T2.PostId) FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.Score = 0 AND T2.ViewCount < 5
SELECT COUNT(*) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.CommentCount = 1 AND T2.Score = 0
SELECT COUNT(DISTINCT T1.UserId) FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Score = 0 AND T2.Age = 40
SELECT T2.PostId, T2.Text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'Group differences on a five point Likert item'
SELECT T2.UpVotes FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Text = 'R is also lazy evaluated.'
SELECT T1.Text FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Harvey Motulsky'
SELECT T2.DisplayName FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DownVotes = 0 AND T1.Score BETWEEN 1 AND 5;
SELECT CAST(SUM(CASE WHEN T2.UpVotes = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.Id) FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Score BETWEEN 5 AND 10
SELECT T3.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T1.superhero_name = '3-D Man'
SELECT COUNT(DISTINCT T1.id) FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Super Strength'
SELECT COUNT(DISTINCT T1.id) FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Super Strength' AND T1.height_cm > 200
SELECT T1.full_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id GROUP BY T1.full_name HAVING COUNT(T2.power_id) > 15
SELECT COUNT(DISTINCT superhero.id) FROM superhero JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Blue' 
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T1.superhero_name = 'Apocalypse' 
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id INNER JOIN hero_power AS T3 ON T1.id = T3.hero_id INNER JOIN superpower AS T4 ON T3.power_id = T4.id WHERE T2.colour = 'Blue' AND T4.power_name = 'Agility'
SELECT superhero.superhero_name FROM superhero INNER JOIN colour AS eye_colour ON superhero.eye_colour_id = eye_colour.id INNER JOIN colour AS hair_colour ON superhero.hair_colour_id = hair_colour.id WHERE eye_colour.colour = 'Blue' AND hair_colour.colour = 'Blond' 
SELECT COUNT(*) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics' ORDER BY T1.height_cm DESC LIMIT 1 
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name = 'Sauron'
SELECT COUNT(T1.superhero_name) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id INNER JOIN publisher AS T3 ON T1.publisher_id = T3.id WHERE T2.colour = 'Blue' AND T3.publisher_name = 'Marvel Comics'
SELECT AVG(superhero.height_cm) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'Marvel Comics'
SELECT CAST(SUM(CASE WHEN T4.power_name = 'Super Strength' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id INNER JOIN hero_power AS T3 ON T1.id = T3.hero_id INNER JOIN superpower AS T4 ON T3.power_id = T4.id WHERE T2.publisher_name = 'Marvel Comics'
SELECT COUNT(*) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'DC Comics'
SELECT publisher_name FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Speed' ORDER BY hero_attribute.attribute_value ASC LIMIT 1
SELECT COUNT(*) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id INNER JOIN publisher AS T3 ON T1.publisher_id = T3.id WHERE T2.colour = 'Gold' AND T3.publisher_name = 'Marvel Comics'
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name = 'Blue Beetle II'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.hair_colour_id = T2.id WHERE T2.colour = 'Blond' 
SELECT T2.superhero_name FROM hero_attribute AS T1 INNER JOIN superhero AS T2 ON T1.hero_id = T2.id INNER JOIN attribute AS T3 ON T1.attribute_id = T3.id WHERE T3.attribute_name LIKE 'Intelligence' ORDER BY T1.attribute_value ASC LIMIT 1;
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.superhero_name = 'Copycat'
SELECT COUNT(DISTINCT superhero.superhero_name) FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Durability' AND hero_attribute.attribute_value < 50
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Death Touch'
SELECT COUNT(DISTINCT s.id) FROM superhero s JOIN gender g ON s.gender_id = g.id JOIN hero_attribute ha ON s.id = ha.hero_id JOIN attribute a ON a.id = ha.attribute_id WHERE g.gender = 'Female' AND a.attribute_name = 'Strength' AND ha.attribute_value = 100
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id GROUP BY T1.superhero_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Vampire'
SELECT CAST(COUNT(CASE WHEN T1.alignment = 'Bad' THEN T2.id END) AS REAL) * 100 / COUNT(T2.id), COUNT(CASE WHEN T1.alignment = 'Bad' AND T3.publisher_name = 'Marvel Comics' THEN T2.id END) AS "Marvel" FROM alignment AS T1 INNER JOIN superhero AS T2 ON T2.alignment_id = T1.id INNER JOIN publisher AS T3 ON T3.id = T2.publisher_id
SELECT (SELECT COUNT(*) FROM superhero JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'Marvel Comics') - (SELECT COUNT(*) FROM superhero JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'DC Comics') AS difference FROM superhero LIMIT 1
SELECT id FROM publisher WHERE publisher_name = 'Star Trek'
SELECT AVG(attribute_value) FROM hero_attribute
SELECT COUNT(id) FROM superhero WHERE full_name IS NULL
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.id = 75 
SELECT T2.power_name FROM superhero AS T1 INNER JOIN hero_power AS T3 ON T1.id = T3.hero_id INNER JOIN superpower AS T2 ON T3.power_id = T2.id WHERE T1.superhero_name = 'Deathlok'
SELECT AVG(weight_kg) FROM superhero WHERE gender_id = 2
SELECT T3.power_name FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id INNER JOIN hero_power AS HP ON T1.id = HP.hero_id INNER JOIN superpower AS T3 ON HP.power_id = T3.id WHERE T2.gender = 'Male' LIMIT 5
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Alien'
SELECT superhero_name FROM superhero WHERE height_cm BETWEEN 170 AND 190 AND eye_colour_id IS NULL
SELECT T2.power_name FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.hero_id = 56
SELECT T1.full_name FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Demi-God' LIMIT 5
SELECT COUNT(id) FROM superhero WHERE alignment_id = ( SELECT id FROM alignment WHERE alignment = 'Bad' )
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.weight_kg = 169
SELECT T3.colour FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id INNER JOIN colour AS T3 ON T1.hair_colour_id = T3.id WHERE T1.height_cm = 185 AND T2.race = 'Human'
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id ORDER BY T1.weight_kg DESC LIMIT 1 
SELECT CAST(COUNT(CASE WHEN T2.publisher_name = 'Marvel Comics' THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(T1.publisher_id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.height_cm BETWEEN 150 AND 180
SELECT DISTINCT superhero.full_name FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id WHERE superhero.weight_kg > ( SELECT AVG(weight_kg) FROM superhero ) * 0.79 AND gender.gender = 'Male'
SELECT T2.power_name FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id GROUP BY T2.power_name ORDER BY COUNT(T1.hero_id) DESC LIMIT 1
SELECT T1.attribute_name, T2.attribute_value FROM attribute AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id INNER JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = 'Abomination' 
SELECT T2.power_name FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.hero_id = 1 
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'stealth'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'strength' ORDER BY T2.attribute_value DESC LIMIT 1
SELECT CAST(COUNT(CASE WHEN T1.skin_colour_id IS NULL THEN T1.id ELSE NULL END) AS REAL) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id 
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Dark Horse Comics'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id INNER JOIN publisher AS T4 ON T1.publisher_id = T4.id WHERE T3.attribute_name = 'durability' AND T4.publisher_name = 'Dark Horse Comics' ORDER BY T2.attribute_value DESC LIMIT 1 
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.full_name = 'Abraham Sapien'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Flight'
SELECT T2.colour AS eye_colour, T3.colour AS hair_colour, T4.colour AS skin_colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id INNER JOIN colour AS T3 ON T1.hair_colour_id = T3.id INNER JOIN colour AS T4 ON T1.skin_colour_id = T4.id INNER JOIN gender AS T5 ON T1.gender_id = T5.id INNER JOIN publisher AS T6 ON T1.publisher_id = T6.id WHERE T5.gender = 'Female' AND T6.publisher_name = 'Dark Horse Comics'
SELECT T1.superhero_name, T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.hair_colour_id = T1.skin_colour_id AND T1.hair_colour_id = T1.eye_colour_id
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.superhero_name = 'A-Bomb'
SELECT CAST(SUM(CASE WHEN C1.colour = 'Blue' THEN 1 ELSE 0 END) AS REAL) / COUNT(G1.gender) * 100 FROM superhero S1 INNER JOIN gender G1 ON S1.gender_id = G1.id INNER JOIN colour C1 ON S1.eye_colour_id = C1.id WHERE G1.gender = 'Female'
SELECT T1.superhero_name, T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.full_name = 'Charles Chandler'
SELECT T2.gender FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T1.superhero_name = 'Agent 13' 
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Adaptation'
SELECT COUNT(power_id) FROM hero_power WHERE hero_id = ( SELECT id FROM superhero WHERE superhero_name = 'Amazo' )
SELECT T2.power_name FROM superhero AS T1 INNER JOIN hero_power AS HP ON T1.id = HP.hero_id INNER JOIN superpower AS T2 ON HP.power_id = T2.id WHERE T1.full_name = 'Hunter Zolomon'
SELECT superhero.superhero_name, superhero.height_cm FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Amber' 
SELECT superhero.superhero_name FROM superhero INNER JOIN colour AS eye_colour ON superhero.eye_colour_id = eye_colour.id INNER JOIN colour AS hair_colour ON superhero.hair_colour_id = hair_colour.id WHERE eye_colour.colour = 'Black' AND hair_colour.colour = 'Black'
SELECT T3.colour AS eye_colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id INNER JOIN colour AS T3 ON T1.eye_colour_id = T3.id WHERE T2.colour = 'Gold'
SELECT superhero.full_name FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE race.race = 'Vampire'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T2.alignment = 'Neutral'
SELECT COUNT(hero_id) FROM hero_attribute AS T1 INNER JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T2.attribute_name = 'Strength' AND T1.attribute_value = (SELECT MAX(attribute_value) FROM hero_attribute)
SELECT T4.race, T5.alignment FROM superhero AS T1 INNER JOIN race AS T4 ON T1.race_id = T4.id INNER JOIN alignment AS T5 ON T1.alignment_id = T5.id WHERE T1.superhero_name = 'Cameron Hicks'
SELECT CAST(COUNT(CASE WHEN T2.gender = 'Female' THEN T1.id ELSE NULL END) AS REAL) * 100 / COUNT(T1.id) FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id INNER JOIN publisher AS T3 ON T1.publisher_id = T3.id WHERE T3.publisher_name = 'Marvel Comics' 
SELECT AVG(T1.weight_kg) FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Alien'
SELECT (SUM(CASE WHEN full_name = 'Emil Blonsky' THEN weight_kg ELSE 0 END) - SUM(CASE WHEN full_name = 'Charles Chandler' THEN weight_kg ELSE 0 END)) AS weight_difference FROM superhero
SELECT superhero_name, AVG(height_cm) as average_height FROM superhero GROUP BY superhero_name;
SELECT T2.power_name FROM superhero AS T1 INNER JOIN hero_power AS HP ON T1.id = HP.hero_id INNER JOIN superpower AS T2 ON HP.power_id = T2.id WHERE T1.superhero_name = 'Abomination'
SELECT COUNT(superhero.id) FROM superhero JOIN race ON superhero.race_id = race.id JOIN gender ON superhero.gender_id = gender.id WHERE race.race = 'god/eternal' AND gender.gender = 'Male'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'Speed' ORDER BY T2.attribute_value DESC LIMIT 1 
SELECT COUNT(id) FROM superhero WHERE alignment_id = 3
SELECT T3.attribute_name, T2.attribute_value FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T1.superhero_name = '3-D Man'
SELECT T1.superhero_name FROM superhero AS T1 WHERE T1.eye_colour_id = 7 AND T1.hair_colour_id = 9 
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name IN ('Hawkman', 'Karate Kid', 'Speedy')
SELECT COUNT(id) FROM superhero WHERE publisher_id IS NULL 
SELECT CAST(SUM(CASE WHEN eye_colour_id = 7 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(superhero_name) AS "percentage" FROM superhero 
SELECT CAST(SUM(CASE WHEN gender_id = 1 THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN gender_id = 2 THEN 1 ELSE 0 END) AS ratio FROM superhero 
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1 
SELECT id FROM superpower WHERE power_name = 'cryokinesis'
SELECT superhero_name FROM superhero WHERE id = 294 
SELECT full_name FROM superhero WHERE weight_kg IS NULL OR weight_kg = 0
SELECT T1.colour FROM colour AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T2.full_name = 'Karen Beecher-Duncan'
SELECT T3.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T3.id = T2.power_id WHERE T1.full_name='Helen Parr'
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.weight_kg = 108 AND T1.height_cm = 188 
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.id = 38
SELECT T3.race FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN race AS T3 ON T1.race_id = T3.id WHERE T2.attribute_value = ( SELECT MAX(attribute_value) FROM hero_attribute ) 
SELECT T3.alignment, T5.power_name FROM superhero AS T1 INNER JOIN alignment AS T3 ON T1.alignment_id = T3.id INNER JOIN hero_power AS T4 ON T1.id = T4.hero_id INNER JOIN superpower AS T5 ON T4.power_id = T5.id WHERE T1.superhero_name = 'Atom IV'
SELECT superhero.full_name FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Blue' LIMIT 5 
SELECT AVG(T2.attribute_value) FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T1.alignment_id = 3
SELECT C.colour FROM superhero AS S INNER JOIN colour AS C ON S.skin_colour_id = C.id INNER JOIN hero_attribute AS HA ON S.id = HA.hero_id WHERE HA.attribute_value = 100 
SELECT COUNT(*) FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id INNER JOIN alignment AS T3 ON T1.alignment_id = T3.id WHERE T3.id = 1 AND T2.id = 2
SELECT DISTINCT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value BETWEEN 75 AND 80
SELECT T3.race FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.hair_colour_id = T2.id INNER JOIN race AS T3 ON T1.race_id = T3.id INNER JOIN gender AS T4 ON T1.gender_id = T4.id WHERE T2.colour = 'blue' AND T4.gender = 'male'
SELECT CAST(SUM(CASE WHEN T1.gender_id = 2 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.id) AS percentage FROM superhero AS T1 INNER JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T2.id = 2
SELECT SUM(CASE WHEN T1.eye_colour_id = 7 THEN 1 ELSE 0 END) - SUM(CASE WHEN T1.eye_colour_id = 1 THEN 1 ELSE 0 END) FROM superhero AS T1 LEFT JOIN colour ON T1.eye_colour_id = colour.id WHERE T1.weight_kg IS NULL OR T1.weight_kg = 0
SELECT T2.attribute_value FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'Strength' AND T1.superhero_name = 'Hulk'
SELECT T2.power_name FROM superhero AS T1 INNER JOIN hero_power AS HP ON T1.id = HP.hero_id INNER JOIN superpower AS T2 ON HP.power_id = T2.id WHERE T1.superhero_name = 'Ajax'
SELECT COUNT(*) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id INNER JOIN alignment AS T3 ON T1.alignment_id = T3.id WHERE T2.colour = 'Green' AND T3.alignment = 'Bad'
SELECT COUNT(*) FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id INNER JOIN publisher AS T3 ON T1.publisher_id = T3.id WHERE T2.gender = 'Female' AND T3.publisher_name = 'Marvel Comics'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Wind Control' ORDER BY T1.superhero_name ASC
SELECT T3.gender FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN gender AS T3 ON T1.gender_id = T3.id INNER JOIN superpower AS T4 ON T2.power_id = T4.id WHERE T4.power_name = 'Phoenix Force'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'DC Comics' ORDER BY T1.weight_kg DESC LIMIT 1 
SELECT AVG(height_cm) FROM superhero INNER JOIN race ON superhero.race_id = race.id INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE race.race <> 'Human' AND publisher.publisher_name = 'Dark Horse Comics'
SELECT COUNT(superhero.superhero_name) FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Speed' AND hero_attribute.attribute_value = 100 
SELECT ( SELECT COUNT(superhero.id) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'DC Comics' ) - ( SELECT COUNT(superhero.id) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'Marvel Comics' ) AS difference_in_heroes_created 
SELECT T2.attribute_name FROM hero_attribute AS T1 INNER JOIN attribute AS T2 ON T1.attribute_id = T2.id INNER JOIN superhero AS T3 ON T1.hero_id = T3.id WHERE T3.superhero_name = 'Black Panther' ORDER BY T1.attribute_value ASC LIMIT 1
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.superhero_name = 'Abomination' 
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1 
SELECT superhero_name FROM superhero WHERE full_name = 'Charles Chandler'
SELECT CAST(SUM(CASE WHEN T2.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.superhero_name) FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id INNER JOIN publisher AS T3 ON T1.publisher_id = T3.id WHERE T3.publisher_name = 'George Lucas'
SELECT CAST(SUM(CASE WHEN T5.alignment = 'Good' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T5.alignment) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id INNER JOIN alignment AS T5 ON T1.alignment_id = T5.id WHERE T2.publisher_name = 'Marvel Comics'
SELECT COUNT(*) FROM superhero WHERE full_name LIKE 'John%'
SELECT hero_id FROM hero_attribute ORDER BY attribute_value LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = 'Alien'
SELECT superhero.full_name FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.weight_kg < 100 AND colour.colour = 'brown'
SELECT T2.attribute_value FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T1.superhero_name = 'Aquababy'
SELECT T1.weight_kg, T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.id = 40 
SELECT AVG(height_cm) FROM superhero AS S INNER JOIN alignment AS A ON S.alignment_id = A.id WHERE A.alignment = 'neutral'
SELECT T1.id FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Intelligence'
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.superhero_name = 'Blackwulf'
SELECT DISTINCT T3.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T1.height_cm > ( SELECT AVG(height_cm) FROM superhero ) * 0.8
SELECT drivers.driverRef FROM qualifying INNER JOIN drivers ON qualifying.driverId = drivers.driverId WHERE qualifying.q1 IS NOT NULL AND qualifying.raceId = 18 ORDER BY qualifying.q1 DESC LIMIT 5
SELECT T1.surname FROM drivers AS T1 INNER JOIN qualifying AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = 19 ORDER BY T2.q2 LIMIT 1
SELECT T1.year FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.location = 'Shanghai' 
SELECT url FROM races WHERE circuitId = ( SELECT circuitId FROM circuits WHERE name = 'Circuit de Barcelona-Catalunya' ) 
SELECT DISTINCT T1.name FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.country = 'Germany'
SELECT T1.position FROM circuits AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId WHERE T2.name = 'Renault' 
SELECT COUNT(T1.raceId) FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.year = 2010 AND T2.location NOT IN ('Asia', 'Europe') 
SELECT races.name FROM races INNER JOIN circuits ON races.circuitId = circuits.circuitId WHERE circuits.country = 'Spain';
SELECT T1.lat, T1.lng FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name LIKE 'Australian Grand Prix'
SELECT races.url FROM races INNER JOIN circuits ON races.circuitId = circuits.circuitId WHERE circuits.name = 'Sepang International Circuit'
SELECT races.time FROM races INNER JOIN circuits ON races.circuitId = circuits.circuitId WHERE circuits.name = 'Sepang International Circuit'
SELECT lat, lng FROM circuits WHERE name = 'Abu Dhabi Grand Prix'
SELECT T3.country FROM constructorResults AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId INNER JOIN circuits AS T3 ON T3.circuitId = (SELECT circuitId FROM races WHERE raceId = 24) WHERE T1.points = 1 AND T1.raceId = 24
SELECT q1 FROM qualifying WHERE raceId = 354 AND driverId = (SELECT driverId FROM drivers WHERE forename = 'Bruno' AND surname = 'Senna') 
SELECT T1.nationality FROM drivers AS T1 INNER JOIN qualifying AS T2 ON T1.driverId = T2.driverId WHERE T2.q2 = '0:01:40' AND T2.raceId = 355 
SELECT number FROM drivers WHERE driverId = ( SELECT driverId FROM qualifying WHERE raceId = 903 AND q3 = '0:01:54' )
SELECT COUNT(DISTINCT T2.driverId) FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T1.name = 'Bahrain Grand Prix' AND T1.year = 2007 AND T2.time IS NULL 
SELECT T2.url FROM races AS T1 INNER JOIN seasons AS T2 ON T1.year = T2.year WHERE T1.raceId = 901 
SELECT COUNT(distinct driverId) FROM results WHERE raceId = (SELECT raceId FROM races WHERE date = '2015-11-29') AND time IS NOT NULL
SELECT T2.forename, T2.surname FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = 592 AND T1.time IS NOT NULL ORDER BY T2.dob LIMIT 1
SELECT T1.url FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T2.time = '0:01:27' AND T2.raceId = 161 
SELECT T2.nationality FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = 933 ORDER BY T1.fastestLapSpeed DESC LIMIT 1
SELECT circuits.lat, circuits.lng FROM races INNER JOIN circuits ON races.circuitId = circuits.circuitId WHERE races.name = 'Malaysian Grand Prix'
SELECT T2.url FROM constructorResults AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId WHERE T1.raceId = 9 ORDER BY T1.points DESC LIMIT 1 
SELECT q1 FROM qualifying WHERE driverId = (SELECT driverId FROM drivers WHERE forename = 'Lucas' AND surname = 'di Grassi') AND raceId = 345 
SELECT drivers.nationality FROM drivers INNER JOIN qualifying ON drivers.driverId = qualifying.driverId WHERE qualifying.q2 = "0:01:15" AND qualifying.raceId = 347
SELECT T2.code FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = 45 AND T1.q3 = '0:01:33'
SELECT T1.time FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = 743 AND T2.surname = 'McLaren'
SELECT T2.forename, T2.surname FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T1.raceId = T3.raceId WHERE T3.year = 2006 AND T3.name = 'San Marino Grand Prix' AND T1.position = 2
SELECT T1.url FROM seasons AS T1 INNER JOIN races AS T2 ON T1.year = T2.year WHERE T2.raceId = 901 
SELECT COUNT(*) FROM results as r INNER JOIN races as ra ON r.raceId = ra.raceId WHERE ra.date = '2015-11-29' AND r.statusId IN (SELECT statusId FROM status WHERE status = 'Finished')
SELECT T2.forename, T2.surname FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = 872 AND T1.time IS NOT NULL ORDER BY T2.dob DESC LIMIT 1
SELECT T1.forename, T1.surname FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = 348 ORDER BY T2.time LIMIT 1 
SELECT T1.nationality FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T2.fastestLapSpeed = ( SELECT MAX(fastestLapSpeed) FROM results )
SELECT CAST((T1.fastestLapSpeed - T2.fastestLapSpeed) AS REAL) * 100 / T1.fastestLapSpeed FROM results AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = 853 AND T2.raceId = 854 AND T1.driverId = (SELECT driverId FROM drivers WHERE forename = 'Paul' AND surname = 'di Resta') AND T1.fastestLapSpeed IS NOT NULL AND T2.fastestLapSpeed IS NOT NULL
SELECT CAST(COUNT(CASE WHEN T1.time IS NOT NULL THEN 1 END) AS REAL) * 100 / COUNT(T1.driverId) FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T2.date = '1983-07-16'
SELECT MIN(year) FROM races WHERE name = 'Singapore Grand Prix'
SELECT COUNT(raceId), name FROM races WHERE year = 2005 ORDER BY name DESC
SELECT r1.name, r1.date FROM races AS R1 WHERE strftime("%Y-%m", r1.date) = (SELECT strftime("%Y-%m", min(date)) FROM races) 
SELECT name, date FROM races WHERE year = 1999 ORDER BY round DESC LIMIT 1
SELECT year FROM races GROUP BY year ORDER BY COUNT(raceId) DESC LIMIT 1
SELECT name FROM races WHERE year = 2017 AND raceId NOT IN ( SELECT raceId FROM races WHERE year = 2000 ) 
SELECT T1.country, T1.name AS circuit, T1.location FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'European Grand Prix' ORDER BY T2.year LIMIT 1
SELECT MAX(year) FROM races WHERE circuitId IN (SELECT circuitId FROM circuits WHERE name='Brands Hatch') AND name='British Grand Prix'
SELECT COUNT(DISTINCT T2.year) FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'Silverstone Circuit' AND T2.name = 'British Grand Prix'
SELECT drivers.forename, drivers.surname, results.positionOrder FROM results INNER JOIN drivers ON drivers.driverId = results.driverId INNER JOIN races ON races.raceId = results.raceId WHERE races.year = 2010 AND races.name = 'Singapore Grand Prix' ORDER BY results.positionOrder
SELECT D.forename, D.surname, MAX(DS.points) AS Maximum_Points FROM drivers AS D INNER JOIN driverStandings AS DS ON D.driverId = DS.driverId GROUP BY D.driverId ORDER BY Maximum_Points DESC LIMIT 1
SELECT T1.forename, T1.surname, T2.points FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.year = 2017 AND T3.name = 'Chinese Grand Prix' ORDER BY T2.points DESC LIMIT 3
SELECT T2.forename, T2.surname, T3.name, MIN(T1.time) AS BestLapTime FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T1.raceId = T3.raceId ORDER BY T1.time ASC LIMIT 1
SELECT AVG(time) FROM lapTimes WHERE (raceId = (SELECT raceId FROM races WHERE (year = 2009 AND name = 'Chinese Grand Prix') ) AND driverId = (SELECT driverId FROM drivers WHERE (forename = 'Sebastian' AND surname = 'Vettel') ) )
SELECT CAST(SUM(CASE WHEN results.position != 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(resultId) FROM results JOIN races ON races.raceId = results.raceId JOIN drivers ON drivers.driverId = results.driverId WHERE drivers.surname = 'Hamilton' AND races.year >= 2010
SELECT drivers.forename, drivers.surname, drivers.nationality, AVG(driverStandings.points) FROM drivers JOIN driverStandings ON drivers.driverId = driverStandings.driverId GROUP BY drivers.driverId ORDER BY COUNT(driverStandings.wins) DESC LIMIT 1
SELECT forename, surname, STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', dob) as Age FROM drivers WHERE nationality = 'Japanese' ORDER BY dob DESC LIMIT 1 
SELECT c.name FROM circuits c JOIN races r ON c.circuitId = r.circuitId WHERE r.year BETWEEN 1990 AND 2000 GROUP BY c.name HAVING COUNT(r.raceId) = 4
SELECT c.name AS circuit_name, c.location AS circuit_location, r.name AS race_name FROM circuits c JOIN races r ON c.circuitId = r.circuitId WHERE c.country = 'USA' AND r.year = 2006
SELECT races.name, circuits.name, circuits.location FROM races INNER JOIN circuits ON races.circuitId = circuits.circuitId WHERE strftime('%m', date) = '09' AND strftime('%Y', date) = '2005';
SELECT T1.name FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T3.forename = 'Alex' AND T3.surname = 'Yoong' AND T2.position < 10
SELECT COUNT(T1.raceId) FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T1.driverId = T3.driverId INNER JOIN circuits AS T4 ON T2.circuitId = T4.circuitId WHERE T3.forename = 'Michael' AND T3.surname = 'Schumacher' AND T4.name = 'Sepang International Circuit' AND T1.points = ( SELECT MAX(points) FROM results )
SELECT T3.name AS race, T3.year AS year FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T1.raceId = T3.raceId WHERE T2.forename = 'Michael' AND T2.surname = 'Schumacher' ORDER BY T1.fastestLapTime ASC LIMIT 1 
SELECT AVG(T1.points) FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T3.raceId = T1.raceId WHERE T2.surname = 'Irvine' AND T2.forename = 'Eddie'AND T3.year = 2000
SELECT races.name, results.points FROM results INNER JOIN drivers ON results.driverId = drivers.driverId INNER JOIN races ON results.raceId = races.raceId WHERE drivers.driverRef = 'hamilton' ORDER BY races.year ASC LIMIT 1
SELECT races.name, circuits.country, races.date FROM races INNER JOIN circuits ON races.circuitId = circuits.circuitId WHERE races.year = 2017 ORDER BY races.date
SELECT T1.name, T1.year, T2.location FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.raceId = (SELECT T3.raceId FROM results AS T3 GROUP BY T3.raceId ORDER BY MAX(T3.laps) DESC LIMIT 1)
SELECT CAST(COUNT(CASE WHEN circuits.country = 'Germany' THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(races.raceId) FROM races INNER JOIN circuits ON races.circuitId = circuits.circuitId WHERE races.name = 'European Grand Prix' 
SELECT lat, lng FROM circuits WHERE name = 'Silverstone Circuit'
SELECT `name`, `lat` FROM `circuits` WHERE `name` IN ('Silverstone Circuit', 'Hockenheimring', 'Hungaroring') ORDER BY `lat` DESC LIMIT 1 
SELECT circuitRef FROM circuits WHERE name = 'Marina Bay Street Circuit'
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT COUNT(driverId) FROM drivers WHERE code IS NULL
SELECT c.country FROM drivers AS d INNER JOIN circuits AS c ON d.driverId = c.circuitId ORDER BY d.dob LIMIT 1
SELECT surname FROM drivers WHERE nationality = 'Italian'
SELECT url FROM drivers WHERE forename = 'Anthony' AND surname = 'Davidson'
SELECT driverRef FROM drivers WHERE forename = 'Lewis' AND surname = 'Hamilton'
SELECT c.name FROM races AS r INNER JOIN circuits AS c ON r.circuitId = c.circuitId WHERE r.name = 'Spanish Grand Prix' AND r.year = 2009 
SELECT DISTINCT T1.year FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Silverstone Circuit'
SELECT races.name, races.date, circuits.name AS circuit_name, circuits.location, circuits.country, races.url FROM races INNER JOIN circuits ON races.circuitId = circuits.circuitId WHERE circuits.circuitRef = 'silverstone'
SELECT T1.time FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Abu Dhabi' AND T1.year = 2010;
SELECT COUNT(raceId) FROM races JOIN circuits ON races.circuitId = circuits.circuitId WHERE circuits.country = 'Italy';
SELECT date FROM races WHERE circuitId = ( SELECT circuitId FROM circuits WHERE name = 'Barcelona-Catalunya' )
SELECT circuits.url FROM circuits INNER JOIN races ON circuits.circuitId = races.circuitId WHERE races.name = 'Spanish Grand Prix' AND races.year = 2009;
SELECT MIN(T1.fastestLapTime) FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.forename = 'Lewis' AND T2.surname = 'Hamilton'
SELECT T1.forename, T1.surname FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId ORDER BY T2.fastestLapSpeed DESC LIMIT 1
SELECT T1.driverRef FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.name = 'Australian Grand Prix' AND T3.year = 2008 AND T2.positionOrder = 1
SELECT T1.name FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T3.forename = 'Lewis' AND T3.surname = 'Hamilton'
SELECT T1.name FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T3.forename = 'Lewis' AND T3.surname = 'Hamilton' ORDER BY T2.rank ASC LIMIT 1
SELECT MAX(fastestLapSpeed) FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T2.year = 2009 AND T2.name = 'Spanish Grand Prix'
SELECT DISTINCT races.year FROM races INNER JOIN results ON races.raceId = results.raceId INNER JOIN drivers ON results.driverId = drivers.driverId WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT T3.positionOrder FROM results AS T3 INNER JOIN drivers AS T1 ON T1.driverId = T3.driverId INNER JOIN races AS T2 ON T2.raceId = T3.raceId WHERE T1.forename = 'Lewis' AND T1.surname = 'Hamilton' AND T2.name = 'Australian Grand Prix' AND T2.year = 2008
SELECT T3.forename, T3.surname FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T3.driverId = T2.driverId WHERE T1.name = 'Australian Grand Prix' AND T1.year = 2008 AND T2.grid = 4
SELECT COUNT(driverId) FROM results AS r JOIN races AS ra ON r.raceId = ra.raceId WHERE ra.name LIKE '%Australian Grand Prix%' AND ra.year = 2008 AND r.time IS NOT NULL;
SELECT MIN(T1.fastestLapTime) FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T1.raceId = T3.raceId WHERE T2.forename = 'Lewis' AND T2.surname = 'Hamilton' AND T3.name = 'Australian Grand Prix' AND T3.year = 2008 
SELECT T3.forename, T3.surname, T1.time FROM results AS T1 INNER JOIN drivers AS T3 ON T1.driverId = T3.driverId INNER JOIN races AS T2 ON T1.raceId = T2.raceId AND T2.year = 2008 AND T2.name = 'Australian Grand Prix' WHERE T1.positionOrder = 2
SELECT T2.forename, T2.surname, T2.url FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T1.raceId = T3.raceId WHERE T3.name = 'Australian Grand Prix' AND T3.year = 2008 AND T1.time LIKE '%:%:%.%'
SELECT COUNT(DISTINCT T1.driverId) FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId INNER JOIN circuits AS T4 ON T3.circuitId = T4.circuitId WHERE T1.nationality = 'American' AND T3.year = 2008 AND T4.country = 'Australia'
SELECT COUNT(DISTINCT T1.driverId) FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T1.driverId = T3.driverId WHERE T2.year = 2008 AND T2.name = 'Australian Grand Prix' AND T1.time IS NOT NULL AND (SELECT COUNT(T4.raceId) FROM results AS T4 WHERE T4.driverId = T1.driverId) > 0
SELECT SUM(points) FROM results WHERE driverId = ( SELECT driverId FROM drivers WHERE forename = 'Lewis' AND surname = 'Hamilton' )
SELECT AVG(strftime('%s', T2.fastestLapTime)) FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T1.forename = 'Lewis' AND T1.surname = 'Hamilton'
SELECT CAST(SUM(CASE WHEN T1.time IS NOT NULL THEN 1 ELSE 0 END) AS REAL) / COUNT(T1.raceId) FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T2.name = 'Australian Grand Prix' AND T2.year = 2008
SELECT (CAST(strftime('%s', T1.time) - strftime('%s', T2.time) AS REAL) / strftime('%s', T1.time)) * 100 AS 'percentage_faster' FROM (SELECT drivers.driverRef, results.time, races.name FROM results INNER JOIN drivers ON results.driverId = drivers.driverId INNER JOIN races ON results.raceId = races.raceId WHERE results.positionOrder = 1 AND races.year = 2008 AND races.name = 'Australian Grand Prix') AS T1 JOIN (SELECT drivers.driverRef, results.time, races.name FROM results INNER JOIN drivers ON results.driverId = drivers.driverId INNER JOIN races ON results.raceId = races.raceId WHERE results.positionOrder = (SELECT MAX(positionOrder) FROM results WHERE raceId = T1.raceId AND time IS NOT NULL) AND races.year = 2008 AND races.name = 'Australian Grand Prix') AS T2 ON T
SELECT COUNT(circuitId) FROM circuits WHERE country = 'Australia' AND location = 'Melbourne'
SELECT lat, lng FROM circuits WHERE country = 'USA'
SELECT COUNT(driverId) FROM drivers WHERE nationality = 'British' AND STRFTIME('%Y', dob) > '1980';
SELECT AVG(points) FROM constructorResults WHERE constructorId IN ( SELECT constructorId FROM constructors WHERE nationality = 'British' )
SELECT T1.name FROM constructors AS T1 INNER JOIN constructorStandings AS T2 ON T1.constructorId = T2.constructorId ORDER BY T2.points DESC LIMIT 1 
SELECT T2.name FROM constructorResults AS T1 RIGHT JOIN constructors AS T2 ON T1.constructorId = T2.constructorId WHERE T1.raceId = 291 AND T1.points = 0
SELECT COUNT(T1.constructorId) FROM constructorStandings AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId WHERE T2.nationality='Japanese' AND T1.points = 0 GROUP BY T1.constructorId HAVING COUNT(T1.raceId) = 2
SELECT name FROM constructors WHERE constructorId IN ( SELECT constructorId FROM constructorStandings WHERE position = 1 ) 
SELECT COUNT(DISTINCT constructors.constructorId) FROM constructors INNER JOIN results ON constructors.constructorId = results.constructorId WHERE constructors.nationality = 'French' AND results.laps > 50 
SELECT CAST(SUM(CASE WHEN results.time IS NOT NULL THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(results.resultId) FROM results INNER JOIN drivers ON results.driverId = drivers.driverId INNER JOIN races ON results.raceId = races.raceId WHERE drivers.nationality = 'Japanese' AND races.year BETWEEN 2007 AND 2009
SELECT T1.year, AVG(strftime('%s', T2.time)) FROM seasons AS T1 INNER JOIN results AS T2 ON T1.year = T2.raceId WHERE T2.time IS NOT NULL AND T2.position = 1 GROUP BY T1.year
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN results ON drivers.driverId = results.driverId WHERE strftime('%Y', drivers.dob) > '1975' AND results.rank = 2
SELECT COUNT(DISTINCT T2.driverId) FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.nationality = 'Italian' AND T1.time IS NULL
SELECT T2.forename, T2.surname FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId ORDER BY T1.fastestLapTime ASC LIMIT 1
SELECT T5.fastestLap FROM seasons AS T1 INNER JOIN races AS T2 ON T1.year = T2.year INNER JOIN driverStandings AS T3 ON T2.raceId = T3.raceId INNER JOIN drivers AS T4 ON T3.driverId = T4.driverId INNER JOIN results AS T5 ON T3.driverId = T5.driverId AND T2.raceId = T5.raceId WHERE T1.year = 2009 AND T3.position = 1 ORDER BY T5.fastestLapTime LIMIT 1
SELECT AVG(fastestLapSpeed) FROM results WHERE raceId IN (SELECT raceId FROM races WHERE name = 'Spanish Grand Prix' AND year = 2009)
SELECT T1.name, T1.year FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T2.milliseconds IS NOT NULL ORDER BY T2.milliseconds ASC LIMIT 1 
SELECT CAST(SUM(CASE WHEN strftime('%Y', D.dob) < '1985' AND L.lap > 50 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(distinct L.driverId) AS "percentage" FROM drivers AS D INNER JOIN lapTimes AS L ON D.driverId = L.driverId INNER JOIN races AS R ON L.raceId = R.raceId WHERE R.year BETWEEN 2000 AND 2005
SELECT COUNT(DISTINCT T1.driverId) FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T1.nationality = 'French' AND T2.milliseconds / 1000 < 120
SELECT code FROM drivers WHERE nationality = 'America'
SELECT raceId FROM races WHERE year = 2009
SELECT COUNT(driverId) FROM results WHERE raceId = 18
SELECT driverId, nationality FROM drivers WHERE nationality = 'Dutch' ORDER BY dob DESC LIMIT 3 
SELECT driverRef FROM drivers WHERE forename = 'Robert' AND surname = 'Kubica'
SELECT COUNT(driverId) FROM drivers WHERE strftime('%Y', dob) = '1980' AND nationality = 'Australian' 
SELECT drivers.forename, drivers.surname, MIN(lapTimes.time) as earliest_lap_time FROM drivers INNER JOIN lapTimes on drivers.driverId = lapTimes.driverId WHERe drivers.dob BETWEEN '1980-01-01' and '1990-12-31' AND drivers.nationality = 'German' GROUP BY drivers.driverId ORDER BY earliest_lap_time LIMIT 3
SELECT driverRef FROM drivers WHERE nationality = 'German' ORDER BY dob ASC LIMIT 1
SELECT T1.driverId, T1.code FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE STRFTIME('%Y', T1.dob) = '1971' AND T2.fastestLapTime IS NOT NULL ORDER BY T2.fastestLapTime ASC
SELECT T1.forename, T1.surname, MAX(T2.time) AS `Latest Lap Time` FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T1.nationality = 'Spanish' AND STRFTIME('%Y', T1.dob) < '1982' GROUP BY T1.driverId ORDER BY `Latest Lap Time` DESC LIMIT 10
SELECT races.year FROM results INNER JOIN races ON results.raceId = races.raceId WHERE results.fastestLapTime IS NOT NULL ORDER BY results.fastestLapTime ASC LIMIT 1
SELECT T1.year FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId ORDER BY T2.time DESC LIMIT 1 
SELECT driverId FROM lapTimes WHERE lap = 1 ORDER BY time ASC LIMIT 5
SELECT COUNT(driverId) FROM results WHERE raceId > 50 AND raceId < 100 AND time IS NOT NULL AND statusId = 2
SELECT COUNT(circuitId), location, lat, lng FROM circuits WHERE country = 'Austria' GROUP BY location, lat, lng
SELECT raceId FROM results WHERE time IS NOT NULL GROUP BY raceId ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.driverRef, T2.nationality, T2.dob FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.q2 IS NOT NULL AND T1.raceId = 23
SELECT races.year, races.name, races.date, races.time FROM drivers JOIN qualifying ON drivers.driverId = qualifying.driverId JOIN races ON qualifying.raceId = races.raceId WHERE drivers.dob = ( SELECT MAX(dob) FROM drivers) ORDER BY races.date LIMIT 1
SELECT COUNT(*) FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T2.statusId = 2 AND T1.nationality = 'American';
SELECT T2.name, T2.url FROM constructorStandings AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId WHERE T2.nationality = 'Italian' ORDER BY T1.points DESC LIMIT 1 
SELECT T2.url FROM constructorStandings AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId GROUP BY T1.constructorId ORDER BY SUM(T1.wins) DESC LIMIT 1 
SELECT T1.forename, T1.surname FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T2.lap = 3 AND T3.name = 'French Grand Prix' ORDER BY T2.time DESC LIMIT 1
SELECT T1.name, MIN(T2.time) FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId WHERE T2.lap = 1 ORDER BY T2.time ASC LIMIT 1
SELECT AVG(T1.fastestLapTime) FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T1.raceId = T3.raceId WHERE T3.year = 2006 AND T3.name = 'United States Grand Prix' AND T1.rank < 11
SELECT T1.driverRef, AVG(T2.milliseconds) AS 'Average Duration' FROM drivers AS T1 INNER JOIN pitStops AS T2 ON T1.driverId = T2.driverId WHERE T1.nationality = 'German' AND STRFTIME('%Y', T1.dob) BETWEEN '1980' AND '1985' GROUP BY T1.driverId ORDER BY 'Average Duration' ASC LIMIT 5
SELECT T1.forename, T1.surname, T3.time FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.name = 'Canadian Grand Prix' AND T3.year = 2008 AND T2.position = 1 
SELECT T2.constructorRef, T2.url FROM results AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId INNER JOIN races AS T3 ON T3.raceId = T1.raceId WHERE T3.year = 2009 AND T3.name = 'Singapore Grand Prix' ORDER BY T1.time ASC LIMIT 1
SELECT forename, surname, dob FROM drivers WHERE STRFTIME('%Y', dob) BETWEEN '1981' AND '1991' AND nationality = 'Austrian'
SELECT forename || ' ' || surname AS Full_Name, url, dob FROM drivers WHERE nationality = 'German' AND dob BETWEEN '1971-01-01' AND '1985-12-31' ORDER BY dob DESC
SELECT location, country, lat, lng FROM circuits WHERE name = 'Hungaroring'
SELECT MAX(T2.points), T3.name, T3.nationality FROM races AS T1 INNER JOIN constructorResults AS T2 ON T1.raceId = T2.raceId INNER JOIN constructors AS T3 ON T2.constructorId = T3.constructorId WHERE T1.name = 'Monaco Grand Prix' AND T1.year BETWEEN 1980 AND 2010 ORDER BY T2.points DESC LIMIT 1
SELECT AVG(results.points) FROM results JOIN races ON results.raceId = races.raceId JOIN drivers ON results.driverId = drivers.driverId WHERE drivers.surname = 'Hamilton' AND races.name LIKE '%Turkish Grand Prix%'
SELECT CAST(COUNT(*) AS REAL) / 10 FROM races WHERE date BETWEEN '2000-01-01' AND '2010-12-31'
SELECT nationality FROM drivers GROUP BY nationality ORDER BY COUNT(*) DESC LIMIT 1 
SELECT wins FROM driverStandings WHERE points = 91
SELECT r.name FROM races r INNER JOIN results res ON r.raceId = res.raceId ORDER BY res.fastestLapTime ASC LIMIT 1
SELECT location, country FROM circuits WHERE circuitId IN (SELECT circuitId FROM races ORDER BY date DESC LIMIT 1)
SELECT T4.forename, T4.surname FROM qualifying AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN circuits AS T3 ON T2.circuitId = T3.circuitId INNER JOIN drivers AS T4 ON T1.driverId = T4.driverId WHERE T2.year = 2008 AND T3.name = 'Marina Bay Street Circuit' AND T1.q3 IS NOT NULL ORDER BY T1.q3 ASC LIMIT 1
SELECT T1.forename, T1.surname, T1.nationality, T2.name FROM drivers AS T1 INNER JOIN races AS T2 ON T1.driverId = T2.raceId WHERE T1.dob = (SELECT MAX(dob) FROM drivers) ORDER BY T2.date ASC LIMIT 1
SELECT COUNT(T2.statusId), T3.forename, T3.surname FROM Races AS T1 INNER JOIN Results AS T2 ON T1.raceId = T2.raceId INNER JOIN Drivers AS T3 ON T2.driverId = T3.driverId WHERE T2.statusId = 3 AND T1.name = 'Canadian Grand Prix' GROUP BY T3.driverId ORDER BY COUNT(T2.statusId) DESC LIMIT 1
SELECT T1.forename || ' ' || T1.surname AS 'Full Name', SUM(T4.wins) AS 'Total Wins' FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId INNER JOIN driverStandings AS T4 ON T3.raceId = T4.raceId AND T1.driverId = T4.driverId GROUP BY T1.driverId ORDER BY T1.dob LIMIT 1
SELECT MAX(duration) FROM pitStops
SELECT MIN(time) from lapTimes
SELECT MAX(duration) FROM pitStops WHERE driverId = ( SELECT driverId FROM drivers WHERE surname = 'Hamilton' AND forename = 'Lewis' )
SELECT T1.lap FROM pitStops AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T1.driverId = T3.driverId WHERE T2.year = 2011 AND T2.name = 'Australian Grand Prix' AND T3.forename = 'Lewis' AND T3.surname = 'Hamilton'
SELECT T3.forename, T3.surname, T2.duration FROM pitStops AS T2 INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId INNER JOIN races AS T1 ON T2.raceId = T1.raceId WHERE T1.year = 2011 AND T1.name = 'Australian Grand Prix'
SELECT MIN(T1.time) FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.forename = 'Lewis' AND T2.surname = 'Hamilton'
SELECT T2.forename, T2.surname FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId ORDER BY T1.time ASC LIMIT 1
SELECT c.name, r.positionOrder FROM drivers d INNER JOIN results r ON r.driverId = d.driverId INNER JOIN races ra ON ra.raceId = r.raceId INNER JOIN circuits c ON c.circuitId = ra.circuitId WHERE d.forename = 'Lewis' AND d.surname = 'Hamilton' ORDER BY r.fastestLapTime ASC LIMIT 1
SELECT MIN(T1.time) FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN circuits as T3 ON T2.circuitId = T3.circuitId WHERE T3.name = 'Austrian Grand Prix Circuit'
SELECT T1.name, MIN(T3.time) AS lap_record FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId INNER JOIN lapTimes AS T3 ON T2.raceId = T3.raceId WHERE T1.country = 'Italy' GROUP BY T1.name
SELECT T2.name, T2.date FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T1.time = ( SELECT MIN(time) FROM lapTimes WHERE raceId IN ( SELECT raceId FROM circuits WHERE name = 'Austrian Grand Prix Circuit' ))
SELECT P.duration FROM lapTimes AS L INNER JOIN pitStops AS P ON L.raceId = P.raceId AND L.driverId = P.driverId WHERE L.raceId IN (SELECT R.raceId FROM races AS R INNER JOIN circuits AS C ON R.circuitId = C.circuitId WHERE C.name = 'Austrian Grand Prix Circuit') AND L.time = (SELECT MIN(time) FROM lapTimes WHERE raceId IN (SELECT raceId FROM races WHERE circuitId IN (SELECT circuitId FROM circuits WHERE name = 'Austrian Grand Prix Circuit')))
SELECT T1.lat, T1.lng FROM circuits AS T1 INNER JOIN lapTimes AS T2 ON T1.circuitId = T2.raceId WHERE T2.time = '1:29.488'
SELECT AVG(milliseconds) FROM pitStops WHERE driverId = (SELECT driverId FROM drivers WHERE forename = 'Lewis' AND surname = 'Hamilton')
SELECT AVG(lapTimes.milliseconds) FROM lapTimes INNER JOIN races ON lapTimes.raceId = races.raceId INNER JOIN circuits ON races.circuitId = circuits.circuitId WHERE circuits.country = 'Italy' 
SELECT player_api_id FROM Player_Attributes ORDER BY overall_rating DESC LIMIT 1 
SELECT T1.player_name, T1.height FROM Player AS T1 ORDER BY T1.height DESC LIMIT 1
SELECT preferred_foot FROM Player_Attributes ORDER BY potential ASC LIMIT 1;
SELECT COUNT(*) FROM Player_Attributes WHERE overall_rating BETWEEN 60 AND 65 AND defensive_work_rate = 'low'
SELECT player_api_id FROM Player_Attributes ORDER BY crossing DESC LIMIT 5
SELECT T2.name FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T1.season = '2015/2016' GROUP BY T2.name ORDER BY SUM(T1.home_team_goal + T1.away_team_goal) DESC LIMIT 1
SELECT T2.team_long_name FROM Match AS T1 INNER JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id WHERE T1.season = '2015/2016' GROUP BY T2.team_long_name ORDER BY SUM(CASE WHEN T1.home_team_goal < T1.away_team_goal THEN 1 ELSE 0 END) ASC LIMIT 1 
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.penalties DESC LIMIT 10 
SELECT T1.team_long_name FROM Team AS T1 INNER JOIN ( SELECT away_team_api_id, COUNT(*) AS away_wins FROM Match INNER JOIN League ON Match.league_id = League.id WHERE League.name = 'Scotland Premier League' AND season = '2009/2010' AND away_team_goal > home_team_goal GROUP BY away_team_api_id ORDER BY away_wins DESC LIMIT 1 ) AS T2 ON T1.team_api_id = T2.away_team_api_id 
SELECT team_long_name, buildUpPlaySpeed FROM Team_Attributes T1 INNER JOIN Team T2 ON T1.team_api_id = T2.team_api_id ORDER BY buildUpPlaySpeed DESC LIMIT 4 
SELECT L1.name FROM League AS L1 INNER JOIN Match AS M1 ON L1.id = M1.league_id WHERE M1.season='2015/2016' and M1.home_team_goal = M1.away_team_goal GROUP BY L1.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T1.birthday), T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 on T1.player_api_id = T2.player_api_id WHERE T2.sprint_speed >= 97 AND T2.date BETWEEN '2013-01-01 00:00:00' AND '2015-12-31 00:00:00'
SELECT League.name, COUNT(Match.league_id) as TotalMatches FROM Match INNER JOIN League on Match.league_id = League.id GROUP BY League.id ORDER BY TotalMatches DESC LIMIT 1
SELECT AVG(height) FROM Player WHERE birthday BETWEEN '1990-01-01 00:00:00' AND '1995-12-31 23:59:59'
SELECT player_api_id FROM Player_Attributes WHERE substr(date,1,4) = '2010' ORDER BY overall_rating DESC LIMIT 1 
SELECT team_fifa_api_id FROM Team_Attributes WHERE buildUpPlaySpeed BETWEEN 51 AND 59
SELECT team_long_name FROM Team WHERE team_api_id IN (SELECT DISTINCT team_api_id FROM Team_Attributes WHERE buildUpPlayPassing > (SELECT AVG(buildUpPlayPassing) FROM Team_Attributes WHERE buildUpPlayPassing IS NOT NULL AND strftime('%Y', date) = '2012') AND strftime('%Y', date) = '2012')
SELECT CAST(SUM(CASE WHEN T1.preferred_foot = 'left' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.player_fifa_api_id) FROM Player AS T1 WHERE T1.birthday BETWEEN '1987-01-01 00:00:00' AND '1992-12-31 23:59:59' 
SELECT League.name, SUM(Match.home_team_goal + Match.away_team_goal) as Total_Goals FROM League JOIN Match ON League.id = Match.league_id GROUP BY League.name ORDER BY Total_Goals ASC LIMIT 5
SELECT AVG(T1.long_shots) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Ahmed Samir Farag'
SELECT T1.player_name, AVG(T2.heading_accuracy) FROM Player AS T1 INNER JOIN Player_attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.height > 180 GROUP BY T2.player_fifa_api_id ORDER BY AVG(T2.heading_accuracy) DESC LIMIT 10
SELECT T2.team_long_name FROM Team_Attributes AS T1 LEFT JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.buildUpPlayDribblingClass = 'Normal' AND T1.date >= '2014-01-01 00:00:00' AND T1.date <= '2014-12-31 23:59:59' AND T1.chanceCreationPassing < ( SELECT AVG(T3.chanceCreationPassing) FROM Team_Attributes AS T3 WHERE T3.buildUpPlayDribblingClass = 'Normal' AND T3.date >= '2014-01-01 00:00:00' AND T3.date <= '2014-12-31 23:59:59' ) ORDER BY T1.chanceCreationPassing DESC
SELECT L.name FROM League AS L INNER JOIN Match AS M ON L.id = M.league_id WHERE M.season = '2009/2010' GROUP BY L.id HAVING AVG(M.home_team_goal) > AVG(M.away_team_goal)
SELECT T1.team_short_name FROM Team AS T1 WHERE T1.team_long_name = 'Queens Park Rangers'
SELECT player_name FROM Player WHERE SUBSTR(birthday,1,4) = '1970' AND SUBSTR(birthday,6,2) = '10';
SELECT T1.`attacking_work_rate` FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.`player_api_id` = T2.`player_api_id` WHERE T2.`player_name` = 'Franco Zennaro'
SELECT buildUpPlayPositioningClass FROM Team_Attributes WHERE team_api_id = ( SELECT team_api_id FROM Team WHERE team_long_name = 'ADO Den Haag' )
SELECT heading_accuracy FROM Player_Attributes WHERE date = '2014-09-18 00:00:00' AND player_api_id = (SELECT player_api_id FROM Player WHERE player_name = 'Francois Affolter')
SELECT overall_rating FROM Player_Attributes WHERE strftime('%Y', date) = '2011' and player_api_id = (SELECT player_api_id FROM Player WHERE player_name = 'Gabriel Tamas')
SELECT COUNT(T1.id) FROM "Match" AS T1 INNER JOIN "League" AS T2 ON T1.league_id = T2.id WHERE T2.name = 'Scotland Premier League' AND T1.season = '2015/2016'
SELECT preferred_foot FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.birthday DESC LIMIT 1 
SELECT player_name FROM Player WHERE player_api_id IN ( SELECT player_api_id FROM Player_Attributes WHERE potential = ( SELECT MAX(potential) FROM Player_Attributes ) )
SELECT COUNT(T1.id) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.weight < 130 AND T2.preferred_foot = 'left'
SELECT T1.team_short_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.chanceCreationPassingClass = 'Risky' 
SELECT defensive_work_rate FROM Player_Attributes WHERE player_api_id = ( SELECT player_api_id FROM Player WHERE player_name = 'David Wilson' )
SELECT T1.player_name, T1.birthday FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.overall_rating DESC LIMIT 1 
SELECT Name FROM League WHERE country_id = ( SELECT id FROM country WHERE Name = 'Netherlands' )
SELECT AVG(M.home_team_goal) FROM Match AS M INNER JOIN Country AS C ON M.country_id = C.id WHERE C.name = 'Poland' AND M.season = '2010/2011'
SELECT CASE WHEN AVG(T1.finishing) > AVG(T2.finishing) THEN T3.player_name ELSE T4.player_name END FROM Player_Attributes AS T1 INNER JOIN Player AS T3 ON T1.player_api_id = T3.player_api_id INNER JOIN Player_Attributes AS T2 INNER JOIN Player AS T4 ON T2.player_api_id = T4.player_api_id WHERE T3.height = ( SELECT MAX(height) FROM Player ) AND T4.height = ( SELECT MIN(height) FROM Player ) 
SELECT player_name FROM Player WHERE height > 180
SELECT COUNT(id) FROM Player WHERE STRFTIME('%Y', birthday) > '1990'
SELECT COUNT(*) FROM Player WHERE player_name LIKE 'Adam%' AND weight > 170
SELECT DISTINCT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE strftime('%Y', T2.date) BETWEEN '2008' AND '2010' AND T2.overall_rating > 80 
SELECT potential FROM Player_Attributes WHERE player_api_id = ( SELECT player_api_id FROM Player WHERE player_name = 'Aaron Doran' )
SELECT player_name FROM Player INNER JOIN Player_Attributes ON Player.player_api_id = Player_Attributes.player_api_id WHERE preferred_foot = 'left'
SELECT T1.team_long_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlaySpeedClass = 'Fast'
SELECT T1.buildUpPlayPassingClass FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_short_name = 'CLB'
SELECT T2.team_short_name FROM Team_Attributes T1 INNER JOIN Team T2 ON T1.team_api_id = T2.team_api_id WHERE T1.buildUpPlayPassing > 70 
SELECT AVG(T2.overall_rating) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T2.player_api_id = T1.player_api_id WHERE T1.height > 170 AND strftime('%Y', T2.date) BETWEEN '2010' AND '2015'
SELECT player_name FROM Player ORDER BY height ASC LIMIT 1 
SELECT T2.name FROM League AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id WHERE T1.name = 'Italy Serie A' 
SELECT T1.team_short_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlaySpeed = 31 AND T2.buildUpPlayDribbling = 53 AND T2.buildUpPlayPassing = 32
SELECT AVG(overall_rating) AS average_rating FROM Player_Attributes WHERE player_api_id = ( SELECT player_api_id FROM Player WHERE player_name = 'Aaron Doran')
SELECT COUNT(*) FROM Match AS M JOIN League AS L ON M.league_id = L.id WHERE L.name = 'Germany 1. Bundesliga' AND strftime('%Y-%m', M.date) BETWEEN '2008-08' AND '2008-10'
SELECT T2.team_short_name FROM `Match` AS T1 INNER JOIN `Team` AS T2 ON T1.home_team_api_id = T2.team_api_id WHERE T1.home_team_goal = 10 
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.potential = 61 ORDER BY T2.balance DESC LIMIT 1 
SELECT (SELECT AVG(ball_control) FROM Player_Attributes WHERE player_fifa_api_id = (SELECT player_fifa_api_id FROM Player WHERE player_name = 'Abdou Diallo')) - (SELECT AVG(ball_control) FROM Player_Attributes WHERE player_fifa_api_id = (SELECT player_fifa_api_id FROM Player WHERE player_name = 'Aaron Appindangoye')) AS Difference;
SELECT team_long_name FROM Team WHERE team_short_name = 'GEN'
SELECT player_name FROM Player WHERE player_name IN ('Aaron Lennon', 'Abdelaziz Barrada') ORDER BY birthday ASC LIMIT 1; 
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1 
SELECT COUNT(*) FROM Player_Attributes WHERE preferred_foot = 'left' AND attacking_work_rate = 'low'
SELECT T2.name FROM League AS T1 INNER JOIN Country AS T2 ON T1.Country_id = T2.id WHERE T1.name = 'Belgium Jupiler League'
SELECT T1.name FROM League AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Germany'
SELECT player_name FROM Player WHERE player_api_id = ( SELECT player_api_id FROM Player_Attributes WHERE overall_rating = ( SELECT MAX(overall_rating) FROM Player_Attributes) ) 
SELECT COUNT(*) FROM Player INNER JOIN Player_Attributes ON Player.player_api_id = Player_Attributes.player_api_id WHERE strftime('%Y', birthday)<'1986' AND Player_Attributes.defensive_work_rate = 'high'
SELECT player_name, MAX(crossing) AS max_crossing FROM Player_Attributes JOIN Player ON Player_Attributes.player_api_id = Player.player_api_id WHERE player_name IN ('Alexis', 'Ariel Borysiuk', 'Arouna Kone') GROUP BY player_name ORDER BY max_crossing DESC LIMIT 1 
SELECT heading_accuracy FROM Player_Attributes WHERE player_fifa_api_id = ( SELECT player_fifa_api_id FROM Player WHERE player_name = 'Ariel Borysiuk' )
SELECT COUNT(*) FROM Player_Attributes WHERE player_api_id IN ( SELECT player_api_id FROM Player WHERE height > 180 ) AND volleys > 70
SELECT player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.volleys > 70 AND T2.dribbling > 70
SELECT COUNT(T1.id) FROM Match AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id WHERE T1.season = '2008/2009' AND T2.name = 'Belgium' 
SELECT T2.long_passing FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.birthday ASC LIMIT 1 
SELECT COUNT(*) FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T2.name = 'Belgium Jupiler League' AND STRFTIME('%Y', T1.date) = '2009' AND STRFTIME('%m', T1.date) = '04'
SELECT T2.name FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T1.season = '2008/2009' GROUP BY T1.league_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(Player_Attributes.overall_rating) FROM Player_Attributes INNER JOIN Player ON Player_Attributes.player_api_id = Player.player_api_id WHERE strftime('%Y', Player.birthday) < '1986'
SELECT (CAST((SELECT overall_rating FROM Player_Attributes WHERE player_api_id = (SELECT player_api_id FROM Player WHERE player_name = 'Ariel Borysiuk')) - (SELECT overall_rating FROM Player_Attributes WHERE player_api_id = (SELECT player_api_id FROM Player WHERE player_name = 'Paulin Puel')) AS REAL) / (SELECT overall_rating FROM Player_Attributes WHERE player_api_id = (SELECT player_api_id FROM Player WHERE player_name = 'Paulin Puel'))) * 100 AS Difference_Percentage 
SELECT AVG(T1.buildUpPlaySpeed) FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_long_name = 'Heart of Midlothian'
SELECT AVG(overall_rating) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Pietro Marino'
SELECT SUM(T1.crossing) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Lennox" 
SELECT MAX(T2.chanceCreationPassing), T2.chanceCreationPassingClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'Ajax' GROUP BY T2.chanceCreationPassingClass ORDER BY T2.chanceCreationPassing DESC LIMIT 1 
SELECT preferred_foot FROM Player_Attributes WHERE player_api_id = (SELECT player_api_id FROM Player WHERE player_name = 'Abdou Diallo') LIMIT 1 
SELECT MAX(T1.overall_rating) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Dorlan Pabon' 
SELECT AVG(M.away_team_goal) as AvgGoals FROM Match as M JOIN Team as T ON T.team_api_id = M.away_team_api_id JOIN League as L ON L.id = M.league_id JOIN Country as C ON C.id = L.country_id WHERE T.team_long_name = 'Parma' AND C.name = 'Italy'
SELECT T2.player_name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.overall_rating = 77 AND T1.date = '2016-06-23' ORDER BY T2.birthday LIMIT 1 
SELECT T1.overall_rating FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Aaron Mooy' AND T1.`date` = '2016-02-04 00:00:00'
SELECT T2.potential FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Francesco Parravicini' AND T2.date = '2010-08-30 00:00:00'
SELECT T1.attacking_work_rate FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Francesco Migliore' AND T1.date = '2015-05-01 00:00:00'
SELECT defensive_work_rate FROM Player_Attributes WHERE player_api_id = (SELECT player_api_id FROM Player WHERE player_name = 'Kevin Berigaud') AND `date` = '2013-02-22 00:00:00' 
SELECT date FROM Player_Attributes WHERE player_api_id = (SELECT player_api_id FROM Player WHERE player_name = 'Kevin Constant') ORDER BY crossing DESC LIMIT 1 
SELECT T2.buildUpPlaySpeedClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'Willem II' AND T2.date = '2011-02-22' 
SELECT T1.buildUpPlayDribblingClass FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_short_name = 'LEI' AND T1.date = '2015-09-10 00:00:00'
SELECT T2.buildUpPlayPassingClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'FC Lorient' AND T2.date = '2010-02-22'
SELECT T1.chanceCreationPassingClass FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_long_name = 'PEC Zwolle' AND T1.date = '2013-09-20 00:00:00'
SELECT T1.chanceCreationCrossingClass FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.`date` = '2010-02-22 00:00:00' AND T2.team_long_name = 'Hull City'
SELECT T1.defenceAggressionClass FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_long_name = 'Hannover 96' AND T1.date = '2015-09-10 00:00:00'
SELECT AVG(T1.overall_rating) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Marko Arnautovic' AND T1.date BETWEEN '2007-02-22 00:00:00' AND '2016-04-21 00:00:00'
SELECT (SELECT overall_rating FROM Player_Attributes JOIN Player ON Player_Attributes.player_api_id = Player.player_api_id WHERE player_name = 'Landon Donovan' AND date = '2013-07-12') - (SELECT overall_rating FROM Player_Attributes JOIN Player ON Player_Attributes.player_api_id = Player.player_api_id WHERE player_name = 'Jordan Bowery' AND date = '2013-07-12')* 100 / (SELECT overall_rating FROM Player_Attributes JOIN Player ON Player_Attributes.player_api_id = Player.player_api_id WHERE player_name = 'Landon Donovan' AND date = '2013-07-12') AS percentage_difference 
SELECT player_name, height FROM Player ORDER BY height DESC LIMIT 5 
SELECT player_api_id FROM Player ORDER BY weight DESC LIMIT 10
SELECT player_name FROM Player WHERE STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', birthday) > 34 
SELECT SUM(home_team_goal) FROM Match JOIN Player ON Match.home_player_1 = Player.player_api_id WHERE Player.player_name = 'Aaron Lennon'
SELECT SUM(IFNULL(home_team_goal,0) + IFNULL(away_team_goal,0)) AS total_goals FROM Match WHERE home_player_1 IN (SELECT player_api_id FROM Player WHERE player_name IN ('Daan Smith','Filipe Ferreira')) OR away_player_1 IN (SELECT player_api_id FROM Player WHERE player_name IN ('Daan Smith','Filipe Ferreira'))
SELECT SUM(Match.home_team_goal) FROM Match INNER JOIN Player on Player.player_api_id = Match.home_team_api_id WHERE (julianday('now') - julianday(Player.birthday)) / 365 <= 30;
SELECT player_name FROM Player INNER JOIN Player_Attributes ON Player.player_api_id = Player_Attributes.player_api_id ORDER BY Player_Attributes.overall_rating DESC LIMIT 10
SELECT player_name FROM Player WHERE player_api_id = ( SELECT player_api_id FROM Player_Attributes ORDER BY potential DESC LIMIT 1 ) 
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.attacking_work_rate = 'high'
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.finishing = 1 ORDER BY T1.birthday ASC LIMIT 1
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id INNER JOIN Country AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Belgium'
SELECT T1.player_name, T4.name AS Country FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id INNER JOIN Match AS T3 ON T2.player_api_id = T3.home_player_1 OR T2.player_api_id = T3.home_player_2 OR T2.player_api_id = T3.home_player_3 OR T2.player_api_id = T3.home_player_4 OR T2.player_api_id = T3.home_player_5 OR T2.player_api_id = T3.home_player_6 OR T2.player_api_id = T3.home_player_7 OR T2.player_api_id = T3.home_player_8 OR T2.player_api_id = T3.home_player_9 OR T2.player_api_id = T3.home_player_10 OR T2.player_api_id = T3.home_player_11 OR T2.player_api_id = T3.away_player_1
SELECT C.name FROM Country AS C INNER JOIN Player AS P ON C.id = P.id GROUP BY C.name ORDER BY AVG(P.weight) DESC LIMIT 1 
SELECT T1.team_long_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlaySpeedClass = 'Slow' 
SELECT T2.team_short_name FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.chanceCreationPassingClass = 'Safe' 
SELECT AVG(T2.height) FROM Player AS T2 INNER JOIN Country AS T1 ON T2.player_api_id = T1.id WHERE T1.name = 'Italy'
SELECT player_name FROM Player WHERE height > 180 ORDER BY player_name ASC LIMIT 3
SELECT COUNT(*) FROM Player WHERE player_name LIKE 'Aaron%' AND birthday > '1990-01-01' 
SELECT ( SELECT jumping FROM Player_Attributes WHERE player_api_id = 6 ) - ( SELECT jumping FROM Player_Attributes WHERE player_api_id = 23 ) AS Jumping_Difference 
SELECT player_api_id FROM Player_Attributes WHERE preferred_foot = 'right' ORDER BY potential ASC LIMIT 3 
SELECT COUNT(DISTINCT player_api_id) FROM Player_Attributes WHERE crossing = ( SELECT MAX(crossing) FROM Player_Attributes ) AND preferred_foot = 'left' 
SELECT CAST(SUM(CASE WHEN stamina > 80 AND strength > 80 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(id) FROM Player_Attributes
SELECT Country.name FROM Country JOIN League ON Country.id = League.country_id WHERE League.name = 'Poland Ekstraklasa'
SELECT home_team_goal, away_team_goal FROM Match WHERE date LIKE '2008-09-24%' AND league_id = (SELECT id FROM League WHERE name = 'Belgian Jupiler League') 
SELECT sprint_speed, agility, acceleration FROM Player_Attributes WHERE player_api_id = ( SELECT player_api_id FROM Player WHERE player_name = 'Alexis Blin' )
SELECT T1.buildUpPlaySpeedClass FROM Team_Attributes AS T1 INNER JOIN Team AS T2 WHERE T2.team_long_name = 'KSV Cercle Brugge' AND T1.team_api_id = T2.team_api_id 
SELECT COUNT(id) FROM Match WHERE season = '2015/2016' AND league_id = ( SELECT id FROM League WHERE name = 'Italian Serie A' )
SELECT MAX(home_team_goal) AS HighestScore FROM Match m JOIN League l ON m.league_id = l.id JOIN Country c ON l.country_id = c.id WHERE c.name = 'Netherlands' AND l.name = 'Eredivisie'
SELECT T2.`finishing`, T2.`curve` FROM `Player` AS T1 INNER JOIN `Player_Attributes` AS T2 ON T1.`player_api_id` = T2.`player_api_id` ORDER BY T1.`weight` DESC LIMIT 1 
SELECT T2.name FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T1.season = '2015/2016' GROUP BY T1.league_id ORDER BY COUNT(T1.id) DESC LIMIT 1
SELECT T1.team_long_name FROM Team AS T1 INNER JOIN Match AS T2 ON T1.team_api_id = T2.away_team_api_id ORDER BY T2.away_team_goal DESC LIMIT 1
SELECT player_name FROM Player WHERE player_api_id = ( SELECT player_api_id FROM Player_Attributes ORDER BY overall_rating DESC LIMIT 1)
SELECT CAST(COUNT(CASE WHEN T1.height < 180 AND T2.strength > 70 THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(T1.id) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id 
SELECT COUNT(CASE WHEN Admission = '+' THEN 1 ELSE NULL END) AS Inpatient, COUNT(CASE WHEN Admission = '-' THEN 1 ELSE NULL END) AS Outpatient FROM Patient WHERE SEX = 'M' 
SELECT CAST(SUM(CASE WHEN strftime('%Y', Birthday) > '1930' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(ID) AS percent FROM Patient WHERE SEX = 'F'
SELECT (CAST((SELECT COUNT(ID) FROM Patient WHERE strftime('%Y', Birthday) BETWEEN '1930' AND '1940' AND Admission = '+') AS REAL) / CAST((SELECT COUNT(ID) FROM Patient WHERE strftime('%Y', Birthday) BETWEEN '1930' AND '1940') AS REAL)) * 100 AS Inpatient_Percentage
SELECT CAST(SUM(CASE WHEN Admission = '+' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN Admission = '-' THEN 1 ELSE 0 END) FROM Patient WHERE Diagnosis = 'SLE'
SELECT T2.Diagnosis, T1.Date FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.ID = '30609'
SELECT T1.SEX, T1.Birthday, T2.`Examination Date`, T2.Symptoms FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.ID = '163109'
SELECT DISTINCT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.LDH > 500
SELECT ID, STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', Birthday) AS Age FROM Patient WHERE ID IN (SELECT ID FROM Examination WHERE RVVT = '+')
SELECT T1.ID, T1.SEX, T1.Diagnosis FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Thrombosis = 2
SELECT P.ID, P.SEX, P.Birthday, P.Diagnosis FROM Patient P INNER JOIN Laboratory L ON P.ID = L.ID WHERE YEAR(P.Birthday) = 1937 AND L.`T-CHO` >= 250
SELECT T1.ID, T1.SEX, T1.Diagnosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.ALB < 3.5
SELECT CAST(SUM(CASE WHEN T2.sex = 'F' AND (T1.TP < 6.0 OR T1.TP > 8.5) THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.ID) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID
SELECT AVG(T1.`aCL IgG`) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.Admission = '+' AND strftime('%Y', 'now') - strftime('%Y', T2.Birthday) >= 50
SELECT COUNT(T1.ID) FROM Patient AS T1 WHERE STRFTIME('%Y', T1.Description) = '1997' AND T1.Admission = '-' AND T1.SEX = 'F'
SELECT MIN(STRFTIME('%Y', `First Date`) - STRFTIME('%Y', Birthday)) AS Age FROM Patient
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE strftime('%Y', T2.`Examination Date`) = '1997' AND T1.SEX = 'F' AND T2.Thrombosis = 1
SELECT MAX(STRFTIME('%Y', Birthday)) - MIN(STRFTIME('%Y', Birthday)) AS AgeGap FROM Patient WHERE ID IN (SELECT ID FROM Laboratory WHERE TG >= 200)
SELECT T1.Symptoms, T1.Diagnosis FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID ORDER BY T2.Birthday DESC LIMIT 1
SELECT CAST(COUNT(L.ID) AS REAL) / 12 FROM Laboratory AS L INNER JOIN Patient AS P ON P.ID = L.ID WHERE L.Date BETWEEN '1998-01-01' AND '1998-12-31' AND P.SEX = 'M'
SELECT MAX(T2.Date), STRFTIME('%Y', T1.`First Date`) - STRFTIME('%Y', T1.Birthday) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'SJS' ORDER BY T1.Birthday DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN L.UA <= 8.0 AND P.SEX = 'M' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN L.UA <= 6.5 AND P.SEX = 'F' THEN 1 ELSE 0 END) FROM Patient P INNER JOIN Laboratory L ON P.ID = L.ID
SELECT COUNT(T1.ID) FROM Patient AS T1 LEFT JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.`Examination Date` IS NULL OR (julianday(T2.`Examination Date`) - julianday(T1.`First Date`)) / 365 >= 1
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE (julianday(T2.`Examination Date`) - julianday(T1.Birthday)) / 365 < 18 AND T2.`Examination Date` BETWEEN '1990-01-01' AND '1993-12-31';
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.`T-BIL` > 2.0
SELECT Diagnosis FROM Examination WHERE `Examination Date` BETWEEN '1985-01-01' AND '1995-12-31' GROUP BY Diagnosis ORDER BY COUNT(Diagnosis) DESC LIMIT 1
SELECT AVG(strftime('%Y', '1991-10-01') - strftime('%Y', T2.Birthday)) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.Date BETWEEN '1991-10-01' AND '1991-10-31'
SELECT STRFTIME('%Y', T1.`Examination Date`) - STRFTIME('%Y', T2.Birthday) AS Age, T1.Diagnosis FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T1.ID = T3.ID WHERE T3.HGB = (SELECT MAX(HGB) FROM Laboratory)
SELECT ANA FROM Examination WHERE ID = 3605340 AND `Examination Date` = '1996-12-02'
SELECT CASE WHEN `T-CHO` < 250 THEN 'Normal' ELSE 'Above Normal' END AS Cholesterol_Status FROM Laboratory WHERE ID = 2927464 AND Date = '1995-9-4'
SELECT T1.SEX FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = 'AORTITIS' ORDER BY T2.`Examination Date` LIMIT 1
SELECT T2.`aCL IgG`, T2.`aCL IgM`, T2.`aCL IgA` FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'SLE' AND T1.Description = '1994-02-19' AND T2.`Examination Date` = '1993-11-12'
SELECT T1.SEX FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.Date = '1992-06-12' AND T2.GPT = 9
SELECT '1991' - strftime('%Y', Birthday) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.UA = '8.4' AND T2.Date = '1991-10-21'
SELECT COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.`First Date` = '1991-06-13' AND T1.Diagnosis = 'SJS' AND STRFTIME('%Y', T2.Date) = '1995'
SELECT T1.Diagnosis FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.`Examination Date` = '1997-01-27' AND T1.Diagnosis = 'SLE' AND T2.`First Date` = (SELECT MIN(`First Date`) FROM Patient WHERE ID = T2.ID)
SELECT Symptoms FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.Birthday = '1959-03-01' AND T1.`Examination Date` = '1993-09-27'
SELECT (CAST((SUM(CASE WHEN strftime('%Y-%m', T2.Date) = '1981-11' THEN T2.`T-CHO` ELSE 0 END) - SUM(CASE WHEN strftime('%Y-%m', T2.Date) = '1981-12' THEN T2.`T-CHO` ELSE 0 END)) AS REAL) * 100) / SUM(CASE WHEN strftime('%Y-%m', T2.Date) = '1981-11' THEN T2.`T-CHO` ELSE 0 END) AS 'Decrease Rate' FROM Patient T1 INNER JOIN Laboratory T2 ON T1.ID = T2.ID WHERE T1.Birthday = '1959-02-18'
SELECT T1.ID FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'Behcet' AND STRFTIME('%Y', T2.`Examination Date`) BETWEEN '1997' AND '1997'
SELECT DISTINCT T1.ID FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T1.ID = T3.ID WHERE T3.Date BETWEEN '1987-07-06' AND '1996-01-31' AND T3.GPT > 30 AND T3.ALB < 4
SELECT ID FROM Patient WHERE SEX = 'F' AND STRFTIME('%Y', Birthday) = '1964' AND Admission = '+'
SELECT COUNT(DISTINCT T1.ID) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.Thrombosis = 2 AND T1.`ANA Pattern` = 'S' AND T1.`aCL IgM` > ( SELECT AVG(`aCL IgM`) * 1.2 FROM Examination )
SELECT CAST(SUM(CASE WHEN UA <= 6.5 THEN 1 ELSE 0 END) AS REAL) * 100 / (SELECT COUNT(*) FROM Laboratory WHERE `U-PRO` > 0 AND `U-PRO` < 30) FROM Laboratory WHERE `U-PRO` > 0 AND `U-PRO` < 30
SELECT CAST(SUM(CASE WHEN T1.Diagnosis = 'BEHCET' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.ID) FROM Patient AS T1 WHERE T1.SEX = 'M' AND STRFTIME('%Y', T1.`First Date`) = '1981'
SELECT DISTINCT T1.ID, T1.SEX, T1.Birthday, T1.Description, T1.`First Date`, T1.Admission, T1.Diagnosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Admission = '-' AND strftime('%Y-%m', T2.Date) = '1991-10' AND T2.`T-BIL` < 2.0
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.`ANA Pattern` != 'P' AND T1.SEX = 'F' AND YEAR(T1.Birthday) BETWEEN 1980 AND 1989
SELECT T2.SEX FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T2.ID = T3.ID WHERE T1.Diagnosis = 'PSS' AND T3.CRP > 2 AND T3.CRE = 1 AND T3.LDH = 123
SELECT AVG(T2.ALB) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T2.PLT > 400 AND T1.Diagnosis = 'SLE'
SELECT Symptoms FROM Examination WHERE Diagnosis = 'SLE' GROUP BY Symptoms ORDER BY COUNT(*) DESC LIMIT 1 
SELECT Description, Diagnosis FROM Patient WHERE ID = 48473 
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T2.Diagnosis = 'APS'
SELECT COUNT(DISTINCT T2.ID) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE STRFTIME('%Y', T1.`Date`) = '1997' AND (T1.TP < 6 OR T1.TP > 8.5)
SELECT CAST(SUM(CASE WHEN E.Diagnosis LIKE '%ITP%' THEN 1 ELSE 0 END) AS REAL) * 100 / CAST(SUM(CASE WHEN E.Diagnosis LIKE '%SLE%' THEN 1 ELSE 0 END) AS REAL) FROM Examination AS E INNER JOIN Patient AS P ON E.ID = P.ID WHERE E.Symptoms LIKE '%thrombocytopenia%'
SELECT CAST(SUM(CASE WHEN SEX = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(ID) AS percentage FROM Patient WHERE STRFTIME('%Y', Birthday) = '1980' AND Diagnosis = 'RA'
SELECT COUNT(DISTINCT T1.ID) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.`Examination Date` BETWEEN '1995-01-01' AND '1997-12-31' AND T2.SEX = 'M' AND T1.Diagnosis = 'BEHCET' AND T2.Admission = '-'
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T2.WBC < 3.5
SELECT (DATE(`Examination Date`) - DATE(`First Date`)) AS days_difference FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.ID = 821298 LIMIT 1
SELECT CASE WHEN T1.SEX = 'M' AND T2.UA > 8.0 THEN 'Yes' WHEN T1.SEX = 'F' AND T2.UA > 6.5 THEN 'Yes' ELSE 'No' END AS 'Is Within Normal Uric Acid Range' FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.ID = 57266
SELECT `Date` FROM Laboratory WHERE ID = 48473 AND GOT >= 60
SELECT DISTINCT T2.ID, T2.SEX, T2.Birthday FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE STRFTIME('%Y', T1.Date) = '1994' AND T1.GOT < 60
SELECT DISTINCT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.GPT >= 60
SELECT T2.Diagnosis FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.GPT > 60 ORDER BY T2.Birthday ASC
SELECT AVG(LDH) FROM Laboratory WHERE LDH < 500
SELECT T1.ID, YEAR(CURRENT_TIMESTAMP)-YEAR(T1.Birthday) as age FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.LDH >= 600 AND T2.LDH <= 800
SELECT T1.Admission FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.ALP < 300
SELECT T1.ID, CASE WHEN T2.ALP < 300 THEN 'Yes' ELSE 'No' END AS ALP_normal_range FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthday = '1982-04-01'
SELECT DISTINCT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TP < 6.0
SELECT T1.ID, T2.TP - 8.5 AS TP_Deviation FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T2.TP > 8.5
SELECT T1.ID, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND (T2.ALB < 3.5 OR T2.ALB > 5.5) ORDER BY T1.Birthday DESC
SELECT T1.ID, CASE WHEN T2.ALB BETWEEN 3.5 AND 5.5 THEN 'Normal' ELSE 'Abnormal' END AS Albumin_levels FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE strftime('%Y', Birthday) = '1982'
SELECT (SELECT COUNT(T2.ID) FROM Laboratory as T1 INNER JOIN Patient as T2 ON T1.ID = T2.ID WHERE UA > 6.5 AND T2.SEX = 'F') / (SELECT COUNT(T1.ID) FROM Patient as T1 WHERE SEX = 'F') * 100 AS percentage_female_patient_ua_above_normal
SELECT AVG(UA) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE (T2.SEX = 'M' AND T1.UA < 8.0) OR (T2.SEX = 'F' AND T1.UA < 6.5) ORDER BY T1.Date DESC LIMIT 1
SELECT DISTINCT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.UN = 29
SELECT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'RA' AND T2.UN < 30
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.CRE >= 1.5
SELECT CASE WHEN (SUM(CASE WHEN Laboratory.CRE >= 1.5 AND Patient.SEX = 'M' THEN 1 ELSE 0 END) - SUM(CASE WHEN Laboratory.CRE >= 1.5 AND Patient.SEX = 'F' THEN 1 ELSE 0 END)) > 0 THEN 'True' ELSE 'False' END AS result FROM Laboratory INNER JOIN Patient ON Laboratory.ID = Patient.ID
SELECT P.ID, P.SEX, P.Birthday FROM Patient AS P INNER JOIN Laboratory AS L ON P.ID = L.ID WHERE L.`T-BIL` = ( SELECT MAX(`T-BIL`) FROM Laboratory )
SELECT T2.SEX, COUNT(*) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.`T-BIL` >= 2.0 GROUP BY T2.SEX
SELECT T1.ID, T2.`T-CHO` FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID ORDER BY T1.Birthday, T2.`T-CHO` DESC LIMIT 1
SELECT CAST(SUM(strftime('%Y', 'now') - strftime('%Y', T1.Birthday)) AS REAL) / COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.`T-CHO` >= 250
SELECT T1.ID, T1.Diagnosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TG > 300
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TG >= 200 AND STRFTIME('%Y', DATE('now')) - STRFTIME('%Y', T1.Birthday) > 50
SELECT DISTINCT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Admission = '-' AND T2.CPK < 250
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE strftime('%Y', T1.Birthday) BETWEEN '1936' AND '1956' AND T1.SEX = 'M' AND T2.CPK >= 250
SELECT T2.ID, T2.SEX, strftime('%Y', date('now')) - strftime('%Y', T2.Birthday) AS AGE FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.GLU >= 180 AND T1.`T-CHO` < 250
SELECT T1.ID, T2.GLU FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GLU < 180 AND STRFTIME('%Y', T1.Description) >= '1991'
SELECT P.ID, P.SEX, P.Birthday FROM Patient AS P INNER JOIN Laboratory AS L ON P.ID = L.ID WHERE L.WBC <= 3.5 OR L.WBC >= 9.0 GROUP BY P.SEX, P.ID ORDER BY P.Birthday ASC
SELECT T1.ID, T1.Diagnosis, STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T1.Birthday) AS age FROM Patient T1 INNER JOIN Laboratory T2 ON T1.ID = T2.ID WHERE T2.RBC < 3.5 
SELECT Patient.ID, Patient.SEX, julianday('now') - julianday(Patient.Birthday) as Age, Laboratory.RBC, CASE WHEN Patient.Admission = '+' THEN 'Yes' ELSE 'No' END AS 'Admitted to Hospital' FROM Patient INNER JOIN Laboratory ON Patient.ID = Laboratory.ID WHERE Patient.SEX = 'F' AND (julianday('now') - julianday(Patient.Birthday)) / 365 >= 50 AND (Laboratory.RBC <= 3.5 OR Laboratory.RBC >= 6.0)
SELECT T1.ID, T1.SEX FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Admission = '-' AND T2.HGB < 10
SELECT T1.ID, T1.SEX FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'SLE' AND T2.HGB BETWEEN 10 AND 17 ORDER BY T1.Birthday ASC LIMIT 1
SELECT Patient.ID, YEAR(CURRENT_TIMESTAMP) - YEAR(Patient.Birthday) as age FROM Patient INNER JOIN Laboratory ON Patient.ID = Laboratory.ID WHERE HCT >= 52 GROUP BY Patient.ID HAVING COUNT(Laboratory.Date) >= 2
SELECT AVG(HCT) FROM Laboratory WHERE Date LIKE '1991%' AND HCT < 29
SELECT (SELECT COUNT(*) FROM Laboratory WHERE PLT < 100) AS 'Lower than Normal', (SELECT COUNT(*) FROM Laboratory WHERE PLT > 400) AS 'Higher than Normal', (SELECT COUNT(*) FROM Laboratory WHERE PLT < 100) - (SELECT COUNT(*) FROM Laboratory WHERE PLT > 400) AS 'Difference' FROM Laboratory WHERE PLT < 100 OR PLT > 400
SELECT T1.ID, SUBSTR(CURRENT_TIMESTAMP, 1, 4) - SUBSTR(T1.Birthday, 1, 4) as Age, T2.PLT FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE SUBSTR(T2.Date, 1, 4) = '1984' AND SUBSTR(CURRENT_TIMESTAMP, 1, 4) - SUBSTR(T1.Birthday, 1, 4) < 50 AND T2.PLT BETWEEN 100 AND 400;
SELECT CAST(SUM(CASE WHEN T2.SEX = 'F' AND T1.PT >= 14 THEN 1 ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN T1.PT >= 14 THEN 1 ELSE 0 END) AS percentage FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE (strftime('%Y', 'now') - strftime('%Y', T2.Birthday)) > 55
SELECT T1.ID, T1.SEX, T1.Birthday, T2.PT FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE STRFTIME('%Y', T1.`First Date`) > '1992' AND T2.PT < 14
SELECT COUNT(ID) FROM Examination WHERE `Examination Date` > '1997-01-01' AND APTT < 45
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T1.ID = T3.ID WHERE T3.APTT > 45 AND T2.Thrombosis = 3
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND (T2.WBC BETWEEN 3.5 AND 9.0) AND (T2.FG <= 150 OR T2.FG >= 450)
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthday > '1980-01-01' AND (T2.FG < 150 OR T2.FG > 450)
SELECT T2.Diagnosis FROM laboratory AS T1 INNER JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.`U-PRO` >= 30
SELECT P.ID FROM Patient P INNER JOIN Examination E ON P.ID = E.ID INNER JOIN Laboratory L ON P.ID = L.ID WHERE L.`U-PRO` BETWEEN 0 AND 30 AND E.Diagnosis = 'SLE'
SELECT COUNT(DISTINCT T2.ID) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T2.ID = T3.ID WHERE T3.IGG < 900 AND T1.Symptoms = 'abortion'
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T1.ID = T3.ID WHERE T3.IGG BETWEEN 900 AND 2000 AND T2.Symptoms IS NOT NULL
SELECT P.Diagnosis FROM Patient AS P INNER JOIN Laboratory AS L ON P.ID = L.ID WHERE L.IGA BETWEEN 80 AND 500 ORDER BY L.IGA DESC LIMIT 1
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGA BETWEEN 80 AND 500 AND DATE(T1.`First Date`) >= DATE('1990-01-01')
SELECT T2.Diagnosis FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.IGM NOT BETWEEN 40 AND 400 GROUP BY T2.Diagnosis ORDER BY COUNT(T2.Diagnosis) DESC LIMIT 1
SELECT COUNT(DISTINCT P.ID) FROM Patient AS P JOIN Laboratory AS L ON P.ID = L.ID WHERE (L.CRP LIKE '+' OR L.CRP LIKE '-' OR L.CRP < 1.0) AND P.Description IS NULL
SELECT COUNT(DISTINCT Patient.ID) FROM Laboratory INNER JOIN Patient ON Laboratory.ID = Patient.ID WHERE CRP NOT IN('+-', '-') AND CRP >= 1.0 AND (YEAR(CURDATE()) - YEAR(Patient.Birthday)) < 18
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID=T2.ID INNER JOIN Examination AS T3 ON T1.ID=T3.ID WHERE T2.RA IN('-', '+-') AND T3.KCT = '+'
SELECT T1.Diagnosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE YEAR(T1.Birthday) >= 1995 AND T2.RA IN ('-', '+-')
SELECT P.ID FROM Patient P INNER JOIN Laboratory L ON P.ID = L.ID WHERE L.RF < 20 AND (STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', P.Birthday)) > 60
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T1.ID = T3.ID WHERE T2.Thrombosis = 0 AND T3.RF < 20
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T1.ID = T3.ID WHERE T2.C3 > 35 AND T3.`ANA Pattern` = 'P'
SELECT T1.ID FROM Examination AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE (T2.HCT < 29 OR T2.HCT > 52) ORDER BY T1.`aCL IgA` DESC LIMIT 1
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'APS' AND T2.C4 > 10
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE (T2.RNP = '-' OR T2.RNP = '+-') AND T1.Admission = '+';
SELECT T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RNP NOT IN('-', '+-') ORDER BY T1.Birthday DESC LIMIT 1
SELECT COUNT(T1.ID) as Patient_With_Severe_Thrombosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T1.ID = T3.ID WHERE T2.SM IN('-', '+-') AND T3.Thrombosis = 1
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.SM NOT IN('-', '+-') ORDER BY T1.Birthday DESC LIMIT 3
SELECT T1.ID FROM Examination AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.`Examination Date` >= '1997-01-01' AND T2.SC170 IN('-', '+-')
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T1.ID = T3.ID WHERE T1.SEX = 'M' AND T2.Symptoms = 'vertigo' AND T3.SC170 IN('-', '+-')
SELECT COUNT(DISTINCT Patient.ID) FROM Patient INNER JOIN Laboratory ON Patient.ID = Laboratory.ID WHERE SSA IN('-', '+-') AND strftime('%Y', `First Date`) < '1990'
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.SSA NOT IN('-', '+-') ORDER BY T1.`First Date` ASC LIMIT 1
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T1.ID = T3.ID WHERE T3.SSB IN ('negative', '0') AND T2.Diagnosis = 'SLE'
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T1.ID = T3.ID WHERE T3.SSB IN('-', '+-') AND T2.Symptoms IS NOT NULL
SELECT COUNT(*) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.CENTROMEA IN('-', '+-') AND T2.SSB IN('-', '+-')
SELECT DISTINCT T1.Diagnosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.DNA >= 8
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.DNA < 8 AND T1.Description IS NULL
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.`DNA-II` >= 8 AND T1.Admission = '+'
SELECT CAST(SUM(CASE WHEN T2.GOT >= 60 AND T1.Diagnosis = 'SLE' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GOT >= 60
SELECT COUNT(DISTINCT T2.ID) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.Sex = 'M' AND T1.GOT < 60
SELECT MAX(Birthday) FROM Patient WHERE ID IN ( SELECT ID FROM Laboratory WHERE GOT >= 60 )
SELECT T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GPT < 60 ORDER BY T2.GPT DESC LIMIT 3
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GOT < 60 AND T1.SEX = 'M'
SELECT `First Date` FROM Patient WHERE ID = ( SELECT ID FROM Laboratory WHERE LDH < 500 ORDER BY LDH DESC LIMIT 1 ) ORDER BY `First Date` ASC LIMIT 1 
SELECT ID, `First Date` FROM Patient WHERE ID IN ( SELECT ID FROM Laboratory WHERE LDH >= 500 ) AND `First Date` = ( SELECT MAX(`First Date`) FROM Patient WHERE ID IN ( SELECT ID FROM Laboratory WHERE LDH >= 500 ))
SELECT COUNT(T1.ID) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID=T2.ID WHERE T1.ALP>=300 AND T2.Admission = '+'
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Admission = '-' AND T2.ALP < 300
SELECT T1.Diagnosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TP < 6.0
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'SJS' AND T2.TP > 6.0 AND T2.TP < 8.5
SELECT E.`Examination Date` FROM Examination AS E INNER JOIN Laboratory AS L ON E.ID = L.ID WHERE L.ALB BETWEEN 3.5 AND 5.5 ORDER BY L.ALB DESC LIMIT 1
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.ALB >= 3.5 AND T2.ALB <= 5.5 AND T2.TP >= 6.0 AND T2.TP <= 8.5
SELECT T2.`aCL IgG`, T2.`aCL IgM`, T2.`aCL IgA` FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.UA <= 7.0 AND T1.UA >= 3.5 AND (SELECT SEX FROM Patient WHERE ID = T1.ID) = 'F' ORDER BY T1.UA DESC LIMIT 1
SELECT MAX(T1.ANA) FROM Examination AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.CRE < 1.5
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T1.ID = T3.ID WHERE T2.CRE < 1.5 ORDER BY T3.`aCL IgA` DESC LIMIT 1
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T1.ID = T3.ID WHERE T2.`ANA Pattern` LIKE '%P%' AND T3.`T-BIL` >= 2.0
SELECT T1.ANA FROM Examination AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.`T-BIL` = ( SELECT MAX(`T-BIL`) FROM Laboratory WHERE `T-BIL` < 2.0 ) LIMIT 1
SELECT COUNT(DISTINCT P.ID) FROM Patient AS P INNER JOIN Laboratory AS L ON P.ID = L.ID INNER JOIN Examination AS E ON P.ID = E.ID WHERE L.`T-CHO` >= 250 AND E.KCT = '-'
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T1.ID = T3.ID WHERE T2.`T-CHO` < 250 AND T3.`ANA Pattern` = 'P'
SELECT COUNT(DISTINCT P.ID) FROM Patient AS P INNER JOIN Examination AS E ON P.ID = E.ID INNER JOIN Laboratory AS L ON P.ID = L.ID WHERE L.TG < 200 AND E.Symptoms IS NOT NULL
SELECT T2.Diagnosis FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.TG < 200 ORDER BY T1.TG DESC LIMIT 1
SELECT T1.ID FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T1.ID = T3.ID WHERE T2.Thrombosis = 0 AND T3.CPK < 250
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T1.ID = T3.ID WHERE T2.CPK < 250 AND (T3.KCT = '+' OR T3.RVVT = '+' OR T3.LAC = '+')
SELECT T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GLU > 180 ORDER BY T1.Birthday ASC LIMIT 1
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T1.ID = T3.ID WHERE T2.GLU < 180 AND T3.Thrombosis = 0
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Admission = '+' AND T2.WBC BETWEEN 3.5 AND 9.0
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'SLE' AND T2.WBC BETWEEN 3.5 AND 9.0
SELECT DISTINCT Laboratory.ID FROM Laboratory INNER JOIN Patient ON Laboratory.ID = Patient.ID WHERE (Laboratory.RBC <= 3.5 OR Laboratory.RBC >= 6.0) AND Patient.Admission = '-'
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.PLT > 100 AND T2.PLT < 400 AND T1.Diagnosis IS NOT NULL
SELECT T1.ID, T2.PLT FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'MCTD' AND T2.PLT BETWEEN 100 AND 400
SELECT AVG(T1.PT) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.SEX = 'M' AND T1.PT < 14
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T1.ID = T3.ID WHERE T2.Thrombosis IN (1, 2) AND T3.PT < 14
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Angela' AND T1.last_name = 'Sanders'
SELECT COUNT(m.member_id) AS "Number of Engineering Students in Club" FROM member AS m INNER JOIN major AS mj ON m.link_to_major = mj.major_id WHERE mj.college = 'College of Engineering'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.department = 'Art and Design'
SELECT COUNT(*) FROM attendance INNER JOIN event ON attendance.link_to_event = event.event_id WHERE event.event_name = "Women's Soccer" 
SELECT T2.phone FROM attendance AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id INNER JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'Women''s Soccer'
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T1.t_shirt_size = 'Medium' AND T3.event_name = "Women's Soccer"
SELECT T1.event_name FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event GROUP BY T1.event_id ORDER BY COUNT(T2.link_to_member) DESC LIMIT 1 
SELECT T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = 'Vice President'
SELECT T2.event_name FROM attendance AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id INNER JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T3.first_name = 'Maya' AND T3.last_name = 'Mclean'
SELECT COUNT(*) FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event INNER JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.first_name = 'Sacha' AND T3.last_name = 'Harrison' AND STRFTIME('%Y', T1.event_date) = '2019' AND T1.type = 'Student_Club'
SELECT COUNT(*) FROM ( SELECT T1.event_id FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event GROUP BY T1.event_id HAVING COUNT(T2.link_to_member) > 10 AND T1.type = 'Meeting' ) T3
SELECT T1.event_name FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event GROUP BY T1.event_id HAVING COUNT(T2.link_to_member) > 20
SELECT CAST(COUNT(DISTINCT T1.event_id) AS REAL) / COUNT(DISTINCT T1.event_name) FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.type = 'Meeting' AND strftime('%Y', T1.event_date) = '2020'
SELECT expense_description FROM expense WHERE cost = ( SELECT MAX(cost) FROM expense )
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Environmental Engineering'
SELECT T3.first_name, T3.last_name FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event INNER JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T1.event_name = 'Laugh Out Loud'
SELECT last_name FROM member WHERE link_to_major IN ( SELECT major_id FROM major WHERE major_name = 'Law and Constitutional Studies' )
SELECT county FROM zip_code WHERE zip_code = ( SELECT zip FROM member WHERE first_name = 'Sherri' AND last_name = 'Ramsey' )
SELECT T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Tyler' AND T1.last_name = 'Hewitt'
SELECT SUM(T1.amount) FROM income AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.position = 'Vice President' 
SELECT B.spent FROM budget AS B INNER JOIN event AS E ON B.link_to_event = E.event_id WHERE B.category = 'Food' AND E.event_name = 'September Meeting'
SELECT T2.city, T2.state FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.position = 'President'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = 'Illinois'
SELECT T2.spent FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'September Meeting' AND T2.category = 'Advertisement'
SELECT DISTINCT T1.department FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE (T2.first_name = 'Pierce' AND T2.last_name = 'Guidi') 
SELECT SUM(T2.amount) FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'October Speaker'
SELECT T2.expense_description, T2.approved FROM event AS T1 INNER JOIN expense AS T2 ON T1.event_id = T2.link_to_budget WHERE T1.event_name = 'October Meeting' AND T1.event_date = '2019-10-08'
SELECT AVG(T3.cost) AS "Average Cost" FROM member AS T1 INNER JOIN expense AS T3 ON T1.member_id = T3.link_to_member WHERE T1.first_name = 'Elijah' AND T1.last_name = 'Allen' AND strftime('%m', T3.expense_date) IN ('09', '10')
SELECT (SELECT SUM(budget.spent) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE strftime('%Y', event.event_date) = '2019') - (SELECT SUM(budget.spent) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE strftime('%Y', event.event_date) = '2020')
SELECT location FROM event WHERE event_name = 'Spring Budget Review' 
SELECT T1.cost FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'Posters' AND T2.event_date = '2019-09-04'
SELECT remaining FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1 
SELECT notes FROM income WHERE source = 'Fundraising' AND date_received = '2019-09-14'
SELECT COUNT(major_id) FROM major WHERE college = 'College of Humanities and Social Sciences' 
SELECT phone FROM member WHERE first_name = 'Carlo' AND last_name = 'Jacobs'
SELECT T2.county FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Adela' AND T1.last_name = 'O''Gallagher'
SELECT COUNT(T1.budget_id) FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'November Meeting' AND T1.remaining < 0;
SELECT SUM(amount) FROM budget WHERE link_to_event IN ( SELECT event_id FROM event WHERE event_name = 'September Speaker' )
SELECT T3.status FROM expense AS T1 INNER JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T1.expense_description = 'Post Cards, Posters' AND T1.expense_date = '2019-8-20'
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Brent' AND T1.last_name = 'Thomason'
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Human Development and Family Studies' AND T1.t_shirt_size = 'Large'
SELECT T2.type FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Christof' AND T1.last_name = 'Nielson'
SELECT major.major_name FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE member.position = 'Vice President'
SELECT T2.state FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Sacha' AND T1.last_name = 'Harrison'
SELECT T1.department FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'President'
SELECT T1.date_received FROM income AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = 'Connor' AND T2.last_name = 'Hilton' AND T1.source = 'Dues' 
SELECT T2.first_name, T2.last_name FROM income AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.source = 'Dues' ORDER BY T1.date_received ASC LIMIT 1 
SELECT CAST(SUM(CASE WHEN T1.category = 'Advertisement' AND T2.event_name = 'Yearly Kickoff' THEN T1.amount ELSE 0 END) AS REAL) / SUM(CASE WHEN T1.category = 'Advertisement' AND T2.event_name = 'October Meeting' THEN T1.amount ELSE 0 END) FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id
SELECT CAST(SUM(CASE WHEN T1.category = 'Parking' THEN T1.amount ELSE 0 END) AS REAL) * 100 / SUM(T1.amount) FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'November Speaker'
SELECT SUM(cost) FROM expense WHERE expense_description = 'Pizza'
SELECT COUNT(DISTINCT city) FROM zip_code WHERE county = 'Orange County' AND state = 'Virginia'
SELECT department FROM major WHERE college = 'College of Humanities and Social Sciences'
SELECT T2.city, T2.county, T2.state FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Amy' AND T1.last_name = 'Firth' 
SELECT E1.expense_description FROM budget AS B1 INNER JOIN expense AS E1 ON B1.budget_id = E1.link_to_budget ORDER BY B1.remaining LIMIT 1
SELECT T2.first_name, T2.last_name FROM event AS T1 INNER JOIN attendance AS T3 ON T1.event_id = T3.link_to_event INNER JOIN member AS T2 ON T3.link_to_member = T2.member_id WHERE T1.event_name = 'October Meeting'
SELECT T.college FROM ( SELECT T2.college, COUNT(T2.major_id) AS num FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id GROUP BY T2.college ) T ORDER BY T.num DESC LIMIT 1
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.phone = '809-555-3360'
SELECT T1.event_name FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.amount DESC LIMIT 1
SELECT expense.expense_description FROM expense INNER JOIN member ON expense.link_to_member = member.member_id WHERE member.position = 'Vice President' 
SELECT COUNT(T2.link_to_member) FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = "Women's Soccer" 
SELECT T1.date_received FROM income AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = 'Casey' AND T2.last_name = 'Mason'
SELECT COUNT(DISTINCT T1.member_id) FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = 'Maryland'
SELECT COUNT(link_to_event) FROM attendance WHERE link_to_member = ( SELECT member_id FROM member WHERE phone = '954-555-6240' )
SELECT T2.first_name, T2.last_name FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = 'School of Applied Sciences, Technology and Education'
SELECT T1.event_name FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.status = 'Closed' ORDER BY (T2.spent / T2.amount) DESC LIMIT 1 
SELECT COUNT(first_name) FROM member WHERE position = 'President'
SELECT T1.event_name FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.spent DESC LIMIT 1
SELECT COUNT(event_id) FROM event WHERE STRFTIME('%Y', event_date) = '2020' AND type = 'Meeting'
SELECT SUM(spent) FROM budget WHERE category = 'Food'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member GROUP BY T1.member_id HAVING COUNT(T2.link_to_event) > 7
SELECT T4.first_name, T4.last_name FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event INNER JOIN major AS T3 ON T4.link_to_major = T3.major_id INNER JOIN member AS T4 ON T2.link_to_member = T4.member_id WHERE T3.major_name = 'Interior Design' AND T1.event_name = 'Community Theater'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.city = 'Georgetown' AND T2.state = 'South Carolina'
SELECT SUM(T1.amount) FROM income AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = 'Grant' AND T2.last_name = 'Gilmour'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.amount > 40
SELECT SUM(cost) FROM expense AS E JOIN budget AS B ON E.link_to_budget = B.budget_id JOIN event AS V ON B.link_to_event = V.event_id WHERE V.event_name = 'Yearly Kickoff' 
SELECT T2.first_name, T2.last_name, T2.email FROM event AS T1 INNER JOIN member AS T2 ON T2.member_id = T1.event_id INNER JOIN budget AS T3 ON T3.link_to_event = T1.event_id WHERE T1.event_name = 'Yearly Kickoff'
SELECT T1.first_name, T1.last_name, T3.source FROM member AS T1 INNER JOIN income AS T3 ON T1.member_id = T3.link_to_member ORDER BY T3.amount DESC LIMIT 1 
SELECT T1.event_name FROM event AS T1 INNER JOIN expense AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.cost LIMIT 1
SELECT CAST(SUM(CASE WHEN E.event_name = 'Yearly Kickoff' THEN X.cost ELSE 0 END) AS REAL) * 100 / SUM(X.cost) AS 'Percentage' FROM ( SELECT I.expense_description, I.cost, E.event_name FROM expense AS I INNER JOIN budget AS B ON I.link_to_budget = B.budget_id INNER JOIN event AS E ON B.link_to_event = E.event_id ) AS X INNER JOIN event AS E ON E.event_name = X.event_name
SELECT CAST(SUM(CASE WHEN major_name = 'Finance' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN major_name = 'Physics' THEN 1 ELSE 0 END) FROM major 
SELECT source FROM income WHERE STRFTIME('%Y-%m', date_received) = '2019-09' GROUP BY source ORDER BY SUM(amount) DESC LIMIT 1 
SELECT first_name, last_name, email FROM member WHERE position = 'Secretary' 
SELECT COUNT(*) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Physics Teaching' 
SELECT COUNT(DISTINCT T1.link_to_member) FROM attendance AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'Community Theater' AND STRFTIME('%Y', T2.event_date) = '2019'
SELECT T4.major_name, COUNT(T1.link_to_event) FROM "attendance" AS T1 INNER JOIN "member" AS T2 ON T1.link_to_member = T2.member_id INNER JOIN "event" AS T3 ON T1.link_to_event = T3.event_id INNER JOIN "major" AS T4 ON T2.link_to_major = T4.major_id WHERE T2.first_name = 'Luisa' AND T2.last_name = 'Guidi'
SELECT AVG(spent) FROM budget WHERE category = 'Food' AND event_status = 'Closed'
SELECT T1.event_name FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = 'Advertisement' ORDER BY T2.spent DESC LIMIT 1
SELECT CASE WHEN EXISTS ( SELECT 1 FROM "attendance" AS T1 INNER JOIN "member" AS T2 ON T1.link_to_member = T2.member_id INNER JOIN "event" AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'Women's Soccer' AND T2.first_name = 'Maya' AND T2.last_name = 'Mclean' ) THEN 'Yes' ELSE 'No' END AS 'Did Maya Mclean attend the Women''s Soccer event?'
SELECT CAST(SUM(CASE WHEN type = 'Community Service' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(event_id) FROM event WHERE strftime('%Y', event_date) = '2019' 
SELECT E.cost FROM expense AS E INNER JOIN budget AS B ON E.link_to_budget = B.budget_id INNER JOIN event AS EV ON B.link_to_event = EV.event_id WHERE E.expense_description = 'Posters' AND EV.event_name = 'September Speaker';
SELECT t_shirt_size FROM member GROUP BY t_shirt_size ORDER BY COUNT(*) DESC LIMIT 1 
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.status = 'Closed' AND T2.remaining < 0 ORDER BY T2.remaining ASC LIMIT 1
SELECT T1.expense_description, SUM(T1.cost) FROM expense AS T1 INNER JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = 'October Meeting' AND T1.approved = 'TRUE' GROUP BY T1.expense_description
SELECT T2.category, T2.amount FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'April Speaker' ORDER BY T2.amount ASC
SELECT budget_id FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT budget_id FROM budget WHERE category = 'Advertising' ORDER BY amount DESC LIMIT 3 
SELECT SUM(cost) FROM expense WHERE expense_description = 'Parking'
SELECT SUM(cost) FROM expense WHERE expense_date = '2019-08-20'
SELECT T1.first_name, T1.last_name, SUM(T2.cost) FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.member_id = 'rec4BLdZHS2Blfp4v' GROUP BY T1.first_name, T1.last_name
SELECT DISTINCT T2.expense_description FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'Sacha' AND T1.last_name = 'Harrison'
SELECT T2.expense_description FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.t_shirt_size = 'X-Large'
SELECT T1.zip FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.cost < 50
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Phillip' AND T1.last_name = 'Cullen'
SELECT T1.position FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Business'
SELECT COUNT(T2.member_id) FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Business' AND T2.t_shirt_size = 'Medium'
SELECT DISTINCT T1.type FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.remaining > 30
SELECT DISTINCT type FROM event WHERE location = 'MU 215'
SELECT T1.type FROM event AS T1 WHERE T1.event_date = '2020-03-24T12:00:00'
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = 'Vice President'
SELECT CAST(SUM(CASE WHEN T1.major_name = 'Mathematics' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.member_id) "percentage" FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'Member'
SELECT type FROM event WHERE location = 'MU 215'
SELECT COUNT(*) FROM income WHERE amount = 50 
SELECT COUNT(member_id) FROM member WHERE position = 'Member' AND t_shirt_size = 'X-Large'
SELECT COUNT(major_id) FROM major WHERE department = 'School of Applied Sciences, Technology and Education' AND college = 'College of Agriculture and Applied Sciences' 
SELECT T1.last_name, T2.department, T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Environmental Engineering'
SELECT T1.category FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.location = 'MU 215' AND T2.type = 'Guest Speaker' AND T1.spent = 0
SELECT T2.city, T2.state FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code INNER JOIN major AS T3 ON T1.link_to_major = T3.major_id WHERE T3.department = 'Electrical and Computer Engineering' AND T1.position = 'Member'
SELECT E.event_name FROM event AS E INNER JOIN attendance AS A ON E.event_id = A.link_to_event INNER JOIN member AS M ON A.link_to_member = M.member_id WHERE E.type = 'Social' AND M.position = 'Vice President' AND E.location = '900 E. Washington St.'
SELECT T2.last_name, T2.position FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.expense_description = 'Pizza' AND T1.expense_date = '2019-09-10'
SELECT T2.last_name FROM attendance AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id INNER JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T2.position = 'Member' AND T3.event_name = 'Women''s Soccer'
SELECT CAST(SUM(CASE WHEN T2.amount = 50 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.member_id) FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T1.t_shirt_size = 'Medium' AND T1.position = 'Member'
SELECT DISTINCT country FROM country c INNER JOIN zip_code z ON c.zip_code = z.zip_code WHERE z.type='PO Box'
SELECT zip_code FROM zip_code WHERE type = 'PO Box' AND county = 'San Juan Municipio' AND state = 'Puerto Rico'
SELECT event_name FROM event WHERE type = 'Game' AND status = 'Closed' AND event_date BETWEEN '2019-03-15' AND '2020-03-20'
SELECT T2.link_to_event FROM expense AS T1 INNER JOIN attendance AS T2 ON T1.link_to_member = T2.link_to_member WHERE T1.cost > 50
SELECT T1.first_name, T1.last_name, T4.event_name FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member INNER JOIN attendance AS T3 ON T1.member_id = T3.link_to_member INNER JOIN event AS T4 ON T3.link_to_event = T4.event_id WHERE T2.approved = 'true' AND T2.expense_date BETWEEN '2019-01-10' AND '2019-11-19'
SELECT T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Katy' AND T1.link_to_major = 'rec1N0upiVLy5esTO'
SELECT T1.phone FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Business' AND T2.college = 'College of Agriculture and Applied Sciences'
SELECT T2.email FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.expense_date BETWEEN '2019-09-10' AND '2019-11-19' AND T1.cost > 20
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'education' AND T2.college = 'College of Education & Human Services' AND T1.position = 'Member'
SELECT CAST(SUM(CASE WHEN remaining < 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(event_id) FROM budget JOIN event ON budget.link_to_event = event.event_id
SELECT event_id, location, status FROM event WHERE event_date BETWEEN '2019-11-01' AND '2020-03-31'
SELECT expense_description FROM expense GROUP BY expense_description HAVING AVG(cost) > 50
SELECT first_name, last_name FROM member WHERE t_shirt_size = 'X-Large'
SELECT CAST(SUM(CASE WHEN type = 'PO Box' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(zip_code) FROM zip_code
SELECT T1.event_name, T1.location FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.remaining > 0
SELECT T1.event_name, T1.event_date FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event INNER JOIN expense AS T3 ON T2.budget_id = T3.link_to_budget WHERE T3.expense_description = 'Pizza' AND T3.cost > 50 AND T3.cost < 100
SELECT T2.first_name, T2.last_name, T3.major_name FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id INNER JOIN major AS T3 ON T2.link_to_major = T3.major_id WHERE T1.cost > 100
SELECT T1.location, T3.city, T3.state FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event INNER JOIN income AS T4 ON T2.link_to_member = T4.link_to_member INNER JOIN zip_code AS T3 ON T1.location = T3.zip_code GROUP BY T1.location, T3.city, T3.state HAVING COUNT(T4.income_id) > 40 
SELECT T.first_name, T.last_name FROM ( SELECT member.first_name, member.last_name, SUM(expense.cost) AS total_expense FROM expense INNER JOIN member ON expense.link_to_member = member.member_id INNER JOIN budget ON expense.link_to_budget = budget.budget_id GROUP BY member.first_name, member.last_name HAVING COUNT(DISTINCT budget.link_to_event) > 1 ) AS T ORDER BY T.total_expense DESC LIMIT 1 
SELECT AVG(T1.cost) FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.position != 'Member'
SELECT T1.event_name FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event INNER JOIN expense AS T3 ON T2.budget_id = T3.link_to_budget WHERE T2.category = 'Parking' AND T3.cost < ( SELECT AVG(T3.cost) FROM expense AS T3 INNER JOIN budget AS T4 ON T3.link_to_budget = T4.budget_id WHERE T4.category = 'Parking' )
SELECT CAST(SUM(T2.cost) AS REAL) * 100 / COUNT(T1.event_id) FROM event AS T1 INNER JOIN expense AS T2 on T1.event_id = T2.link_to_event WHERE T1.type = 'Game'
SELECT T2.category FROM expense AS T1 INNER JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_description = 'Water, chips, cookies' ORDER BY T1.cost DESC LIMIT 1 
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member GROUP BY T1.member_id, T1.first_name, T1.last_name ORDER BY SUM(T2.cost) DESC LIMIT 5
SELECT T2.first_name, T2.last_name, T2.phone FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.cost > ( SELECT AVG(cost) FROM expense )
SELECT ( SELECT CAST(COUNT(CASE WHEN state='MAINE' THEN member_id END) AS REAL) / COUNT(CASE WHEN position='Member' THEN member_id END) * 100 FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code ) - ( SELECT CAST(COUNT(CASE WHEN state='VERMONT' THEN member_id END) AS REAL) / COUNT(CASE WHEN position='Member' THEN member_id END) * 100 FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code ) AS DIFFERENCE_PERCENTAGE
SELECT T2.major_name, T2.department FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Garrett' AND T1.last_name = 'Gerke'
SELECT T1.first_name, T1.last_name, T2.cost FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.expense_description = 'Water, Veggie tray, supplies'
SELECT last_name, phone FROM member WHERE link_to_major IN ( SELECT major_id FROM major WHERE major_name = 'Elementary Education' )
SELECT T2.category, T2.amount FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'January Speaker'
SELECT T1.event_name FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = 'Food'
SELECT T1.first_name, T1.last_name, T2.amount FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.date_received = '2019-09-09'
SELECT T2.category FROM expense AS T1 INNER JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_description = 'Posters'
SELECT T1.first_name, T1.last_name, T3.college FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id INNER JOIN college AS T3 ON T2.college = T3.college_id WHERE T1.position = 'Secretary'
SELECT T1.event_name, SUM(T2.spent) FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = 'Speaker Gifts' GROUP BY T1.event_id, T1.event_name 
SELECT T2.city FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Garrett' AND T1.last_name = 'Girke'
SELECT T1.first_name, T1.last_name, T1.position FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.city = 'Lincolnton' AND T2.state = 'North Carolina' AND T2.zip_code = 28092
SELECT COUNT(GasStationID) FROM gasstations WHERE Country = 'CZE' AND Segment = 'Premium'
SELECT CAST(SUM(IIF(Currency = 'EUR', 1, 0)) AS REAL) / SUM(IIF(Currency = 'CZK', 1, 0)) FROM customers
SELECT T1.CustomerID, T2.Consumption FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date BETWEEN 201201 AND 201212 AND T1.Segment = 'LAM' ORDER BY T2.Consumption ASC LIMIT 1
SELECT AVG(Consumption) / 12 AS "Average Monthly Consumption in 2013" FROM yearmonth WHERE CustomerID IN (SELECT CustomerID FROM customers WHERE Segment = 'SME') AND (Date BETWEEN '201301' AND '201312')
SELECT T2.CustomerID, T2.Segment, SUM(T1.Consumption) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE STRFTIME('%Y', T1.Date) = '2011' AND T2.Currency = 'CZK' GROUP BY T2.CustomerID, T2.Segment ORDER BY SUM(T1.Consumption) DESC LIMIT 1
SELECT COUNT(T1.CustomerID) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Segment = 'KAM' AND T2.Consumption < 30000 AND (T2.Date BETWEEN '201201' AND '201212')
SELECT (SELECT SUM(T1.Consumption) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID AND T1.Date BETWEEN '201201' AND '201212' AND T2.Currency = 'CZK') - (SELECT SUM(T3.Consumption) FROM yearmonth AS T3 INNER JOIN customers AS T4 ON T3.CustomerID = T4.CustomerID AND T3.Date BETWEEN '201201' AND '201212' AND T4.Currency = 'EUR')
SELECT STRFTIME('%Y', T1.Date) FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID INNER JOIN customers AS T3 ON T1.CustomerID = T3.CustomerID WHERE T3.Currency = 'EUR' GROUP BY STRFTIME('%Y', T1.Date) ORDER BY SUM(T1.Amount) DESC LIMIT 1
SELECT Segment FROM yearmonth JOIN customers ON yearmonth.CustomerID = customers.CustomerID GROUP BY Segment ORDER BY SUM(Consumption) ASC LIMIT 1
SELECT substr(Date, 1, 4) as Year FROM yearmonth INNER JOIN customers ON yearmonth.CustomerID = customers.CustomerID WHERE customers.Currency = 'CZK' GROUP BY Year ORDER BY SUM(Consumption) DESC LIMIT 1
SELECT SUBSTR(`Date`, 6, 2) AS Month FROM `yearmonth` AS T1 INNER JOIN `customers` AS T2 ON T1.CustomerID = T2.CustomerID WHERE SUBSTR(T1.`Date`, 1, 4) = '2013' AND T2.Segment = 'SME' ORDER BY T1.Consumption DESC LIMIT 1 
SELECT (SME_avg - LAM_avg) AS SME_LAM_diff, (LAM_avg - KAM_avg) AS LAM_KAM_diff, (KAM_avg - SME_avg) AS KAM_SME_diff FROM (SELECT AVG(SME_consumption) AS SME_avg FROM (SELECT SUM(T2.Consumption) AS SME_consumption FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID JOIN transactions_1k AS T3 ON T1.CustomerID = T3.CustomerID WHERE T1.segment = 'SME' AND T3.Currency = 'CZK' AND substr(T2.Date, 1, 4) = '2013' GROUP BY T1.CustomerID ORDER BY SME_ consumption LIMIT 1) ) cross join (SELECT AVG(LAM_consumption) AS LAM_avg FROM (SELECT SUM(T2.Consumption) AS LAM_consumption FROM customers AS T1 JOIN yearmonth
SELECT Segment, ((SUM(CASE WHEN substr(T2.Date, 1, 4) = '2013' THEN T2.Consumption ELSE 0 END) - SUM(CASE WHEN substr(T2.Date, 1, 4) = '2012' THEN T2.Consumption ELSE 0 END)) / SUM(CASE WHEN substr(T2.Date, 1, 4) = '2012' THEN T2.Consumption ELSE 0 END)) * 100 AS percentage_increase FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = 'EUR' AND T1.Segment IN ('SME', 'LAM', 'KAM') AND T2.Date BETWEEN '201201' AND '201312' GROUP BY T1.Segment ORDER BY percentage_increase DESC, T1.Segment DESC; 
SELECT SUM(Consumption) FROM yearmonth WHERE CustomerID = 6 AND SUBSTR(Date,1,6) BETWEEN '201308' AND '201311'
SELECT (SELECT COUNT(GasStationID) FROM gasstations WHERE Country = 'Czech Republic' AND Segment = 'discount') - (SELECT COUNT(GasStationID) FROM gasstations WHERE Country = 'Slovakia' AND Segment = 'discount') AS More_Discount_Stations
SELECT (SELECT Consumption FROM yearmonth WHERE CustomerID = 7 AND Date = '201304') - (SELECT Consumption FROM yearmonth WHERE CustomerID = 5 AND Date = '201304') AS differences
SELECT (SELECT COUNT(DISTINCT CustomerID) FROM customers WHERE Segment = 'SME' AND Currency = 'Czech koruna') - (SELECT COUNT(DISTINCT CustomerID) FROM customers WHERE Segment = 'SME' AND Currency = 'Euro') AS Difference_SMEs
SELECT T2.CustomerID FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '201310' AND T2.Segment = 'LAM' AND T2.Currency = 'Euro' ORDER BY T1.Consumption DESC LIMIT 1
SELECT T2.Segment, T1.CustomerID, MAX(T1.Consumption) AS Max_Consumption FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'KAM' GROUP BY T1.CustomerID ORDER BY Max_Consumption DESC LIMIT 1
SELECT SUM(Consumption) FROM yearmonth ym INNER JOIN customers c ON ym.CustomerID = c.CustomerID WHERE ym.Date = '201305' AND c.Segment = 'KAM'
SELECT CAST(SUM(CASE WHEN T1.Consumption > 46.73 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.CustomerID) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'LAM'
SELECT Country, COUNT(GasStationID) AS NumberOfStations FROM gasstations WHERE Segment = 'value for money' GROUP BY Country 
SELECT CAST(SUM(CASE WHEN Currency = 'Euro' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(CustomerID) FROM customers WHERE Segment = 'KAM'
SELECT CAST(SUM(CASE WHEN Consumption > 528.3 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(CustomerID) FROM yearmonth WHERE Date = '201202'
SELECT CAST(SUM(CASE WHEN Segment = 'premium' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(GasStationID) FROM gasstations WHERE Country = 'Slovakia'
SELECT CustomerID FROM yearmonth WHERE Date = '201309' ORDER BY Consumption DESC LIMIT 1
SELECT T2.Segment FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '201309' GROUP BY T2.Segment ORDER BY SUM(T1.Consumption) ASC LIMIT 1
SELECT T2.CustomerID FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'SME' AND T1.Date = '201206' ORDER BY T1.Consumption ASC LIMIT 1
SELECT MAX(consumption) FROM yearmonth WHERE SUBSTR(`date`, 1, 4) = '2012'
SELECT MAX(T2.Consumption) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = 'euro'
SELECT T2.Description FROM "transactions_1k" AS T1 INNER JOIN products AS T2 ON T1.ProductID = T2.ProductID WHERE SUBSTR(T1.Date, 1, 6) = '201309';
SELECT DISTINCT T2.Country FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE SUBSTR(T1.Date, 1, 6) = '201306';
SELECT DISTINCT gs.ChainID FROM gasstations gs JOIN transactions_1k t ON gs.GasStationID = t.GasStationID JOIN customers c ON t.CustomerID = c.CustomerID WHERE c.Currency = 'Euro'
SELECT T3.Description FROM "transactions_1k" AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID INNER JOIN products AS T3 ON T1.ProductID = T3.ProductID WHERE T2.Currency = 'euro'
SELECT AVG(Amount * Price) FROM transactions_1k WHERE strftime('%Y-%m', Date) = '2012-01'
SELECT COUNT(T1.CustomerID) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = 'Euro' AND T2.Consumption > 1000
SELECT DISTINCT T3.Description FROM "transactions_1k" AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID INNER JOIN products AS T3 ON T1.ProductID = T3.ProductID WHERE T2.Country = 'CZE'
SELECT DISTINCT T2.Time FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.ChainID = 11
SELECT COUNT(transactionID) FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = 'CZE' AND T1.Price > 1000
SELECT COUNT(T1.TransactionID) FROM "transactions_1k" AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Date >= '2012-01-02' AND T2.Country = 'CZE'
SELECT AVG(Amount * Price) as AvgTotalPrice FROM transactions_1k AS T1 INNER JOIN gasstations AS G1 ON T1.GasStationID = G1.GasStationID WHERE G1.Country = 'CZE'
SELECT AVG(T4.Price) FROM customers AS T1 INNER JOIN "transactions_1k" AS T4 ON T1.CustomerID = T4.CustomerID WHERE T1.Currency = 'Euro'
SELECT CustomerID FROM "transactions_1k" WHERE Date = '2012-08-25' GROUP BY CustomerID ORDER BY SUM(Price) DESC LIMIT 1
SELECT T2.Country FROM "transactions_1k" AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Date = '2012-08-25' ORDER BY T1.Time ASC LIMIT 1
SELECT C.Currency FROM customers AS C INNER JOIN "transactions_1k" AS T ON C.CustomerID = T.CustomerID WHERE T.Date = '2012-08-24' AND T.Time = '16:25:00' 
SELECT T2.Segment FROM transactions_1k AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '2012-08-23' AND T1.Time = '21:20:00'
SELECT COUNT(T1.TransactionID) FROM transactions_1k AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = 'EUR' AND T1.Date = '2012-08-26' AND T1.Time < '13:00:00'
SELECT T1.Segment FROM customers AS T1 INNER JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID ORDER BY T2.Date ASC LIMIT 1
SELECT T2.Country FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE STRFTIME('%Y-%m-%d',T1.Date) = '2012-08-24' AND T1.Time = '12:42:00'
SELECT T1.ProductID FROM "transactions_1k" AS T1 WHERE T1.Date = '2012-08-23' AND T1.Time = '21:20:00'
SELECT T2.Date, T2.Consumption FROM transactions_1k AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE strftime('%Y-%m-%d', T1.Date) = '2012-08-24' AND T1.Price * T1.Amount = 124.05 AND strftime('%Y-%m', T2.Date) LIKE '2012-01%'
SELECT COUNT(T1.GasStationID) FROM "transactions_1k" AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Date = '2012-08-26' AND T1.Time BETWEEN '08:00:00' AND '09:00:00' AND T2.Country = 'CZE'
SELECT T1.Currency FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Consumption = 214582.17 AND T2.Date LIKE '201306%'
SELECT T2.Country FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.CardID = 667467 
SELECT T2.Country FROM "transactions_1k" AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '2012-08-24' AND T1.Amount = 548.4
SELECT CAST(SUM(CASE WHEN T1.Currency = 'EUR' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.CustomerID) FROM customers AS T1 INNER JOIN "transactions_1k" AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.`Date` = '2012-08-25'
SELECT CAST((SUM(CASE WHEN strftime('%Y', T2.Date) = '2012' THEN T2.Consumption ELSE 0 END) - SUM(CASE WHEN strftime('%Y', T2.Date) = '2013' THEN T2.Consumption ELSE 0 END)) AS REAL) * 100 / SUM(CASE WHEN strftime('%Y', T2.Date) = '2012' THEN T2.Consumption ELSE 0 END) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID INNER JOIN transactions_1k AS T3 ON T1.CustomerID = T3.CustomerID WHERE T3.Date = '2012-08-25' AND T3.Price = 634.8
SELECT T2.GasStationID FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID GROUP BY T1.GasStationID ORDER BY SUM(T1.Amount * T1.Price) DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN Segment = 'premium' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM gasstations WHERE Country = 'SVK'
SELECT SUM(T1.Amount * T1.Price) AS TotalSpent FROM transactions_1k AS T1 WHERE T1.CustomerID = 38508 AND STRFTIME('%Y%m', T1.Date) = '201201'
SELECT t1.Description FROM products AS t1 INNER JOIN "transactions_1k" AS t2 ON t1.ProductID = t2.ProductID GROUP BY t1.Description ORDER BY SUM(t2.Amount) DESC LIMIT 5
SELECT T2.CustomerID, AVG(T1.Price / T1.Amount) AS AvgPricePerItem, T2.Currency FROM transactions_1k AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID GROUP BY T2.CustomerID ORDER BY SUM(T1.Price) DESC LIMIT 1
SELECT gs.Country FROM "transactions_1k" AS tx INNER JOIN gasstations AS gs ON tx.GasStationID = gs.GasStationID WHERE tx.ProductID = 2 ORDER BY tx.Price DESC LIMIT 1
SELECT T5.Date, T5.Consumption FROM transactions_1k AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID INNER JOIN products AS T3 ON T1.ProductID = T3.ProductID INNER JOIN yearmonth AS T5 ON T2.CustomerID = T5.CustomerID WHERE T1.Price / T1.Amount > 29.00 AND T3.ProductID = 5 AND T5.Date LIKE '201208%'
