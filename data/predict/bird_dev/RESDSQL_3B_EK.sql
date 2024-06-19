sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select count(satscores.cds) from satscores inner join schools on satscores.cds = schools.cdscode where schools.virtual = 'F' and satscores.avgscrmath < 400
sql placeholder
select schools.phone from schools inner join satscores on schools.cdscode = satscores.cds where satscores.numge1500 group by schools.phone order by count(satscores.numge1500) desc limit 1
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select schools.phone from schools inner join satscores on schools.cdscode = satscores.cds order by satscores.numge1500 / satscores.numtsttakr desc limit 3
sql placeholder
select schools.district from schools inner join satscores on schools.cdscode = satscores.cds where schools.statustype = 'Active' and schools.admlname1 = 'Reading' order by satscores.avgscrread desc limit 1
select count(schools.school) from satscores inner join schools on satscores.cds = schools.cdscode inner join frpm on schools.cdscode = frpm.cdscode where schools.county = 'Alameda' and satscores.numtsttakr < 100
select schools.charter from schools inner join satscores on schools.cdscode = satscores.cds where satscores.avgscrwrite = 499
select count(schools.school) from schools inner join satscores on schools.cdscode = satscores.cds where schools.county = 'Contra Costa' and satscores.numtsttakr <= 250 and schools.fundingtype = 'Directly funded'
select schools.phone from schools inner join satscores on schools.cdscode = satscores.cds where satscores.avgscrmath = ( select max(avgscrmath) from satscores )
sql placeholder
sql placeholder
select schools.school from satscores inner join schools on satscores.cds = schools.cdscode inner join frpm on schools.cdscode = frpm.cdscode where schools.county = 'Contra Costa' group by schools.school order by count(satscores.numtsttakr) desc limit 1
sql placeholder
sql placeholder
select schools.school , schools.fundingtype from schools inner join frpm on schools.cdscode = frpm.cdscode inner join satscores on satscores.cds = frpm.cdscode where satscores.cname = 'Riverside' and satscores.avgscrmath > 400 group by schools.school having avg(satscores.avgscrmath) > 400
sql placeholder
select schools.school , avg(satscores.avgscrwrite) , schools.phone from schools inner join satscores on schools.cdscode = satscores.cds where schools.opendate >= '1991' and schools.closeddate < '2000' group by schools.school , satscores.avgscrwrite
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select schools.streetabr , schools.city , schools.zip , schools.state from schools inner join satscores on schools.cdscode = satscores.cds where satscores.numge1500 is not null order by satscores.numtsttakr asc limit 1
select distinct schools.website from satscores inner join schools on satscores.cds = schools.cdscode inner join frpm on schools.cdscode = frpm.cdscode where satscores.cname = 'Los Angeles' and satscores.numtsttakr between 2000 and 3000
select avg(satscores.numtsttakr) from schools inner join satscores on schools.cdscode = satscores.cds where schools.opendate between '1980-01-01' and '1980-12-31'
select schools.phone from schools inner join satscores on schools.cdscode = satscores.cds where schools.district = 'Fresno Unified' order by satscores.avgscrread asc limit 1
select schools.school from schools inner join satscores on schools.cdscode = satscores.cds where schools.virtual = 'F' group by schools.school order by satscores.avgscrread desc limit 5
select schools.edopscode from schools inner join frpm on schools.cdscode = frpm.cdscode inner join satscores on schools.cdscode = satscores.cds order by satscores.avgscrmath desc limit 1
select satscores.avgscrmath , schools.county from schools inner join satscores on schools.cdscode = satscores.cds inner join frpm on schools.cdscode = frpm.cdscode order by satscores.avgscrmath asc limit 1
sql placeholder
select schools.school , satscores.avgscrwrite from schools inner join satscores on schools.cdscode = satscores.cds where schools.admfname1 = 'Ricci' and schools.admlname1 = 'Ulrich'
sql placeholder
select cast(sum(case when schools.opendate = 1980 then 1 else 0 end) as real) / 12 from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.county = 'Alameda' and schools.doctype = 'Elementary School District'
select cast(sum(case when schools.doctype = 'Unified School District' then 1 else 0 end) as real) / count(schools.school) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.county = 'Orange'
sql placeholder
select schools.mailstreet , schools.school from schools inner join satscores on schools.cdscode = satscores.cds order by satscores.avgscrmath desc limit 5 , 1
select schools.mailstrabr , schools.school from satscores inner join schools on satscores.cds = schools.cdscode inner join frpm on schools.cdscode = frpm.cdscode order by satscores.avgscrread asc limit 1
select count(schools.school) from schools inner join satscores on schools.cdscode = satscores.cds where schools.mailcity = 'Lakeport' and satscores.numge1500 > satscores.avgscrread + satscores.avgscrmath + satscores.avgscrwrite
select count(satscores.numtsttakr) from satscores inner join schools on satscores.cds = schools.cdscode where schools.mailcity = 'Fresno'
select mailzip from schools where admfname1 = 'Avetik' and admlname2 = 'Atoian'
select cast(sum(case when county = 'Colusa' then 1 else 0 end) as real) * 100 / sum(case when county = 'Humboldt' then 1 else 0 end) from schools
select count(mailstate) from schools where county = 'San Joaquin'
select schools.phone , schools.ext from schools inner join satscores on schools.cdscode = satscores.cds where satscores.avgscrwrite = ( select max(avgscrwrite) from satscores )
select phone , ext from schools where zip = '95203-3704'
select website from schools where admfname1 = 'Mike' and admlname1 = 'Dante'
select distinct website from schools where county = 'San Joaquin' and virtual = 'P' and charter = 1
select count(charter) from schools where city = 'Hickman' and doctype = 'Elementary School District' and charter = 1
select count(schools.cdscode) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.county = 'Los Angeles' and schools.charter = 0
select schools.admfname1 , schools.city from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.charternum = '00D2'
select count(charter) from schools where charternum = '00D4' and mailcity = 'Hickman'
select cast(sum(case when schools.fundingtype = 'Locally funded' then 1 else 0 end) as real) * 100 / count(schools.fundingtype) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.county = 'Santa Clara'
select count(schools.school) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.fundingtype = 'Directly funded' and schools.county = 'Stanislaus' and schools.opendate between '2000-01-01' and '2005-12-31'
select count(schools.cdscode) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.city = 'San Francisco' and strftime('%Y' , schools.closeddate) = '1989' and schools.doctype = 'Community College District'
sql placeholder
select ncesdist from schools where soc = 31
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select schools.gsserved from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.city = 'Adelanto' group by schools.gsserved order by count(schools.gsserved) desc limit 1
select county , sum(virtual) from schools where county in ('San Diego' , 'Santa Barbara') group by county order by count(virtual) desc limit 1
select school type , school name , latitude from schools where latitude = ( select max(latitude) from schools )
sql placeholder
select gsoffered from schools where longitude = ( select max(longitude) from schools )
sql placeholder
select admfname1 , district from schools group by admfname1 order by count(admfname1) desc limit 2
sql placeholder
select schools.admlname2 , schools.district , schools.county , schools.school from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.charter = 40
select schools.admemail1 from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.opendate between '2009-01-01' and '2010-12-31' and schools.soctype = 'Introductory/Middle Schools (Public)' and schools.district = 'San Bernardino City Unif'
select schools.admemail1 , schools.school from schools inner join satscores on schools.cdscode = satscores.cds where satscores.numge1500 group by schools.admemail1 , schools.school order by count(satscores.numge1500) desc limit 1
select count(account.account_id) from account inner join district on account.district_id = district.district_id where district.a3 = 'east Bohemia' and account.frequency = 'POPLATEK PO OBRATU'
select count(account.account_id) from district inner join account on district.district_id = account.district_id inner join loan on account.account_id = loan.account_id where district.a3 = 'Prague'
select a12 from district where a13 = 1996 order by a12 desc limit 1
select count(district.a11) from client inner join district on client.district_id = district.district_id where client.gender = 'F' and district.a11 > 6000 and district.a9 < 10000
select count(client.gender) from client inner join district on client.district_id = district.district_id where district.a3 = 'north Bohemia' and client.gender = 'M' and district.a11 > 8000
select client.client_id , avg(district.a11) from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where client.gender = 'F' order by client.birth_date asc limit 1
select client.birth_date from client inner join disp on client.client_id = disp.client_id inner join account on disp.account_id = account.account_id inner join district on account.district_id = district.district_id order by district.a11 desc limit 1
select count(disp.client_id) from disp inner join account on disp.account_id = account.account_id where account.frequency = 'POPLATEK TYDNE' and disp.type = 'OWNER'
select client.client_id from client inner join disp on client.client_id = disp.client_id inner join account on disp.account_id = account.account_id where account.frequency = 'POPLATEK PO OBRATU'
select loan.account_id from loan inner join account on loan.account_id = account.account_id where strftime('%Y' , loan.date) = '1997' and account.frequency like 'POPLATEK TYDNE' order by loan.amount asc limit 1
select account.account_id from loan inner join account on loan.account_id = account.account_id where loan.duration > 12 and account.date > 1993 order by loan.amount desc limit 1
select count(client.gender) from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where client.gender = 'F' and district.a2 = 'Slokolov' and client.birth_date between 1950 and 1950
select account.account_id from account inner join trans on account.account_id = trans.account_id where strftime('%Y' , trans.date) = '1995' order by account.date asc limit 1
select distinct trans.account from trans inner join account on trans.account_id = account.account_id where trans.amount > 3000 and trans.date between '1997-01-01' and '1997-12-31'
select client.client_id from client inner join card on client.client_id = card.card_id where card.issued = '1994-03-03'
select account.date from account inner join trans on account.account_id = trans.account_id where trans.amount = 840 and trans.date = '1998-10-14'
select district.district_id from loan inner join account on loan.account_id = account.account_id inner join district on account.district_id = district.district_id where loan.date = '1994-08-25'
select trans.amount from trans inner join disp on trans.account_id = disp.account_id inner join card on disp.disp_id = card.disp_id inner join client on client.client_id = disp.client_id where client.birth_date = '1996-10-21' order by trans.amount desc limit 1
select client.gender from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id order by district.a11 desc limit 1
sql placeholder
select count(client.gender) from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where district.a2 = 'Jesenik' and client.gender = 'F'
sql placeholder
select count(account.account_id) from account inner join district on account.district_id = district.district_id where district.a2 = 'Litomerice' and strftime('%Y' , account.date) = '1996'
select district.a2 from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where client.gender = 'F' and client.birth_date = '1976-01-29'
select client.birth_date from client inner join loan on client.district_id = loan.account_id where loan.amount = 98832 and loan.date = '1996-01-03'
select account.account_id from account inner join client on account.district_id = client.district_id inner join district on client.district_id = district.district_id where district.a3 = 'Prague' order by client.client_id asc limit 1
select cast(sum(case when client.gender = 'M' then 1 else 0 end) as real) * 100 / count(client.gender) from client inner join district on client.district_id = district.district_id where district.a3 = 'south Bohemia' group by district.district_id order by count(client.gender) desc limit 1
sql placeholder
select cast(sum(case when status = 'A' then amount else 0 end) as real) * 100 / sum(amount) from loan
select cast(sum(case when loan.status = 'C' then 1 else 0 end) as real) * 100 / count(loan.account_id) from loan inner join account on loan.account_id = account.account_id where loan.amount < 100000
select account.account_id , district.a2 , district.a3 from district inner join account on district.district_id = account.district_id where strftime('%Y' , account.frequency) = '1993' and account.frequency = 'POPLATEK PO OBRATU'
select client.client_id , account.account_id , account.frequency from district inner join account on district.district_id = account.district_id inner join client on district.district_id = client.district_id where district.a3 = 'east Bohemia' and account.date between 1995 and 2000
select account.account_id , account.date from district inner join account on district.district_id = account.district_id where district.a2 = 'Prachatice'
select district.a2 , district.a3 from loan inner join district on loan.loan_id = district.district_id where loan.loan_id = 4990
select loan.account_id , district.a2 , district.a3 from loan inner join account on loan.account_id = account.account_id inner join district on account.district_id = district.district_id where loan.amount > 300000
sql placeholder
sql placeholder
select cast(sum(case when district.a2 = 'Decin' then 1 else 0 end) as real) * 100 / count(*) from account inner join district on account.district_id = district.district_id where strftime('%Y' , account.date) = '1993'
select account_id from account where frequency = 'POPLATEK MESICNE'
sql placeholder
select trans.amount , district.a2 from trans inner join account on trans.account_id = account.account_id inner join district on account.district_id = district.district_id where trans.date between '1996-01-01' and '1996-01%' and trans.type = 'VYDAJ' order by trans.amount desc limit 10
select count(client.client_id) from client inner join disp on client.client_id = disp.client_id inner join district on client.district_id = district.district_id inner join card on disp.disp_id = card.disp_id where district.a3 = 'south bohemia'
sql placeholder
select avg(loan.amount) from client inner join loan on client.client_id = loan.loan_id where client.gender = 'M'
select a2 from district where a13 = 1996 order by a13 desc limit 1
select count(account.account_id) from account inner join district on account.district_id = district.district_id where district.a16 group by district.district_id order by count(district.a16) desc limit 1
select count(trans.account_id) from trans inner join account on trans.account_id = account.account_id where trans.operation = 'VYBER KARTOU' and account.frequency = 'POPLATEK MESICNE' and trans.balance < 0
select count(loan.loan_id) from loan inner join account on loan.account_id = account.account_id where loan.amount > 250000 and account.frequency = 'POPLATEK MESICNE' and account.date between 1995 and 1997
sql placeholder
select count(client.gender) from client inner join district on client.district_id = district.district_id where client.gender = 'M' and district.a15 = ( select district.a15 from district order by a15 desc limit 1 , 1 )
select count(card.card_id) from card inner join disp on card.disp_id = disp.disp_id where card.type = 'gold' and disp.type = 'DISPONENT'
select count(account.account_id) from account inner join district on account.district_id = district.district_id where district.a2 = 'Pisek'
select district.a2 from account inner join trans on account.account_id = trans.account_id inner join district on account.district_id = district.district_id where trans.amount > 10000 and trans.date = '1997'
sql placeholder
select account.account_id from account inner join disp on account.account_id = disp.account_id inner join card on disp.disp_id = card.disp_id where card.type in ('gold' , 'junior') group by account.account_id
select avg(trans.amount) from trans inner join account on trans.account_id = account.account_id where strftime('%Y' , trans.date) = '2021' and trans.operation = 'VYBER KARTOU'
select account_id from trans where operation = 'VYBER KARTOU' and amount < ( select avg(amount) from trans )
sql placeholder
select count(client.client_id) from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where client.gender = 'F' and district.a3 = 'south Bohemia'
sql placeholder
sql placeholder
select count(account.account_id) from account inner join trans on account.account_id = trans.account_id inner join district on account.district_id = district.district_id where trans.bank = 'AB' and district.a3 = 'north Bohemia'
select district.a2 from trans inner join account on trans.account_id = account.account_id inner join district on account.district_id = district.district_id where trans.type = 'VYDAJ'
select avg(district.a15) from account inner join district on account.district_id = district.district_id where district.a3 between 4000 and 4999 and account.date between 1997 and 2000
select count(card.card_id) from card inner join disp on card.disp_id = disp.disp_id where disp.type = 'OWNER' and card.type = 'classic'
select count(client.client_id) from client inner join district on client.district_id = district.district_id where district.a2 = 'Hl.m. Praha' and client.gender = 'M'
select cast(sum(case when issued < 1998 then 1 else 0 end) as real) * 100 / count(*) from card where type = 'gold'
select client.client_id from loan inner join disp on loan.account_id = disp.account_id inner join client on disp.client_id = client.client_id inner join account on disp.account_id = account.account_id order by loan.amount desc limit 1
select district.a15 from account inner join district on account.district_id = district.district_id where account.account_id = 532 and district.a15 = 1995
sql placeholder
select trans.amount from trans inner join disp on trans.account_id = disp.account_id inner join client on disp.client_id = client.client_id where client.client_id = 3356 and trans.operation = 'VYBER'
select count(account.account_id) from loan inner join account on loan.account_id = account.account_id where account.frequency = 'POPLATEK TYDNE' and loan.amount < 200000
select card.type from client inner join disp on client.client_id = disp.client_id inner join card on disp.disp_id = card.disp_id where client.client_id = 13539
select district.a3 from client inner join district on client.district_id = district.district_id where client.client_id = 3541
select district.a2 from loan inner join account on loan.account_id = account.account_id inner join district on account.district_id = district.district_id where loan.status = 'A' group by district.district_id order by count(account.account_id) desc limit 1
sql placeholder
select trans.amount from trans inner join account on trans.account_id = account.account_id inner join district on account.district_id = district.district_id where district.a5
select count(account.account_id) from district inner join account on district.district_id = account.district_id where district.a2 = 'Jesenik'
select client.client_id from client inner join disp on client.client_id = disp.client_id inner join card on disp.disp_id = card.disp_id where card.issued >= '1997-01-01' and card.type = 'junior'
select cast(sum(case when client.gender = 'F' then 1 else 0 end) as real) * 100 / count(client.gender) from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where district.a11 > 10000
select 100 * (sum(loan.amount) - sum(loan.amount)) / sum(loan.amount) from loan inner join account on loan.account_id = account.account_id inner join client on account.district_id = client.district_id where client.gender = 'M' and 1996 > 1997
select count(account_id) from trans where strftime('%Y' , date) >= '1995' and operation = 'VYBER KARTOU'
select sum(case when a3 = 'east Bohemia' then 1 else 0 end) - sum(case when a3 = 'north Bohemia' then 1 else 0 end) from district
select count(account_id) from disp where account_id between 1 and 10
sql placeholder
select client.birth_date from client inner join disp on client.client_id = disp.client_id inner join account on disp.account_id = account.account_id where disp.account_id = 130
select count(disp.account_id) from disp inner join account on disp.account_id = account.account_id where disp.type = 'OWNER' and account.frequency = 'POPLATEK PO OBRATU'
select loan.amount , loan.status from client inner join loan on client.client_id = loan.account_id where client.client_id = 992
select sum(trans.amount) , client.gender from client inner join disp on client.client_id = disp.client_id inner join account on disp.account_id = account.account_id inner join trans on account.account_id = trans.account_id where disp.client_id = 4 and trans.trans_id = 851
select card.type from client inner join disp on client.client_id = disp.client_id inner join account on disp.account_id = account.account_id inner join card on disp.disp_id = card.disp_id where client.client_id = 9
select sum(trans.amount) from client inner join disp on client.client_id = disp.client_id inner join trans on disp.account_id = trans.account_id where client.client_id = 617 and trans.date = '1998'
select client.birth_date , client.client_id from district inner join account on district.district_id = account.district_id inner join client on account.district_id = client.district_id where client.birth_date between 1983 and 1987 and district.a3 = 'east Bohemia'
select client.client_id from client inner join loan on client.client_id = loan.loan_id where client.gender = 'F' order by loan.amount desc limit 3
select count(client.gender) from client inner join account on client.district_id = account.district_id inner join trans on account.account_id = trans.account_id where client.birth_date between 1974 and 1976 and client.gender = 'M' and trans.k_symbol = 'SIPO'
select count(account.account_id) from account inner join district on account.district_id = district.district_id where district.a2 = 'Beroun' and strftime('%Y' , account.date) > '1996'
select count(client.client_id) from client inner join disp on client.client_id = disp.client_id inner join card on disp.disp_id = card.disp_id where client.gender = 'F' and card.type = 'junior'
select cast(sum(case when client.gender = 'F' then 1 else 0 end) as real) * 100 / count(client.gender) from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where district.a3 = 'Prague'
select cast(sum(case when client.gender = 'M' then 1 else 0 end) as real) * 100 / count(client.gender) from client inner join disp on client.client_id = disp.client_id inner join account on disp.account_id = account.account_id where account.frequency = 'POPLATEK TYDNE'
select count(client.client_id) from client inner join disp on client.client_id = disp.client_id inner join account on disp.account_id = account.account_id where account.frequency = 'POPLATEK TYDNE'
select account.account_id from loan inner join account on loan.account_id = account.account_id where loan.duration > 24 and account.date < 1997 order by loan.amount asc limit 1
select account.account_id from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where client.gender = 'F' order by district.a11 asc limit 1
select count(client.client_id) from client inner join district on client.district_id = district.district_id where client.birth_date = 1920 and district.a3 = 'east Bohemia'
select count(loan.account_id) from loan inner join account on loan.account_id = account.account_id where loan.duration = 24 and account.frequency = 'POPLATEK TYDNE'
select avg(loan.amount) from loan inner join trans on loan.account_id = trans.account_id inner join account on trans.account_id = account.account_id where account.frequency = 'POPLATEK PO OBRATU' and loan.status = 'C'
select client.client_id , client.district_id from client inner join disp on client.client_id = disp.client_id inner join account on account.account_id = disp.account_id inner join district on client.district_id = district.district_id where disp.type = 'OWNER'
select client.client_id , client.birth_date from client inner join disp on client.client_id = disp.client_id inner join card on disp.disp_id = card.disp_id where card.type = 'gold'
select bond_type from bond group by bond_type order by count(bond_type) desc limit 1
select count(molecule.molecule_id) from molecule inner join atom on molecule.molecule_id = atom.molecule_id where atom.element = 'cl' and molecule.label = '-'
select avg(atom.element) from atom inner join bond on atom.molecule_id = bond.molecule_id inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '-' and atom.element = 'o'
select cast(sum(case when bond.bond_type = '-' then 1 else 0 end) as real) / count(bond.bond_id) from bond inner join molecule on bond.molecule_id = molecule.molecule_id inner join connected on bond.bond_id = connected.bond_id where molecule.label = '+'
select count(molecule.molecule_id) from molecule inner join atom on molecule.molecule_id = atom.molecule_id where atom.element = 'na' and molecule.label = '-'
select molecule.molecule_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '#' and molecule.label = '+'
select cast(sum(iif(atom.element = 'c' , 1 , 0)) as real) * 100 / count(atom.atom_id) from atom inner join connected on atom.molecule_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where bond.bond_type = '= '
select count(bond_id) from bond where bond_type like '#'
select count(atom_id) from atom where element != 'br'
select count(molecule_id) from molecule where molecule_id between 'TR000' and 'TR099' and label = '+'
select molecule.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'si'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.molecule_id = atom.molecule_id where bond.bond_id = 'TR004_8_9'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where bond.bond_type = '= '
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'h' group by molecule.label order by count(molecule.label) desc limit 1
select bond.bond_type from atom inner join connected on atom.molecule_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where atom.element = 'te'
select connected.atom_id from bond inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '-'
select distinct connected.atom_id from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on atom.molecule_id = bond.molecule_id inner join molecule on bond.molecule_id = molecule.molecule_id where molecule.label = '-'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '-' order by atom.element asc limit 1
select bond.bond_type from bond inner join connected on bond.bond_id = connected.bond_id where connected.atom_id between 'TR004_8' and 'TR004_20'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element != 'sn'
select count(atom.atom_id) from atom inner join bond on atom.molecule_id = bond.molecule_id inner join connected on atom.atom_id = connected.atom_id where bond.bond_type = '-' and atom.element = 'i' or atom.element = 's'
select connected.atom_id from bond inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '#'
select connected.atom_id , connected.atom_id2 from atom inner join connected on atom.atom_id = connected.atom_id inner join molecule on molecule.molecule_id = atom.molecule_id where molecule.molecule_id = 'TR181'
select cast(sum(case when atom.element = 'f' then 1 else 0 end) as real) * 100 / count(molecule.molecule_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+'
select cast(sum(case when bond.bond_type = '#' then 1 else 0 end) as real) * 100 / count(bond.bond_id) from bond inner join molecule on bond.molecule_id = molecule.molecule_id where molecule.label = '+'
select element from atom where molecule_id = 'TR000' order by element asc limit 3
select atom.atom_id from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on bond.molecule_id = atom.molecule_id where bond.molecule_id = 'TR001' and bond.bond_id = 'TR001_2_6'
select sum(case when label = '+' then 1 else 0 end) - sum(case when label = '-' then 1 else 0 end) as diff from molecule
select connected.atom_id2 from connected inner join bond on connected.bond_id = bond.bond_id where bond.bond_id = 'TR_000_2_5'
select bond_id from connected where atom_id2 = 'TR000_2'
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '= ' limit 5
select cast(sum(case when bond.bond_type = '= ' then 1 else 0 end) as real) * 100 / count(bond.bond_id) from bond inner join molecule on bond.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR008'
select cast(sum(case when label = '+' then 1 else 0 end) as real) * 100 / count(molecule_id) from molecule
select cast(sum(case when atom.element = 'h' then 1 else 0 end) as real) * 100 / count(atom.atom_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR206'
select bond.bond_type from bond inner join molecule on bond.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR000'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR060' and molecule.label = '+'
select bond.bond_type , molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR018' group by bond.bond_type , molecule.label order by count(bond.bond_type) desc limit 1
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '-' and molecule.label = '-' limit 3
select bond.bond_id from bond inner join connected on bond.bond_id = connected.bond_id where bond.molecule_id = 'TR006' order by bond.bond_id asc limit 2
select count(bond.bond_id) from bond inner join connected on bond.bond_id = connected.bond_id inner join molecule on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR009' and connected.atom_id2 = 'TR009_12'
select count(molecule.molecule_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' and atom.element = 'br'
select bond.bond_type , connected.atom_id2 , bond.molecule_id from bond inner join connected on bond.bond_id = connected.bond_id where bond.bond_id = 'TR001_6_9'
select molecule.molecule_id , molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.atom_id = 'TR001_10'
select count(molecule_id) from bond where bond_type = '#'
select count(bond_id) from connected where atom_id like 'TR%_19'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR004'
select count(molecule_id) from molecule where label = '-'
select atom.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where substr(atom.atom_id , 7 , 2) = 21 and molecule.label = '+'
select distinct bond.bond_id from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.molecule_id = atom.molecule_id where atom.element = 'p' or atom.element = 'n'
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '= ' group by molecule.molecule_id order by count(bond.bond_type) desc limit 1
select cast(count(bond.bond_id) as real) / count(distinct atom.atom_id) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.molecule_id = atom.molecule_id where atom.element = 'i'
select bond.bond_type , bond.bond_id from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on bond.bond_id = connected.bond_id where atom.atom_id = 45
select distinct atom.element from atom inner join connected on atom.atom_id = connected.atom_id where atom.element not in ( select atom.element from atom where atom_id not in ( select atom_id from bond where bond_id = 0 ) )
select atom.atom_id from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on bond.bond_id = connected.bond_id where bond.molecule_id = 'TR447' and bond.bond_type = '#'
select distinct atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.molecule_id = atom.molecule_id where bond.bond_id = 'TR144_8_19'
select molecule.molecule_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '= ' and molecule.label = '+' group by molecule.molecule_id order by count(bond.bond_type) desc limit 1
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' group by atom.element order by count(atom.element) asc limit 1
select connected.atom_id , bond.bond_id from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where atom.element = 'pb'
select distinct atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where bond.bond_type = '#'
select cast(count(bond.bond_id) as real) * 100 / count(atom.atom_id) from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on bond.molecule_id = atom.molecule_id group by atom.element order by count(atom.atom_id) desc limit 1
select cast(sum(case when molecule.label = '+' then 1 else 0 end) as real) * 100 / count(bond.bond_id) from bond inner join molecule on bond.molecule_id = molecule.molecule_id where bond.bond_type = '-'
select count(atom_id) from atom where element in ('c' , 'h')
select connected.atom_id2 from atom inner join connected on atom.atom_id = connected.atom_id where atom.element = 's'
select bond.bond_type from atom inner join bond on atom.atom_id = bond.bond_id where atom.element = 'sn'
select count(connected.atom_id2) from bond inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '-'
select count(atom.atom_id) from atom inner join bond on atom.molecule_id = bond.molecule_id inner join connected on bond.bond_id = connected.bond_id where atom.element in ('p' , 'br')
select bond.bond_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.label = '+'
select molecule.molecule_id from bond inner join molecule on bond.molecule_id = molecule.molecule_id where bond.bond_type = '-' and molecule.label = '-'
select cast(sum(iif(atom.element = 'cl' , 1 , 0)) as real) * 100 / count(atom.molecule_id) from atom inner join bond on atom.molecule_id = bond.molecule_id where bond.bond_type = '-'
select label from molecule where molecule_id = 'TR000' or molecule_id = 'TR001' or molecule_id = 'TR002'
select molecule_id from molecule where label = '-'
select count(molecule_id) from molecule where molecule_id between 'TR000' and 'TR030' and label = '+'
select bond.bond_type from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR000' or molecule.molecule_id = 'TR050'
select distinct atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.molecule_id = connected.atom_id where bond.bond_id = 'TR001_10_11'
select count(bond.bond_id) from bond inner join atom on bond.molecule_id = atom.molecule_id where atom.element = 'i'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'ca' group by molecule.label order by count(molecule.label) desc limit 1
select case when atom.element = 'cl' then 'YES' else 'NO' end as yorn from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.molecule_id = atom.molecule_id where bond.bond_id = 'TR001_1_8'
sql placeholder
select cast(sum(case when atom.element = 'pb' then 1 else 0 end) as real) * 100 / count(atom.molecule_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+'
select element from atom where molecule_id = 'TR001'
select molecule_id from bond where bond_type like '= '
select connected.atom_id , connected.atom_id2 from bond inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '#'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.molecule_id = connected.atom_id where bond.bond_id = 'TR005_16_26'
select count(molecule.molecule_id) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '-' and molecule.label = '-'
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_id = 'TR001_10_11'
select bond.molecule_id , molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '#'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' and atom.atom_id = 4 and atom.element = 'cl' or atom.element = 'f'
select cast(sum(case when atom.element = 'h' then 1 else 0 end) as real) / count(atom.element) , molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR006'
select case when molecule.label = '+' then 'YES' else 'NO' end as yorn from molecule inner join atom on molecule.molecule_id = atom.molecule_id where atom.element = 'ca'
select bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join molecule on atom.molecule_id = molecule.molecule_id inner join bond on bond.molecule_id = molecule.molecule_id where atom.element = 'te'
select atom.element from atom inner join bond on atom.molecule_id = bond.molecule_id where bond.bond_id = 'TR001_10_11' group by atom.element
select cast(sum(iif(bond_type = '#' , 1 , 0)) as real) * 100 / count(bond_id) from bond
select cast(sum(case when bond.bond_type = '= ' then 1 else 0 end) as real) * 100 / count(bond.bond_id) from bond inner join molecule on bond.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR047'
select case when molecule.label = '+' then 'YES' else 'NO' end as yorn from molecule inner join atom on molecule.molecule_id = atom.molecule_id where atom.atom_id = 'TR001_1'
select label from molecule where molecule_id = 'TR151'
select element from atom where molecule_id = ( select molecule_id from molecule where molecule_id = 'TR151' ) and element = ( select element from atom where molecule_id = 'TR151' ) and element is not null
select count(molecule_id) from molecule where label = '+'
select atom.atom_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id between 'TR010' and 'TR050' and atom.element = 'c'
select count(atom.atom_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+'
select bond.bond_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '= ' and molecule.label = '+'
select count(atom.atom_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'h' and molecule.label = '+'
select distinct bond.molecule_id from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on bond.bond_id = connected.bond_id where atom.atom_id = 'TR00_1' and bond.bond_type = 'Bond'
select atom.atom_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'C' and molecule.label = '-'
select cast(sum(case when molecule.label = '+' then 1 else 0 end) as real) * 100 / count(molecule.molecule_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'h'
select label from molecule where molecule_id = 'TR124'
select atom_id from atom where molecule_id = 'TR186'
select bond_type from bond where bond_id = 'TR007_4_19'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.molecule_id = connected.atom_id where bond.bond_id = 'TR001_2_4' group by atom.element
select count(molecule.molecule_id) , molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '= ' and molecule.molecule_id = 'TR006'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' and atom.element = 'cl'
sql placeholder
select atom.element from atom inner join bond on atom.molecule_id = bond.molecule_id inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '#'
select atom.element from atom inner join bond on atom.atom_id = bond.bond_id where bond.bond_id = 'TR000_2_3'
select count(connected.bond_id) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.molecule_id = atom.molecule_id where atom.element = 'cl'
select atom.atom_id , count(bond.bond_type) from atom inner join bond on atom.molecule_id = bond.molecule_id inner join connected on atom.atom_id = connected.atom_id2 where bond.molecule_id = 'TR346' group by atom.atom_id
select count(bond.molecule_id) from bond inner join molecule on bond.molecule_id = molecule.molecule_id where bond.bond_type = '= ' and molecule.label = '+'
select count(atom.molecule_id) from atom inner join bond on atom.molecule_id = bond.molecule_id inner join connected on bond.bond_id = connected.bond_id where atom.element = 's' and bond.bond_type != '= '
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_id = 'TR001_2_4'
select count(molecule_id) from atom where molecule_id = 'TR005'
select count(bond_id) from bond where bond_type = '-'
select molecule.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'cl' and molecule.label = '+'
select molecule.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'C' and molecule.label = '-'
select cast(sum(case when molecule.label = '+' then 1 else 0 end) as real) * 100 / count(atom.molecule_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'cl'
select molecule_id from bond where bond_id = 'TR001_1_7'
select count(atom.atom_id) from atom inner join connected on atom.atom_id = connected.atom_id where connected.bond_id = 'TR001_3_4' and atom.element = 'cl'
select bond.bond_type from bond inner join connected on bond.bond_id = connected.bond_id where connected.atom_id = 'TR000_1' and connected.atom_id2 = 'TR000_2'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id2 where atom.atom_id = 'TR000_2' and connected.atom_id2 = 'TR000_4'
select element from atom where atom_id = 'TR000_1'
select case when label = '+' then 'YES' else 'NO' end as yorn from molecule where molecule_id = 'TR000'
select cast(sum(iif(bond.bond_type = '-' , 1 , 0)) as real) * 100 / count(bond.bond_id) from bond inner join connected on bond.bond_id = connected.bond_id inner join atom on connected.atom_id = atom.atom_id
select count(molecule.molecule_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'n' and molecule.label = '+'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join bond on atom.molecule_id = bond.molecule_id inner join connected on atom.atom_id = connected.atom_id2 where atom.element = 's' and bond.bond_type = '= '
select atom.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '-' group by atom.molecule_id having count(atom.atom_id) > 5
select atom.element from atom inner join bond on atom.molecule_id = bond.molecule_id inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '= ' and atom.molecule_id = 'TR024'
select molecule.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' group by molecule.molecule_id order by count(atom.atom_id) desc limit 1
sql placeholder
select count(molecule_id) from molecule where label = '+'
select count(molecule.molecule_id) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id between 'TR004' and 'TR010' and bond.bond_type = '-'
select count(atom.element) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR008' and atom.element = 'c'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '-' and atom.atom_id = 'TR004_7'
select count(molecule.molecule_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join bond on atom.molecule_id = bond.molecule_id where bond.bond_type = '= ' and atom.element = 'o'
select count(molecule.molecule_id) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '#' and molecule.label = '-'
select atom.element , bond.bond_type from atom inner join bond on atom.molecule_id = bond.molecule_id where bond.molecule_id = 'TR016'
select atom.atom_id from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id inner join molecule on molecule.molecule_id = bond.molecule_id where atom.element = 'c' and bond.bond_type = '= ' and molecule.molecule_id = 'TR012'
select atom.atom_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' and atom.element = 'o'
select name from cards where cardkingdomid is not null
select distinct availability from cards where bordercolor = 'borderless' and cardkingdomfoilid is null
select name from cards order by faceconvertedmanacost desc limit 1
select name from cards where frameversion = 2015 and edhrecrank < 100
select cards.name from cards inner join legalities on cards.uuid = legalities.uuid where legalities.format = 'gladiator' and cards.rarity = 'mythic' and legalities.status = 'Banned'
select distinct legalities.format from cards inner join legalities on cards.uuid = legalities.uuid where cards.types = 'Artifact' and cards.side is null
select cards.id , cards.artist from cards inner join legalities on cards.uuid = legalities.uuid where legalities.format = 'commander' and legalities.status = 'Legal' and cards.power is null or cards.power = '*'
select distinct cards.text , rulings.text , cards.hascontentwarning from cards inner join rulings on cards.uuid = rulings.uuid where cards.artist = 'Stephen Daniele'
select rulings.text from cards inner join rulings on cards.uuid = rulings.uuid where cards.name = 'Sublime Epiphany' and cards.number = '74s'
select cards.artist , cards.name , cards.ispromo from rulings inner join cards on rulings.uuid = cards.uuid where cards.ispromo = 1 group by cards.artist , cards.name order by count(rulings.uuid) desc limit 1
select set_translations.language from cards inner join set_translations on cards.id = set_translations.id where cards.name = 'annul' and cards.number = 29
select cards.name from cards inner join set_translations on cards.id = set_translations.id inner join foreign_data on cards.uuid = foreign_data.uuid where foreign_data.language = 'Japanese'
select cast(sum(case when foreign_data.language = 'Chinese Simplified' then 1 else 0 end) as real) * 100 / count(cards.availability) from cards inner join foreign_data on cards.uuid = foreign_data.uuid
sql placeholder
select count(types) from cards where artist = 'Aaron Boyd'
select keywords from cards where name = 'Angel of Mercy'
select count(id) from cards where power = '*'
select promotypes from cards where name = 'Duress'
select bordercolor from cards where name = 'Ancestor''s Chosen'
select originaltype from cards where name = 'Ancestor''s Chosen'
select set_translations.language from cards inner join set_translations on cards.setcode = set_translations.setcode where cards.name = 'Angel of Mercy'
select count(cards.id) from cards inner join legalities on cards.uuid = legalities.uuid where legalities.status = 'Restricted' and cards.istextless = 0
select rulings.text from cards inner join rulings on cards.uuid = rulings.uuid where cards.name = 'Ancestor''s Chosen'
select count(cards.id) from cards inner join legalities on cards.uuid = legalities.uuid where cards.isstarter = 1 and legalities.status = 'Restricted'
select legalities.status from cards inner join legalities on cards.uuid = legalities.uuid where cards.name = 'Cloudchaser Eagle'
select sets.type from cards inner join sets on cards.id = sets.id where cards.name = 'Benalish Knight'
select legalities.format from cards inner join legalities on cards.uuid = legalities.uuid where cards.name = 'Benalish Knight'
select cards.artist from cards inner join foreign_data on cards.uuid = foreign_data.uuid where foreign_data.language = 'Phyrexian'
select cast(sum(case when bordercolor = 'borderless' then 1 else 0 end) as real) * 100 / count(id) from cards
select count(cards.id) from cards inner join foreign_data on cards.uuid = foreign_data.uuid where foreign_data.language = 'German' and cards.isreprint = 1
select count(cards.id) from cards inner join set_translations on cards.id = set_translations.id where set_translations.language = 'Russian' and cards.bordercolor = 'borderless'
select cast(sum(case when foreign_data.language = 'French' then 1 else 0 end) as real) * 100 / count(cards.id) from cards inner join foreign_data on cards.uuid = foreign_data.uuid where cards.isstoryspotlight = 1
select count(id) from cards where toughness = 99
select name from cards where artist = 'Aaron Boyd'
select count(id) from cards where availability = 'mtgo' and bordercolor = 'black'
select id from cards where convertedmanacost = 0
select layout from cards where keywords = 'Flying'
select count(id) from cards where originaltype = 'Summon - Angel' and subtypes != 'Angel'
select distinct cardkingdomid from cards where cardkingdomfoilid is not null and cardkingdomid = ( select cardkingdomid from cards order by power desc limit 1 )
select id from cards where dueldeck = 'a'
select edhrecrank from cards where frameversion = 2015
select distinct cards.artist from cards inner join foreign_data on cards.uuid = foreign_data.uuid where foreign_data.language = 'Chinese Simplified'
select distinct cards.name from cards inner join foreign_data on cards.uuid = foreign_data.uuid where cards.availability = 'paper' and foreign_data.language = 'Japanese'
select count(cards.id) from cards inner join legalities on cards.uuid = legalities.uuid where legalities.status = 'Banned' and cards.bordercolor = 'white'
select distinct legalities.uuid , foreign_data.language from legalities inner join cards on legalities.uuid = cards.uuid inner join foreign_data on cards.uuid = foreign_data.uuid where legalities.format = 'legacy'
select rulings.text from cards inner join rulings on cards.uuid = rulings.uuid where cards.name = 'Beacon of Immortality'
select count(cards.id) , legalities.status from cards inner join legalities on cards.uuid = legalities.uuid where cards.frameversion = 'future' and legalities.status = 'legal'
select name , colors from cards where setcode = 'OGW'
select distinct cards.name , set_translations.language from cards inner join set_translations on cards.id = set_translations.id where cards.setcode = '10E' and cards.convertedmanacost = 5
select cards.name , rulings.date from cards inner join rulings on cards.uuid = rulings.uuid where cards.originaltype = 'Creature - Elf'
select cards.colors , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid where cards.id between 1 and 20
sql placeholder
select cards.name from cards inner join rulings on cards.uuid = rulings.uuid where cards.rarity = 'uncommon' order by rulings.date asc
select count(cardkingdomid) from cards where artist = 'John Avon' and cardkingdomfoilid is not null
select count(cardkingdomid) from cards where bordercolor = 'white' and cardkingdomfoilid is not null
select count(id) from cards where artist = 'UDON' and availability = 'mtgo' and hand = -1
select count(frameversion) from cards where frameversion = 1993 and availability = 'paper' and hascontentwarning = 1
select manacost from cards where frameversion = 2003 and availability = 'mtgo' and layout = 'normal' and bordercolor = 'black'
select sum(convertedmanacost) from cards where artist = 'Rob Alexander'
select subtypes , supertypes from cards where availability = 'arena'
select distinct set_translations.setcode from cards inner join set_translations on cards.setcode = set_translations.setcode inner join foreign_data on cards.uuid = foreign_data.uuid where foreign_data.language = 'Spanish'
select cast(sum(case when hand = +3 then 1 else 0 end) as real) * 100 / count(id) from cards where frameeffects = 'legendary'
select cast(sum(case when isstoryspotlight = 1 then 1 else 0 end) as real) * 100 / count(id) from cards
select cast(count(case when foreign_data.language = 'Spanish' then 1 else null end) as real) * 100 / count(cards.name) , cards.name from cards inner join foreign_data on cards.uuid = foreign_data.uuid inner join set_translations on cards.id = set_translations.id
select distinct set_translations.language from sets inner join set_translations on sets.code = set_translations.setcode where sets.basesetsize = 309
select count(sets.code) from sets inner join set_translations on sets.code = set_translations.setcode where sets.block = 'Commander' and set_translations.language = 'Portuguese (Brasil)'
select cards.id from cards inner join legalities on cards.uuid = legalities.uuid where legalities.status = 'Legal' and cards.types = 'Creature'
select cards.subtypes , cards.supertypes from cards inner join foreign_data on cards.uuid = foreign_data.uuid where foreign_data.language = 'German' and cards.subtypes is not null and cards.supertypes is not null
select count(id) from cards where power is null
select count(cards.uuid) from cards inner join rulings on cards.uuid = rulings.uuid where rulings.text = 'This is a triggered mana ability.' and cards.side is null
select cards.id from cards inner join legalities on cards.uuid = legalities.uuid where cards.artist = 'Erica Yang' and cards.availability = 'paper' and legalities.format = 'pauper'
select artist from cards where text = 'Das perfekte Gegenmittel zu einer dichten Formation.'
select foreign_data.name from cards inner join foreign_data on cards.uuid = foreign_data.uuid inner join set_translations on cards.id = set_translations.id where cards.artist = 'Matthew D. Wilson' and cards.type = 'Creature' and cards.layout = 'normal' and cards.bordercolor = 'black'
select count(cards.uuid) from cards inner join rulings on cards.uuid = rulings.uuid where rulings.date = '2009-01-10' and cards.rarity = 'rare'
select distinct foreign_data.language from set_translations inner join foreign_data on set_translations.id = foreign_data.id inner join sets on set_translations.setcode = sets.code where sets.block = 'Ravnica' and sets.basesetsize = 180
select cast(sum(case when cards.hascontentwarning = 0 then 1 else 0 end) as real) * 100 / count(cards.id) from cards inner join legalities on cards.uuid = legalities.uuid where legalities.format = 'commander' and legalities.status = 'Legal'
select cast(sum(case when cards.power is null then 1 else 0 end) as real) * 100 / count(cards.power) from cards inner join foreign_data on cards.uuid = foreign_data.uuid where foreign_data.language = 'French'
select cast(sum(case when sets.type = 'expansion' then 1 else 0 end) as real) * 100 / count(set_translations.setcode) from sets inner join set_translations on sets.code = set_translations.setcode
select availability from cards where artist = 'Daren Bader'
select count(id) from cards where edhrecrank > 12000 and bordercolor = 'borderless'
select count(id) from cards where isoversized = 1 and isreprint = 1 and ispromo = 1
select name from cards where power is null or power like '*' order by promotypes asc limit 3
select foreign_data.language from cards inner join foreign_data on cards.id = foreign_data.uuid where cards.multiverseid = 149934
select cardkingdomid , cardkingdomfoilid from cards where cardkingdomfoilid is not null order by power desc limit 3
select cast(sum(case when layout = 'normal' then 1 else 0 end) as real) * 100 / count(id) from cards where istextless = 1
select id from cards where side is null and subtypes like 'Angel' or subtypes like 'Wizard'
select cards.name , sets.name from cards inner join sets on cards.setcode = sets.code where sets.mtgocode is null or sets.mtgocode = ''
select distinct set_translations.language from cards inner join set_translations on cards.id = set_translations.id inner join sets on sets.code = set_translations.setcode where sets.name = 'Archenemy' and set_translations.setcode = 'ARC'
select sets.name , set_translations.translation from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.id = 5
select foreign_data.language , foreign_data.type from sets inner join set_translations on sets.code = set_translations.setcode inner join foreign_data on set_translations.id = foreign_data.uuid where set_translations.id = 206
sql placeholder
select sets.id from cards inner join sets on cards.id = sets.id inner join foreign_data on cards.uuid = foreign_data.uuid where sets.isforeignonly = 1 and cards.hasfoil = 1 and foreign_data.language = 'Japanese'
select cards.name from cards inner join foreign_data on cards.uuid = foreign_data.uuid inner join set_translations on sets.code = set_translations.setcode inner join sets on set_translations.id = sets.code where foreign_data.language = 'Russian' order by sets.basesetsize desc limit 1
select cast(sum(case when cards.isonlineonly = 1 then 1 else 0 end) as real) * 100 / count(cards.id) from cards inner join foreign_data on cards.uuid = foreign_data.uuid inner join set_translations on cards.id = set_translations.id where foreign_data.language = 'Chinese Simplified'
select count(sets.code) from sets inner join set_translations on sets.code = set_translations.setcode inner join foreign_data on set_translations.id = foreign_data.id where foreign_data.language = 'Japanese' and sets.mtgocode is null or sets.mtgocode = ''
select count(id) from cards where bordercolor = 'black'
select count(id) from cards where frameeffects = 'extendedart'
select bordercolor from cards where isfullart = 1 and bordercolor = 'black'
select foreign_data.language from set_translations inner join foreign_data on set_translations.id = foreign_data.id where set_translations.id = 174
select distinct sets.name from cards inner join set_translations on cards.id = set_translations.id inner join sets on set_translations.setcode = sets.code where set_translations.setcode = 'ALL'
select language from foreign_data where name = 'A Pedra Fellwar'
select distinct cards.setcode from cards inner join sets on cards.id = sets.code where sets.releasedate = '2007-07-13'
select basesetsize , code from sets where block in ('Masques' , 'Mirage')
select distinct code from sets where type = 'expansion'
select foreign_data.name , foreign_data.type from cards inner join foreign_data on cards.uuid = foreign_data.uuid where cards.watermark = 'boros'
select foreign_data.language , foreign_data.flavortext , cards.type from cards inner join foreign_data on cards.uuid = foreign_data.uuid where cards.watermark = 'colorpie'
select cast(sum(case when convertedmanacost = 10 then 1 else 0 end) as real) * 100 / count(convertedmanacost) from cards where name = 'Abyssal Horror'
select distinct code from sets where type = 'commander'
select foreign_data.name , foreign_data.type from cards inner join foreign_data on cards.uuid = foreign_data.uuid where cards.watermark = 'abzan'
select set_translations.language , foreign_data.type from cards inner join set_translations on cards.uuid = set_translations.id inner join foreign_data on cards.uuid = foreign_data.uuid where cards.watermark = 'azorius'
select count(cardkingdomid) from cards where artist = 'Aaron Miller' and cardkingdomfoilid is not null
select count(id) from cards where availability like '%paper%' and hand = '+%'
select name from cards where istextless = 0
select convertedmanacost from cards where name = 'Ancestor''s Chosen'
select count(bordercolor) from cards where bordercolor = 'white' and power = '*'
select name from cards where side is not null and ispromo = ( select ispromo from cards where side != 0 )
select subtypes , supertypes from cards where name = 'Molimo , Maro-Sorcerer'
select purchaseurls from cards where promotypes = 'bundle'
select count(artist) from cards where availability like '%arena%' or availability like '%mtgo%'
select name from cards where name = ( select name from cards where name = 'Serra Angel' ) or name = ( select name from cards where name = 'Shrine Keeper' ) order by convertedmanacost desc limit 1
select artist from cards where flavorname = 'Battra , Dark Destroyer'
select name from cards where frameversion = '2003' order by convertedmanacost desc limit 3
select foreign_data.name from cards inner join set_translations on cards.id = set_translations.id inner join foreign_data on set_translations.id = foreign_data.id where cards.name = 'Ancestor''s Chosen' and foreign_data.language = 'Italian'
select count(set_translations.translation) from cards inner join set_translations on cards.id = set_translations.id where cards.name = 'Angel of Mercy'
select cards.name from cards inner join set_translations on cards.setcode = set_translations.setcode where set_translations.translation = 'Hauptset Zehnte Edition'
select distinct set_translations.translation from cards inner join set_translations on cards.id = set_translations.id inner join foreign_data on set_translations.id = foreign_data.id where cards.name = 'Ancestor''s Chosen' and foreign_data.language = 'Korean'
select count(cards.id) from cards inner join set_translations on cards.id = set_translations.id where set_translations.translation = 'Hauptset Zehnte Edition' and cards.artist = 'Adam Rex'
select sets.basesetsize from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Hauptset Zehnte Edition'
select set_translations.translation from sets inner join set_translations on sets.code = set_translations.setcode where sets.name = 'Eighth Edition'
select sets.isonlineonly from cards inner join sets on cards.setcode = sets.code where cards.name = 'Angel of Mercy' and sets.mtgocode is not null
select sets.releasedate from sets inner join cards on sets.id = cards.uuid where cards.name like 'Ancestor%s Chosen'
select distinct sets.type from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Hauptset Zehnte Edition'
select count(sets.name) from sets inner join set_translations on sets.code = set_translations.setcode where sets.block = 'Ice Age' and set_translations.language = 'Italian'
select sets.isforeignonly from cards inner join sets on cards.id = sets.id where cards.name = 'Adarkar Valkyrie'
select count(distinct sets.id) from sets inner join set_translations on sets.code = set_translations.setcode inner join foreign_data on foreign_data.id = set_translations.id where sets.basesetsize < 10 and set_translations.language = 'Italian'
select count(cards.id) from cards inner join sets on cards.id = sets.id where cards.bordercolor = 'black' and sets.name = 'Coldsnap'
select cards.name from cards inner join sets on cards.id = sets.id where sets.name = 'Coldsnap' order by cards.convertedmanacost desc limit 1
select cards.artist from cards inner join sets on cards.id = sets.id where cards.artist in ('Jeremy Jarvis' , 'Aaron Miller' , 'Chippy')
select cards.name from cards inner join sets on cards.id = sets.id where cards.number = 4 and sets.name = 'Coldsnap'
select count(cards.id) from cards inner join sets on cards.id = sets.id where cards.convertedmanacost > 5 and cards.power is null or cards.power = '*' and sets.name = 'Coldsnap'
select foreign_data.flavortext from cards inner join foreign_data on cards.id = foreign_data.uuid where cards.name = 'Ancestor''s Chosen' and foreign_data.language = 'Italian'
select distinct foreign_data.language from cards inner join foreign_data on cards.id = foreign_data.id where cards.name = 'Ancestor''s Chosen' and cards.flavortext is not null
select set_translations.translation from cards inner join set_translations on cards.id = set_translations.id inner join foreign_data on set_translations.id = foreign_data.id where cards.name like 'Ancestor%s Chosen' and foreign_data.language = 'German'
select rulings.text from rulings inner join set_translations on rulings.id = set_translations.id where set_translations.language = 'Italian' and set_translations.translation = 'Coldsnap'
select cards.name from cards inner join set_translations on cards.id = set_translations.id inner join sets on set_translations.setcode = sets.code where sets.name = 'Coldsnap' and set_translations.language = 'Italian' order by cards.convertedmanacost desc limit 1
select rulings.date from cards inner join rulings on cards.uuid = rulings.uuid where cards.name = 'Reminisce'
select cast(sum(case when cards.convertedmanacost = 7 then 1 else 0 end) as real) * 100 / count(cards.convertedmanacost) from cards inner join sets on cards.setcode = sets.code where sets.name = 'Coldsnap'
select cast(sum(case when cards.power is not null then 1 else 0 end) as real) * 100 / count(cards.power) from cards inner join sets on cards.cardkingdomid = sets.id where sets.name = 'Coldsnap' and cards.cardkingdomid is not null
select distinct code from sets where releasedate = '2017-07-14'
select sets.keyrunecode from sets inner join set_translations on sets.code = set_translations.setcode where sets.code = 'PKHC'
select cards.mcmid from cards inner join sets on cards.mcmid = sets.mcmid where sets.code = 'SS2'
select sets.mcmname from cards inner join sets on cards.mcmid = sets.mcmid where sets.releasedate = '2017-06-09'
select type from sets where name like 'From the Vault: Lore'
select sets.parentcode from sets inner join set_translations on sets.code = set_translations.setcode where sets.name = 'Commander 2014 Oversized'
select rulings.text , cards.hascontentwarning from rulings inner join cards on rulings.uuid = cards.uuid where cards.artist = 'Jim Pavelec'
select sets.releasedate from cards inner join sets on cards.setcode = sets.code where cards.name = 'Evacuation'
select sets.basesetsize from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Rinascita di Alara'
select distinct sets.type from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Huitième édition'
select set_translations.translation from cards inner join set_translations on cards.id = set_translations.id inner join foreign_data on set_translations.id = foreign_data.id where cards.name = 'Tendo Ice Bridge' and foreign_data.language = 'French'
select count(set_translations.translation) from sets inner join set_translations on sets.code = set_translations.setcode where sets.name = 'Salvat 2011' and set_translations.translation is not null
select foreign_data.name from cards inner join set_translations on cards.setcode = set_translations.setcode inner join foreign_data on set_translations.id = foreign_data.id where cards.name = 'Fellwar Stone' and foreign_data.language = 'Japanese'
select cards.name from cards inner join sets on cards.id = sets.id where sets.name = 'Journey into Nyx Hero''s Path' order by cards.convertedmanacost desc limit 1
select sets.releasedate from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Ola de fro'
select sets.type from cards inner join sets on cards.setcode = sets.code where cards.name = 'Samite Pilgrim'
select count(cards.id) from cards inner join sets on cards.id = sets.id where sets.name = 'World Championship Decks 2004' and cards.convertedmanacost = 3
select set_translations.translation from sets inner join set_translations on sets.code = set_translations.setcode where sets.name = 'Mirrodin' and set_translations.language = 'Chinese Simplified'
select cast(sum(case when cards.hasnonfoil = 1 then 1 else 0 end) as real) * 100 / count(cards.id) from cards inner join set_translations on cards.id = set_translations.id inner join foreign_data on cards.uuid = foreign_data.uuid where set_translations.language = 'Japanese'
select cast(sum(case when cards.isonlineonly = 1 then 1 else 0 end) as real) * 100 / count(cards.id) from cards inner join set_translations on cards.id = set_translations.id inner join foreign_data on cards.uuid = foreign_data.uuid where set_translations.language = 'Portuguese (Brazil)'
select printings from cards where artist = 'Aleksi Briclot' and istextless = 1
select cards.uuid from cards inner join sets on cards.uuid = sets.id order by sets.basesetsize desc limit 1
select artist from cards where side is null order by faceconvertedmanacost desc limit 1
select frameeffects from cards where cardkingdomfoilid is not null group by frameeffects order by count(frameeffects) desc limit 1
select count(dueldeck) from cards where dueldeck = 'a' and hasfoil = 0 and power is null or power = '*'
select name from sets where type = 'commander' order by totalsetsize desc limit 1
select cards.name from cards inner join legalities on cards.uuid = legalities.uuid where legalities.format = 'duel' order by cards.manacost desc limit 10
select cards.originalreleasedate , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid where cards.rarity = 'mythic' and legalities.status = 'Legal' order by cards.originalreleasedate asc limit 1
select count(cards.artist) from cards inner join foreign_data on cards.uuid = foreign_data.uuid where foreign_data.language = 'French' and cards.artist = 'Volkan Baga'
select count(cards.uuid) from cards inner join legalities on cards.uuid = legalities.uuid where cards.rarity = 'rare' and cards.types = 'Enchantment' and cards.name = 'Abundance' and legalities.status = 'Legal'
select legalities.format , cards.name from legalities inner join cards on legalities.uuid = cards.uuid where legalities.status = 'Banned' group by legalities.format , cards.name order by count(legalities.status) desc limit 1
select set_translations.language from sets inner join set_translations on sets.code = set_translations.setcode where sets.name = 'Battlebond'
select cards.artist , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid order by cards.artist asc limit 1
select distinct legalities.status from cards inner join legalities on cards.uuid = legalities.uuid where cards.artist = 'D. Alexander Gregory' and cards.frameversion = '1997' and legalities.format = 'legacy' and cards.hascontentwarning = 1
select cards.name , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid where cards.edhrecrank = 1 and legalities.status = 'Banned'
select cast(count(sets.id) as real) / 5 from sets inner join set_translations on sets.code = set_translations.setcode where sets.releasedate between '2012-01-01' and '2015-12-31'
select artist from cards where availability = 'arena' and bordercolor = 'black'
select distinct legalities.uuid from legalities inner join cards on legalities.uuid = cards.uuid where legalities.format = 'oldschool' and legalities.status = 'Banned' or legalities.status = 'Restricted'
select count(id) from cards where artist = 'Matthew D. Wilson' and availability = 'paper'
select rulings.text from cards inner join rulings on cards.uuid = rulings.uuid where cards.artist = 'Kev Walker' order by rulings.date desc
sql placeholder
select sets.name from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language not like '%Japanese%' and set_translations.translation = ( select translation from set_translations inner join foreign_data on set_translations.language = foreign_data.language where foreign_data.language != 'Japanese%' )
select cards.frameversion , cards.name , legalities.id from cards inner join legalities on cards.uuid = legalities.uuid where cards.artist = 'Allen Williams' and legalities.status = 'Banned'
select displayname from users where displayname = 'Harlan' or displayname = 'Jarrod Dixon' order by reputation desc limit 1
select displayname from users where strftime('%Y' , creationdate) = '2014'
select count(id) from users where lastaccessdate >= '2014-09-01 00:00:00'
select displayname from users order by views desc limit 1
select count(id) from users where upvotes > 100 and downvotes > 1
select count(id) from users where strftime('%Y' , creationdate) > '2013' and views > 10
select count(posts.owneruserid) from users inner join posts on users.id = posts.owneruserid where users.displayname = 'csgillespie'
select posts.title from posts inner join users on posts.owneruserid = users.id where users.displayname = 'csgillespie'
select users.displayname from posts inner join users on posts.owneruserid = users.id where posts.title = 'Eliciting priors from experts'
select posts.title from posts inner join users on posts.owneruserid = users.id where users.displayname = 'csgillespie' order by posts.viewcount desc limit 1
select ownerdisplayname from posts where favoritecount = ( select max(favoritecount) from posts )
select sum(posts.commentcount) from users inner join posts on users.id = posts.owneruserid inner join comments on posts.id = comments.postid where users.displayname = 'csgillespie'
select posts.answercount from posts inner join users on posts.owneruserid = users.id where users.displayname = 'csgillespie' order by posts.answercount desc limit 1
select users.displayname from posts inner join users on posts.lasteditoruserid = users.id where posts.title = 'Examples for teaching: Correlation does not mean causation'
select count(posts.parentid) from posts inner join users on posts.owneruserid = users.id where users.displayname = 'csgillespie' and posts.parentid is null
select users.displayname from posts inner join users on posts.owneruserid = users.id where posts.closeddate is not null
select count(posts.owneruserid) from posts inner join comments on posts.id = comments.postid inner join users on posts.owneruserid = users.id where posts.score >= 19 and users.age > 65
select users.location from posts inner join users on posts.owneruserid = users.id where posts.title = 'Eliciting priors from experts'
select posts.body from posts inner join tags on posts.id = tags.excerptpostid where tags.tagname = 'bayesian'
select posts.body from posts inner join tags on posts.id = tags.excerptpostid order by tags.count desc limit 1
select count(badges.name) from users inner join badges on users.id = badges.userid where users.displayname = 'csgillespie'
select badges.name from users inner join badges on users.id = badges.userid where users.displayname = 'csgillespie'
select count(badges.userid) from users inner join badges on users.id = badges.userid where users.displayname = 'csgillespie' and badges.date = '2011'
select users.displayname from users inner join badges on users.id = badges.userid group by badges.userid order by count(badges.id) desc limit 1
select avg(posts.score) from users inner join posts on users.id = posts.owneruserid inner join comments on posts.id = comments.postid where users.displayname = 'csgillespie'
select cast(count(badges.id) as real) / count(distinct users.displayname) from users inner join badges on users.id = badges.userid where users.views > 200
select cast(sum(case when users.age > 65 then 1 else 0 end) as real) * 100 / count(posts.owneruserid) from posts inner join comments on posts.id = comments.postid inner join users on posts.owneruserid = users.id where posts.score > 20
select count(votes.userid) from users inner join votes on users.id = votes.userid where users.id = 58 and votes.creationdate = '2010-07-19'
select creationdate from votes group by creationdate order by count(id) desc limit 1
select count(id) from badges where name = 'Revival'
select posts.title from posts inner join comments on posts.id = comments.postid order by comments.score desc limit 1
select count(posts.commentcount) from posts inner join comments on posts.id = comments.postid where posts.viewcount = 1910
sql placeholder
select comments.text from posts inner join comments on posts.id = comments.postid where posts.parentid = 107829 and posts.commentcount = 1
sql placeholder
select users.reputation from posts inner join users on posts.owneruserid = users.id where posts.id = 65041
select count(posts.owneruserid) from users inner join posts on users.id = posts.owneruserid inner join posthistory on posts.id = posthistory.postid where users.displayname = 'Tiago Pasqualini'
select users.displayname from votes inner join comments on votes.userid = comments.userid inner join users on comments.userid = users.id where votes.id = 6347
select sum(votes.id) from posts inner join votes on posts.id = votes.postid where posts.title like '%data visualization%'
select badges.name from users inner join badges on users.id = badges.userid where users.displayname = 'DatEpicCoderGuyWhoPrograms'
select cast(count(posts.id) as real) / count(distinct votes.id) from posts inner join votes on posts.id = votes.postid where posts.owneruserid = 24
select viewcount from posts where title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
select text from comments where score = 17
select displayname from users where websiteurl = 'http://stackoverflow.com/u/1114'
select badges.name from users inner join badges on users.id = badges.userid where users.displayname = 'SilentGhost'
select users.displayname from comments inner join users on comments.userid = users.id where comments.text = 'thank you user93!'
select comments.text from users inner join comments on users.id = comments.userid where users.displayname = 'A Lion'
select users.displayname , sum(users.reputation) from posts inner join comments on posts.id = comments.postid inner join posthistory on comments.userid = posthistory.userid inner join users on posts.owneruserid = users.id where posts.title = 'Understanding what Dassault iSight is doing?'
select comments.text from posts inner join comments on posts.id = comments.postid where posts.title = 'How does gentle boosting differ from AdaBoost?'
select users.displayname from users inner join badges on users.id = badges.userid where badges.name = 'Necromancer' limit 10
select users.displayname from posts inner join posthistory on posts.id = posthistory.postid inner join users on posthistory.userid = users.id where posts.title = 'Open source tools for visualizing multi-dimensional data?'
select distinct posts.title from users inner join posts on users.id = posts.lasteditoruserid inner join posthistory on posts.id = posthistory.postid where users.displayname = 'Vebjorn Ljosa'
select sum(posts.score) , users.websiteurl from users inner join posts on users.id = posts.lasteditoruserid inner join comments on posts.id = comments.postid where users.displayname = 'Yevgeny'
select comments.text from posts inner join comments on posts.id = comments.postid where posts.title = 'Why square the difference instead of taking the absolute value in standard deviation?'
select sum(votes.bountyamount) from posts inner join votes on posts.id = votes.postid where posts.title like '%data%'
select users.displayname from posts inner join posthistory on posts.id = posthistory.postid inner join votes on posts.id = votes.postid inner join users on posts.owneruserid = users.id where posthistory.comment = 'Variation' and votes.bountyamount = 50
select avg(posts.viewcount) , posts.title , comments.text from tags inner join posts on tags.id = posts.id inner join comments on posts.id = comments.postid where tags.tagname = 'humor'
select count(postid) from comments where userid = 13
select id from users order by reputation desc limit 1
select id from users order by views asc limit 1
select count(userid) from badges where strftime('%Y' , date) = '2011' and name = 'Supporter'
select count(userid) from badges where name in ( select name from badges group by name having count(name) > 5 )
select count(users.id) from users inner join badges on users.id = badges.userid where badges.name = 'Supporter' and badges.name = 'Teacher' and users.location = 'New York'
select users.id , users.reputation from users inner join posthistory on users.id = posthistory.userid inner join posts on posthistory.postid = posts.id where posts.id = 1
select posthistory.userid from users inner join posthistory on users.id = posthistory.userid where users.views >= 1000 and posthistory.postid = 1 limit 1
select comments.userid , badges.name from comments inner join badges on comments.userid = badges.userid group by comments.userid order by count(comments.id) desc limit 1
select count(users.id) from users inner join badges on users.id = badges.userid where users.location = 'India' and badges.name = 'Teacher'
select cast(sum(case when date = 2010 then 1 else 0 end) as real) * 100 / sum(case when date = 2011 then 1 else 0 end) - cast(sum(case when date = 2011 then 1 else 0 end) as real) * 100 / sum(case when date = 2011 then 1 else 0 end) from badges where name = 'Students'
sql placeholder
select posts.id , posts.viewcount from posts inner join postlinks on posts.id = postlinks.postid where posts.id = 61217
sql placeholder
select distinct comments.postid , posts.owneruserid from comments inner join posts on comments.postid = posts.id inner join posthistory on posts.id = posthistory.postid where comments.score > 60
select sum(posts.favoritecount) from posts inner join users on posts.owneruserid = users.id where posts.creaiondate = '2011' and users.id = 686
select avg(users.upvotes) , avg(users.age) from users inner join votes on users.id = votes.userid where votes.postid = 10 group by votes.userid having count(votes.postid) > 10
select count(userid) from badges where name = 'Announcer'
select name from badges where date = '2010-07-19 19:39:08'
select count(postid) from comments where score > 60
select text from comments where creationdate = '2010-07-19 19:16:14.0'
select count(postid) from comments where score = 10
select badges.name from users inner join badges on users.id = badges.userid order by users.reputation desc limit 1
select users.reputation from badges inner join users on badges.userid = users.id where badges.date = '2010-07-19 19:39:08.0'
select badges.name from users inner join badges on users.id = badges.userid where users.displayname = 'Pierre'
select badges.date from users inner join badges on users.id = badges.userid where users.location = 'Rochester , NY'
select cast(sum(case when badges.name = 'Teacher' then 1 else 0 end) as real) * 100 / count(users.id) from badges inner join users on badges.userid = users.id
select cast(sum(case when users.age between 13 and 18 then 1 else 0 end) as real) * 100 / count(users.id) from badges inner join users on badges.userid = users.id where badges.name = 'Organizer'
select score from comments where creationdate = '2010-07-19 19:19:56.0'
select comments.text from comments inner join posthistory on comments.postid = posthistory.comment where comments.creationdate = '2010-07-19 19:37:33.0'
select users.age from users inner join badges on users.id = badges.userid where users.location = 'Vienna , Austria'
select count(users.id) from users inner join badges on users.id = badges.userid where badges.name = 'Supporter' and users.age between 19 and 65
select users.views from users inner join badges on users.id = badges.userid where badges.date = '2010-07-19 19:39:08.0'
select distinct badges.name from users inner join badges on users.id = badges.userid where users.reputation = ( select min(reputation) from users )
select badges.name from users inner join badges on users.id = badges.userid where users.displayname = 'Sharpie'
select count(users.id) from users inner join badges on users.id = badges.userid where badges.name = 'Supporter' and users.age > 65
select displayname from users where id = 30
select count(id) from users where location = 'New York'
select count(id) from votes where strftime('%Y' , creationdate) = '2010'
select count(id) from users where age between 19 and 65
select displayname from users order by views desc limit 1
select cast(sum(case when strftime('%Y' , creationdate) = '2010' then 1 else 0 end) as real) / sum(case when strftime('%Y' , creationdate) = '2011' then 1 else 0 end) from votes
select tags.tagname from users inner join posts on users.id = posts.owneruserid inner join tags on posts.id = tags.id where users.displayname = 'John Stauffer'
select count(posts.id) from users inner join posts on users.id = posts.owneruserid inner join posthistory on posts.id = posthistory.postid where users.displayname = 'Daniel Vassallo'
select count(votes.userid) from users inner join votes on users.id = votes.userid where users.displayname = 'Harlan'
select posts.id from users inner join posts on users.id = posts.owneruserid where users.displayname = 'slashnick' order by posts.answercount desc limit 1
select posts.ownerdisplayname from users inner join posts on users.id = posts.owneruserid where users.displayname in ('Harvey Motulsky' , 'Noah Snyder') group by posts.ownerdisplayname order by sum(posts.viewcount) desc limit 1
select count(posts.owneruserid) from users inner join posts on users.id = posts.owneruserid inner join votes on posts.id = votes.postid where users.displayname = 'Matt Parker' and votes.postid > 4
select count(comments.score) from users inner join comments on users.id = comments.userid where users.displayname = 'Neil McGuigan' and comments.score < 60
select distinct tags.tagname from users inner join posts on users.id = posts.owneruserid inner join tags on posts.id = tags.id inner join posthistory on posts.id = posthistory.postid where users.displayname = 'Mark Meckes' and posts.commentcount = 0
select distinct users.displayname from users inner join badges on users.id = badges.userid where badges.name = 'Organizer'
select cast(sum(case when tags.tagname = 'r' then 1 else 0 end) as real) * 100 / count(tags.tagname) from tags inner join posts on tags.id = posts.id inner join users on posts.owneruserid = users.id where users.displayname = 'Community'
select ( select count(posts.viewcount) from users inner join posts on users.id = posts.owneruserid where users.displayname = 'Mornington' ) - ( select count(posts.viewcount) from users inner join posts on users.id = posts.owneruserid where users.displayname = 'Amos' ) as difference
select count(userid) from badges where strftime('%Y' , date) = '2014' and name = 'Commentator'
sql placeholder
select displayname , age from users order by views desc limit 1
select lasteditdate , lasteditoruserid from posts where title = 'Detecting a given face in a database of facial images'
select count(score) from comments where userid = 13 and score < 60
sql placeholder
select distinct badges.name from users inner join badges on users.id = badges.userid where users.location = 'North Pole' and strftime('%Y' , badges.date) = '2011'
select users.displayname , users.websiteurl from users inner join posts on users.id = posts.owneruserid where posts.favoritecount > 150
select posthistory.postid , count(posts.id) from posts inner join posthistory on posts.id = posthistory.postid where posts.title = 'What is the best introductory Bayesian statistics textbook?'
select users.lastaccessdate , users.location from badges inner join users on badges.userid = users.id where badges.name = 'outliers'
select postlinks.relatedpostid from posts inner join postlinks on posts.id = postlinks.relatedpostid where posts.title = 'How to tell if something happened in a data set which monitors a value over time'
select posts.id , badges.name from users inner join posts on users.id = posts.owneruserid inner join posthistory on posts.id = posthistory.postid inner join badges on posts.id = badges.userid where users.displayname = 'Samuel' and strftime('%Y' , posthistory.creationdate) = '2013'
select ownerdisplayname from posts order by viewcount desc limit 1
select users.displayname , users.location from tags inner join posts on tags.excerptpostid = posts.id inner join users on posts.owneruserid = users.id where tags.tagname = 'hypothesis-testing'
select posts.title , postlinks.linktypeid from posts inner join postlinks on posts.id = postlinks.relatedpostid where posts.title = 'What are principal component scores?'
select parentid from posts where score = ( select max(score) from posts )
select users.displayname , users.websiteurl from users inner join votes on users.id = votes.userid where votes.votetypeid = 8 and votes.bountyamount = ( select max(bountyamount) from votes where votetypeid = 8 )
select title from posts order by viewcount desc limit 5
select count(tagname) from tags where count between 5000 and 7000
select owneruserid from posts order by favoritecount desc limit 1
select age from users where reputation = ( select max(reputation) from users )
select count(postid) from votes where strftime('%Y' , creationdate) = '2011' and bountyamount = 50
select id from users where age = ( select min(age) from users )
select posts.score from tags inner join posts on tags.id = posts.id order by posts.viewcount desc limit 1
select cast(count(postlinks.id) as real) / 12 from posts inner join postlinks on posts.id = postlinks.postid where strftime('%Y' , postlinks.creationdate) = '2010' and posts.answercount < 2
select posts.id from posts inner join votes on posts.id = votes.postid where votes.userid = 1465 order by posts.favoritecount desc limit 1
select posts.title from posts inner join postlinks on posts.id = postlinks.postid where posts.creaiondate = ( select min(creaiondate) from posts )
select users.displayname from badges inner join users on badges.userid = users.id group by users.id , users.displayname order by count(badges.name) desc limit 1
select min(votes.creationdate) from users inner join votes on users.id = votes.userid where users.displayname = 'chl'
select min(posts.creaiondate) from posts inner join users on posts.owneruserid = users.id order by users.age asc limit 1
select users.displayname from users inner join badges on users.id = badges.userid where badges.name = 'Autobiographer' order by badges.date asc limit 1
select count(users.id) from users inner join posts on users.id = posts.owneruserid where users.location = 'United Kingdom' and posts.favoritecount >= 4
select cast(sum(votes.postid) as real) / count(votes.userid) from votes inner join users on votes.userid = users.id where users.age = ( select max(age) from users )
select displayname from users where reputation = ( select max(reputation) from users )
select count(id) from users where reputation > 2000 and views > 1000
select distinct displayname from users where age between 19 and 65
sql placeholder
select posts.id , posts.title from users inner join posts on users.id = posts.owneruserid where users.displayname = 'Harvey Motulsky' order by posts.viewcount desc limit 1
select posts.id , posts.title from comments inner join posts on comments.postid = posts.id order by comments.score desc limit 1
select cast(sum(posts.score) as real) / count(comments.postid) from users inner join comments on users.id = comments.userid inner join posts on comments.postid = posts.id where users.displayname = 'Stephen Turner'
sql placeholder
sql placeholder
sql placeholder
select cast(sum(case when age between 13 and 18 then 1 else 0 end) as real) * 100 / count(id) from users
select posts.viewcount , users.displayname from comments inner join posts on comments.postid = posts.id inner join posthistory on posts.id = posthistory.postid inner join users on posts.owneruserid = users.id where posts.title = 'Computer game datasets' and posthistory.text = 'Computer game datasets'
select count(id) from posts where viewcount > ( select avg(viewcount) from posts )
select count(postid) from comments where score = ( select max(score) from posts )
select count(id) from posts where viewcount > 3500 and commentcount = 0
select users.displayname , users.location from users inner join posthistory on users.id = posthistory.userid inner join posts on posthistory.postid = posts.id where posthistory.postid = 183 order by posts.lasteditdate desc limit 1
select badges.name from users inner join badges on users.id = badges.userid where users.displayname = 'Emmett' order by badges.date desc limit 1
select count(id) from users where age between 19 and 65 and upvotes > 5000
select strftime('%J' , badges.date) - strftime('%J' , users.creationdate) as days from users inner join badges on users.id = badges.userid where users.displayname = 'Zolomon'
select count(posts.commentcount) , posts.id from comments inner join posts on comments.postid = posts.id inner join posthistory on posts.id = posthistory.postid inner join users on posts.owneruserid = users.id order by users.creationdate desc limit 1
select comments.text , comments.userdisplayname from comments inner join posthistory on comments.userid = posthistory.userid inner join posts on posthistory.postid = posts.id where posts.title = 'Analysing wind data with R' order by comments.creationdate desc limit 1
select count(userid) from badges where name = 'Citizen Patrol'
select count(posts.id) from tags inner join posts on tags.id = posts.id where tags.tagname = 'careers'
select users.reputation , users.views from posts inner join users on posts.owneruserid = users.id where users.displayname = 'Jarrod Dixon'
select count(comments.userid) , posts.answercount from posts inner join comments on posts.id = comments.postid where posts.title = 'Clustering 1D data'
select creationdate from users where displayname = 'IrishStat'
select count(postid) from votes where bountyamount >= 30
select cast(sum(case when posts.score >= 50 then 1 else 0 end) as real) * 100 / count(posts.id) from posts inner join comments on posts.id = comments.postid inner join users on users.id = comments.userid where users.reputation = ( select max(reputation) from users )
select count(postid) from comments where score < 20
sql placeholder
select tags.excerptpostid , tags.wikipostid from tags inner join posts on tags.excerptpostid = posts.id where tags.tagname = 'sample'
select users.reputation , users.upvotes from comments inner join users on comments.userid = users.id where comments.text = 'fine , you win :)'
select comments.text from posts inner join comments on posts.id = comments.postid where posts.title = 'How can I adapt ANOVA for binary data?' and comments.text = 'Linear regression in R'
select comments.text from posts inner join comments on posts.id = comments.postid where posts.viewcount between 100 and 150 order by comments.score desc limit 1
select users.creationdate , users.age from users inner join comments on users.id = comments.userid where users.websiteurl like 'http://'
select count(posts.id) from posts inner join comments on posts.id = comments.postid where comments.score = 0 and posts.viewcount < 5
select count(comments.postid) from posts inner join comments on posts.id = comments.postid where comments.score = 0 and posts.commentcount = 1
select count(users.id) from users inner join comments on users.id = comments.userid where comments.score = 0 and users.age = 40
select posts.id , comments.id from posts inner join comments on posts.id = comments.postid where posts.title = 'Group differences on a five point Likert item'
select users.upvotes from comments inner join users on comments.userid = users.id inner join votes on comments.postid = votes.postid where comments.text = 'R is also lazy evaluated.'
select comments.text from comments inner join users on comments.userid = users.id where users.displayname = 'Harvey Motulsky'
select distinct users.displayname from users inner join comments on users.id = comments.userid where comments.score between 1 and 5 and users.downvotes = 0
select cast(sum(case when users.upvotes = 0 then 1 else 0 end) as real) * 100 / count(comments.userid) from comments inner join users on comments.userid = users.id where comments.score between 5 and 10
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = '3-D Man'
select count(superhero.id) from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Super Strength'
select count(superhero.id) from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.height_cm > 200 and superpower.power_name = 'Super Strength'
select superhero.full_name from superhero inner join hero_power on superhero.id = hero_power.hero_id group by superhero.full_name having count(hero_power.power_id) > 15
select count(superhero.id) from superhero inner join colour on colour.id = superhero.eye_colour_id where colour.colour = 'Blue'
select colour.colour from superhero inner join colour on colour.id = superhero.skin_colour_id where superhero.superhero_name = 'Apocalypse'
sql placeholder
sql placeholder
select count(*) from publisher inner join superhero on publisher.id = superhero.publisher_id where publisher.publisher_name = 'Marvel Comics'
select superhero.full_name from publisher inner join superhero on publisher.id = superhero.publisher_id where publisher.publisher_name = 'Marvel Comics' order by superhero.height_cm desc limit 1
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.superhero_name = 'Sauron'
select count(*) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join colour on colour.id = superhero.eye_colour_id where colour.colour = 'Blue' and publisher.publisher_name = 'Marvel Comics'
select avg(superhero.height_cm) from publisher inner join superhero on publisher.id = superhero.publisher_id where publisher.publisher_name = 'Marvel Comics'
sql placeholder
select count(*) from publisher inner join superhero on publisher.id = superhero.publisher_id where publisher.publisher_name = 'DC Comics'
select publisher.publisher_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id inner join publisher on publisher.id = superhero.publisher_id where attribute.attribute_name = 'Speed' order by hero_attribute.attribute_value asc limit 1
select count(*) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join colour on colour.id = superhero.eye_colour_id where publisher.publisher_name = 'Marvel Comics' and colour.colour = 'Gold'
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.superhero_name = 'Blue Beetle II'
select count(superhero.id) from superhero inner join colour on colour.id = superhero.hair_colour_id where colour.colour = 'Blond'
select superhero.superhero_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Intelligence' order by hero_attribute.attribute_value asc limit 1
select race.race from race inner join superhero on race.id = superhero.race_id where superhero.superhero_name = 'Copycat'
select count(hero_attribute.hero_id) from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id where attribute.attribute_name = 'Durability' and hero_attribute.attribute_value < 50
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Death Touch'
select count(superhero.id) from superhero inner join gender on superhero.gender_id = gender.id inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where gender.gender = 'Female' and attribute.attribute_name = 'Strength' and hero_attribute.attribute_value = 100
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id group by superhero.superhero_name order by count(hero_power.power_id) desc limit 1
select count(superhero.id) from superhero inner join race on superhero.race_id = race.id where race.race = 'Vampire'
select cast(count(case when alignment.alignment = 'Bad' then 1 else null end) as real) * 100 / count(*) , count(case when publisher.publisher_name = 'Marvel Comics' then 1 else null end) from publisher inner join superhero on publisher.id = superhero.publisher_id inner join alignment on superhero.alignment_id = alignment.id where publisher.publisher_name = 'Marvel Comics'
select publisher.publisher_name , sum(case when publisher.publisher_name = 'Marvel Comics' then 1 else 0 end) - sum(case when publisher.publisher_name = 'DC Comics' then 1 else 0 end) from publisher inner join superhero on publisher.id = superhero.publisher_id
select id from publisher where publisher_name = 'Star Trek'
select avg(attribute_value) from hero_attribute
select count(*) from superhero where full_name is null
select colour.colour from colour inner join superhero on colour.id = superhero.eye_colour_id where superhero.id = 75
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = 'Deathlok'
select avg(superhero.weight_kg) from gender inner join superhero on gender.id = superhero.gender_id where gender.gender = 'Female'
select superpower.power_name from superpower inner join hero_power on superpower.id = hero_power.power_id inner join superhero on hero_power.hero_id = superhero.id inner join gender on gender.id = superhero.gender_id where gender.gender = 'Male' limit 5
select superhero.superhero_name from race inner join superhero on race.id = superhero.race_id where race.race = 'Alien'
select superhero_name from superhero where height_cm between 170 and 190 and eye_colour_id = 1
select superpower.power_name from hero_power inner join superpower on hero_power.power_id = superpower.id where hero_power.hero_id = 56
select superhero.full_name from race inner join superhero on race.id = superhero.race_id where race.race = 'Demi-God' limit 5
select count(*) from alignment inner join superhero on alignment.id = superhero.alignment_id where alignment.alignment = 'Bad'
select race.race from race inner join superhero on race.id = superhero.race_id where superhero.weight_kg = 169
select colour.colour from superhero inner join colour on colour.id = superhero.hair_colour_id inner join race on race.id = superhero.race_id where superhero.height_cm = 185 and race.race = 'Human'
select colour.colour from superhero inner join colour on colour.id = superhero.eye_colour_id order by superhero.weight_kg desc limit 1
select cast(sum(case when publisher.publisher_name = 'Marvel Comics' then 1 else 0 end) as real) * 100 / count(*) from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.height_cm between 150 and 180
select superhero.full_name from superhero inner join gender on superhero.gender_id = gender.id where gender.gender = 'Male' and weight_kg > ( select avg(weight_kg) from superhero ) * 0.79
select superpower.power_name from hero_power inner join superpower on hero_power.power_id = superpower.id group by superpower.power_name order by count(superpower.power_name) desc limit 1
select hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id where superhero.superhero_name = 'Abomination'
select superpower.power_name from hero_power inner join superpower on hero_power.power_id = superpower.id where hero_power.hero_id = 1
select count(hero_power.hero_id) from hero_power inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'stealth'
select superhero.full_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on attribute.id = hero_attribute.attribute_id where attribute.attribute_name = 'strength' order by hero_attribute.attribute_value desc limit 1
select cast(count(id) as real) / count(case when skin_colour_id = 1 then 1 else 0 end) from superhero
select count(superhero.id) from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Dark Horse Comics'
select superhero.superhero_name from superhero inner join publisher on superhero.publisher_id = publisher.id inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where publisher.publisher_name = 'Dark Horse Comics' and attribute.attribute_name = 'Durability' order by hero_attribute.attribute_value desc limit 1
select colour.colour from colour inner join superhero on colour.id = superhero.eye_colour_id where superhero.full_name = 'Abraham Sapien'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Flight'
select superhero.eye_colour_id , superhero.hair_colour_id , superhero.skin_colour_id from superhero inner join gender on gender.id = superhero.gender_id inner join publisher on superhero.publisher_id = publisher.id where gender.gender = 'Female' and publisher.publisher_name = 'Dark Horse Comics'
select superhero.superhero_name , publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.eye_colour_id = hair_colour_id and superhero.skin_colour_id = hair_colour_id
select race.race from race inner join superhero on race.id = superhero.race_id where superhero.superhero_name = 'A-Bomb'
select cast(sum(case when colour.colour = 'Blue' then 1 else 0 end) as real) * 100 / count(*) from colour inner join superhero on colour.id = superhero.skin_colour_id inner join gender on superhero.gender_id = gender.id
select superhero.superhero_name , race.race from superhero inner join race on superhero.race_id = race.id where superhero.full_name = 'Charles Chandler'
select gender.gender from superhero inner join gender on superhero.gender_id = gender.id where superhero.superhero_name = 'Agent 13'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Adaptation'
select count(hero_power.power_id) from superhero inner join hero_power on superhero.id = hero_power.hero_id where superhero.superhero_name = 'Amazo'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.full_name = 'Hunter Zolomon'
select superhero.height_cm from superhero inner join colour on colour.id = superhero.eye_colour_id where colour.colour = 'Amber'
select superhero.superhero_name from superhero inner join colour on colour.id = superhero.eye_colour_id where colour.colour = 'Black'
select superhero.eye_colour_id from superhero inner join colour on colour.id = superhero.skin_colour_id where colour.colour = 'Gold'
select superhero.full_name from race inner join superhero on race.id = superhero.race_id where race.race = 'Vampire'
select superhero.superhero_name from alignment inner join superhero on alignment.id = superhero.alignment_id where alignment.alignment = 'Neutral'
select count(hero_attribute.hero_id) from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id where attribute.attribute_name = 'Strength' order by hero_attribute.attribute_value desc limit 1
select race.race , alignment.alignment from race inner join superhero on race.id = superhero.race_id inner join alignment on superhero.alignment_id = alignment.id where superhero.superhero_name = 'Cameron Hicks'
select cast(sum(case when gender.gender = 'Female' then 1 else 0 end) as real) * 100 / count(*) from gender inner join superhero on gender.id = superhero.gender_id inner join publisher on publisher.id = superhero.publisher_id
select avg(superhero.weight_kg) from race inner join superhero on race.id = superhero.race_id where race.race = 'Alien'
select sum(case when full_name = 'Emil Blonsky' then weight_kg else 0 end) - sum(case when full_name = 'Charles Chandler' then weight_kg else 0 end) from superhero
select avg(height_cm) from superhero
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = 'Abomination'
select count(*) from superhero inner join gender on gender.id = superhero.gender_id inner join race on race.id = superhero.race_id where race.race = 'god/eternal' and gender.gender = 'Male' and superhero.race_id = 21
select superhero.superhero_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Speed' order by hero_attribute.attribute_value desc limit 1
select count(*) from alignment inner join superhero on alignment.id = superhero.alignment_id where alignment.alignment = 'Neutral'
select attribute.attribute_name , hero_attribute.attribute_value from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on hero_attribute.hero_id = superhero.id where superhero.superhero_name = '3-D Man'
select superhero_name from superhero where hair_colour_id = 9 and eye_colour_id = 7
select distinct publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.superhero_name = 'Hawkman' or superhero.superhero_name = 'Karate Kid' or superhero.superhero_name = 'Speedy'
select count(id) from superhero where publisher_id = 1
select cast(count(case when eye_colour_id = 7 then superhero_name else null end) as real) * 100 / count(superhero_name) from superhero
select cast(sum(case when gender.gender = 1 then 1 else 0 end) as real) / sum(case when gender.gender = 2 then 1 else 0 end) from superhero inner join gender on superhero.gender_id = gender.id
select superhero_name from superhero order by height_cm desc limit 1
select id from superpower where power_name = 'cryokinesis'
select superhero_name from superhero where id = 294
select full_name from superhero where weight_kg is null or weight_kg = 0
select colour.colour from colour inner join superhero on colour.id = superhero.eye_colour_id where superhero.full_name = 'Karen Beecher-Duncan'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.full_name = 'Helen Parr'
select race.race from superhero inner join race on superhero.race_id = race.id where superhero.weight_kg = 108 and superhero.height_cm = 188
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.id = 38
select race.race from superhero inner join race on superhero.race_id = race.id inner join hero_attribute on superhero.id = hero_attribute.hero_id order by hero_attribute.attribute_value desc limit 1
select alignment.alignment , superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join alignment on alignment.id = superhero.alignment_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = 'Atom IV'
select superhero.full_name from superhero inner join colour on colour.id = superhero.eye_colour_id where colour.colour = 'Blue' limit 5
select cast(sum(hero_attribute.attribute_value) as real) / count(hero_attribute.hero_id) from alignment inner join superhero on alignment.id = superhero.alignment_id inner join hero_attribute on superhero.id = hero_attribute.hero_id where alignment.alignment = 'Neutral'
select colour.colour from superhero inner join colour on colour.id = superhero.skin_colour_id inner join hero_attribute on superhero.id = hero_attribute.hero_id where hero_attribute.attribute_value = 100
select count(*) from alignment inner join superhero on alignment.id = superhero.alignment_id inner join gender on superhero.gender_id = gender.id where alignment.alignment = 'Good' and gender.gender = 'Female' and superhero.alignment_id = 1
select superhero.superhero_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id where hero_attribute.attribute_value between 75 and 80
select race.race from colour inner join superhero on colour.id = superhero.hair_colour_id inner join gender on superhero.gender_id = gender.id inner join race on race.id = superhero.race_id where colour.colour = 'blue' and gender.gender = 'Male'
select cast(count(case when gender.gender = 2 then 1 else null end) as real) * 100 / count(gender.id) from alignment inner join superhero on alignment.id = superhero.alignment_id inner join gender on superhero.gender_id = gender.id where alignment.alignment = 'Bad'
select count(case when colour.id = 7 then 1 else null end) - count(case when colour.id = 1 then 1 else null end) from superhero inner join colour on colour.id = superhero.eye_colour_id where superhero.weight_kg is null
select hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on attribute.id = hero_attribute.attribute_id where superhero.superhero_name = 'Hulk' and attribute.attribute_name = 'Strength'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = 'Ajax'
select count(superhero.skin_colour_id) from colour inner join superhero on colour.id = superhero.skin_colour_id inner join alignment on superhero.alignment_id = alignment.id where colour.colour = 'Green' and alignment.alignment = 'Bad'
select count(*) from gender inner join superhero on gender.id = superhero.gender_id inner join publisher on superhero.publisher_id = publisher.id where gender.gender = 'Female' and publisher.publisher_name = 'Marvel Comics'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Wind Control' order by superhero.superhero_name asc
select gender.gender from superpower inner join hero_power on superpower.id = hero_power.power_id inner join superhero on hero_power.hero_id = superhero.id inner join gender on superhero.gender_id = gender.id where superpower.power_name = 'Phoenix Force'
select superhero.superhero_name from publisher inner join superhero on publisher.id = superhero.publisher_id where publisher.publisher_name = 'DC Comics' order by superhero.weight_kg desc limit 1
select cast(sum(superhero.height_cm) as real) / count(race.id) from race inner join superhero on race.id = superhero.race_id inner join publisher on publisher.id = superhero.publisher_id where publisher.publisher_name = 'Dark Horse Comics' and race.race < 'Human'
select count(superhero.id) from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on attribute.id = hero_attribute.attribute_id where attribute.attribute_name = 'Speed' and hero_attribute.attribute_value = 100
select case when count(case when publisher.publisher_name = 'DC Comics' then superhero.id else null end) > count(case when publisher.publisher_name = 'Marvel Comics' then superhero.id else null end) then 'DC Comics' else 'Marvel Comics' end as difference from publisher inner join superhero on publisher.id = superhero.publisher_id
select attribute.attribute_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on attribute.id = hero_attribute.attribute_id where superhero.superhero_name = 'Black Panther' order by hero_attribute.attribute_value asc limit 1
select colour.colour from colour inner join superhero on colour.id = superhero.eye_colour_id where superhero.superhero_name = 'Abomination'
select full_name from superhero order by height_cm desc limit 1
select superhero_name from superhero where full_name = 'Charles Chandler'
select cast(count(case when gender.gender = 'Female' then 1 else null end) as real) * 100 / count(superhero.id) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join gender on superhero.gender_id = gender.id where publisher.publisher_name = 'George Lucas'
select cast(count(case when alignment.alignment = 'Good' then 1 else null end) as real) * 100 / count(superhero.id) from publisher inner join superhero on publisher.id = superhero.publisher_id inner join alignment on alignment.id = superhero.alignment_id where publisher.publisher_name = 'Marvel Comics'
select count(*) from superhero where full_name like 'John%'
select hero_attribute.hero_id from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id order by hero_attribute.attribute_value asc limit 1
select full_name from superhero where superhero_name = 'Alien'
select superhero.full_name from superhero inner join colour on colour.id = superhero.eye_colour_id where superhero.weight_kg < 100 and colour.colour = 'Brown'
select hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id where superhero.superhero_name = 'Aquababy'
select superhero.weight_kg , race.race from race inner join superhero on race.id = superhero.race_id where superhero.id = 40
select avg(superhero.height_cm) from alignment inner join superhero on alignment.id = superhero.alignment_id where alignment.alignment = 'Neutral'
select hero_power.hero_id from superpower inner join hero_power on superpower.id = hero_power.power_id where superpower.power_name = 'Intelligence'
select colour.colour from colour inner join superhero on colour.id = superhero.eye_colour_id where superhero.superhero_name = 'Blackwulf'
select distinct superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on superpower.id = hero_power.power_id where superhero.height_cm > ( select avg(height_cm) from superhero ) * 0.8
select distinct drivers.driverref from qualifying inner join drivers on qualifying.driverid = drivers.driverid where qualifying.raceid = 18 and qualifying.q1 limit 5
select drivers.surname from qualifying inner join drivers on qualifying.driverid = drivers.driverid inner join laptimes on drivers.driverid = laptimes.driverid where qualifying.q2 = 19 order by laptimes.lap asc limit 1
select distinct races.year from races inner join circuits on races.circuitid = circuits.circuitid where circuits.location = 'Shanghai'
select races.url from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Circuit de Barcelona-Catalunya'
select distinct races.name from races inner join circuits on races.circuitid = circuits.circuitid where circuits.country = 'Germany'
select distinct results.position from constructors inner join results on constructors.constructorid = results.constructorid inner join races on results.raceid = races.raceid inner join circuits on races.circuitid = circuits.circuitid where constructors.name = 'Renault'
select count(races.raceid) from circuits inner join races on circuits.circuitid = races.circuitid where races.year = 2010 and circuits.country != 'Asia' or circuits.country != 'Europe'
select distinct races.name from races inner join circuits on races.circuitid = circuits.circuitid where circuits.country = 'Spain'
select circuits.lat , circuits.lng from races inner join circuits on races.circuitid = circuits.circuitid where races.name = 'Australian Grand Prix'
select races.url from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Sepang International Circuit'
select distinct races.time from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Sepang International Circuit'
select circuits.lat , circuits.lng from circuits inner join races on circuits.circuitid = races.circuitid inner join results on races.raceid = results.raceid where races.name = 'Abu Dhabi Grand Prix'
select constructors.nationality from results inner join constructorresults on results.constructorid = constructorresults.constructorid inner join constructors on results.constructorid = constructors.constructorid where results.raceid = 24 and constructorresults.points = 1
select distinct results.resultid from qualifying inner join results on qualifying.driverid = results.driverid inner join drivers on drivers.driverid = results.driverid where drivers.forename = 'Bruno' and drivers.surname = 'Senna' and qualifying.raceid = 354 and qualifying.q1 = '1'
select distinct drivers.nationality from qualifying inner join drivers on qualifying.driverid = drivers.driverid where qualifying.raceid = 355 and qualifying.q2 = '0:01:40'
select drivers.number from qualifying inner join drivers on qualifying.driverid = drivers.driverid where qualifying.q3 = 0 and qualifying.raceid = 903
select count(results.driverid) from results inner join races on results.raceid = races.raceid where races.name = 'Bahrain Grand Prix' and races.year = 2007 and results.statusid != 0
select distinct races.year from results inner join races on results.raceid = races.raceid where results.number = 901
select count(distinct results.driverid) from results inner join races on results.raceid = races.raceid where races.date = '2015-11-29'
select drivers.dob from results inner join drivers on results.driverid = drivers.driverid inner join races on results.raceid = races.raceid where races.time is not null order by results.time asc limit 1
sql placeholder
select drivers.surname , drivers.forename from results inner join drivers on results.driverid = drivers.driverid where results.raceid = 933 group by drivers.driverid
select circuits.lat , circuits.lng from circuits inner join races on circuits.circuitid = races.circuitid where races.name = 'Malaysian Grand Prix'
select constructors.url from constructors inner join results on constructors.constructorid = results.constructorid inner join constructorresults on results.constructorid = constructorresults.constructorid where results.raceid = 9 order by constructorresults.points desc limit 1
select distinct results.resultid from drivers inner join qualifying on drivers.driverid = qualifying.driverid inner join results on qualifying.raceid = results.raceid where qualifying.raceid = 345 and drivers.surname = 'di Grassi' and qualifying.q1 = 0
sql placeholder
sql placeholder
select results.time from results inner join drivers on results.driverid = drivers.driverid where drivers.forename = 'Bruce' and drivers.surname = 'McLaren' and results.raceid = 743
select drivers.forename , drivers.surname from results inner join drivers on results.driverid = drivers.driverid inner join races on results.raceid = races.raceid where races.name = 'San Marino Grand Prix' and races.year = 2006 and results.position = 2
select distinct races.year from results inner join races on results.raceid = races.raceid where results.number = 901
select count(distinct drivers.driverid) from results inner join drivers on results.driverid = drivers.driverid inner join races on results.raceid = races.raceid where races.date = '2015-11-29'
select drivers.driverid from results inner join races on results.raceid = races.raceid inner join laptimes on races.raceid = laptimes.raceid inner join drivers on drivers.driverid = laptimes.driverid where races.raceid = '872' order by drivers.dob desc limit 1
select drivers.surname , drivers.forename from results inner join drivers on results.driverid = drivers.driverid inner join laptimes on results.driverid = laptimes.driverid where results.raceid = 348 order by laptimes.time asc limit 1
select distinct drivers.nationality from results inner join drivers on results.driverid = drivers.driverid inner join laptimes on results.raceid = laptimes.raceid where results.raceid = 348
select cast((( select fastestlapspeed from results where raceid = 853 ) - ( select fastestlapspeed from results where raceid = 854) ) as real) * 100 / ( select fastestlapspeed from results where raceid = 854 ) from results inner join drivers on results.driverid = drivers.driverid inner join laptimes on results.raceid = laptimes.raceid where drivers.surname = 'di Resta' and drivers.forename = 'Paul'
select cast(sum(case when results.time = 0 then 1 else 0 end) as real) * 100 / count(*) from results inner join races on results.raceid = races.raceid where races.date = '1983-07-16'
select year from races where name = 'Singapore Grand Prix' order by year asc limit 1
select count(name) as num from races where year = '2005' order by name desc
sql placeholder
select name , date from races where year = 1999 order by round desc limit 1
select year from races group by year order by count(round) desc limit 1
select distinct races.name from races inner join circuits on races.circuitid = circuits.circuitid where races.year = 2017 and circuits.name != '2000'
select circuits.country , circuits.location from circuits inner join races on circuits.circuitid = races.circuitid where races.name = 'European Grand Prix' order by races.year asc limit 1
select races.year from circuits inner join races on circuits.circuitid = races.circuitid where races.name = 'British Grand Prix' and circuits.name = 'Brands Hatch' order by races.year desc limit 1
select count(races.year) from circuits inner join races on circuits.circuitid = races.circuitid where races.name = 'British Grand Prix' and circuits.name = 'Silverstone Circuit'
select distinct drivers.forename , drivers.surname from results inner join drivers on results.driverid = drivers.driverid inner join driverstandings on drivers.driverid = driverstandings.driverid inner join races on results.raceid = races.raceid where races.name = '2010 Singapore Grand Prix'
select drivers.forename , drivers.surname from drivers inner join driverstandings on drivers.driverid = driverstandings.driverid order by driverstandings.points desc limit 1
select drivers.forename , drivers.surname , results.points from results inner join drivers on results.driverid = drivers.driverid inner join driverstandings on drivers.driverid = driverstandings.driverid inner join races on driverstandings.raceid = races.raceid where races.name = 'Chinese Grand Prix' and races.year = 2017 order by driverstandings.position desc limit 3
select drivers.surname , races.name from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid inner join laptimes on results.raceid = laptimes.raceid order by laptimes.time asc limit 1
select avg(laptimes.time) from drivers inner join results on drivers.driverid = results.driverid inner join laptimes on results.driverid = laptimes.driverid inner join races on results.raceid = races.raceid where drivers.forename = 'Sebastian' and drivers.surname = 'Vettel' and races.year = 2009
select cast((sum(case when driverstandings.position > 1 then 1 else 0 end) - sum(case when driverstandings.position > 1 then 1 else 0 end)) as real) * 100 / count(driverstandings.driverid) from races inner join driverstandings on races.raceid = driverstandings.raceid inner join drivers on driverstandings.driverid = drivers.driverid where drivers.surname = 'Hamilton' and races.year >= 2010
select drivers.nationality , drivers.surname , avg(driverstandings.points) from drivers inner join driverstandings on drivers.driverid = driverstandings.driverid group by drivers.driverid order by count(driverstandings.wins) desc limit 1
select dob , max(dob) from drivers where nationality = 'Japanese'
select circuits.name from races inner join circuits on races.circuitid = circuits.circuitid where races.year between 1990 and 2000 group by circuits.name having count(races.year) = 4
select distinct circuits.name , circuits.location , races.name from circuits inner join races on circuits.circuitid = races.circuitid where races.year = 2006 and circuits.country = 'USA'
select distinct races.name , circuits.name , circuits.location from races inner join circuits on races.circuitid = circuits.circuitid where races.year = 2005 and races.date like '9/%/2005'
select races.name from results inner join races on results.raceid = races.raceid inner join drivers on results.driverid = drivers.driverid where drivers.surname = 'Yoong' and drivers.forename = 'Alex' and results.position < 10
select count(races.raceid) from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid inner join circuits on races.circuitid = circuits.circuitid where drivers.surname = 'Schumacher' and circuits.name = 'Sepang International Circuit'
select distinct races.name , races.year from results inner join races on results.raceid = races.raceid inner join drivers on results.driverid = drivers.driverid inner join laptimes on results.driverid = laptimes.driverid where drivers.surname = 'Schumacher' and drivers.forename = 'Michael' and results.fastestlap = laptimes.milliseconds
select avg(driverstandings.points) from results inner join drivers on results.driverid = drivers.driverid inner join driverstandings on drivers.driverid = driverstandings.driverid inner join races on driverstandings.raceid = races.raceid where drivers.forename = 'Eddie' and drivers.surname = 'Irvine' and races.year = 2000
select races.name , results.points from results inner join drivers on results.driverid = drivers.driverid inner join driverstandings on drivers.driverid = driverstandings.driverid inner join races on driverstandings.raceid = races.raceid where drivers.surname = 'Hamilton' and drivers.forename = 'Lewis' order by races.year asc limit 1
select distinct races.date , circuits.country from races inner join circuits on races.circuitid = circuits.circuitid where races.year = 2017 order by races.date asc
select races.name , races.year , circuits.location from results inner join races on results.raceid = races.raceid inner join circuits on races.circuitid = circuits.circuitid order by results.laps desc limit 1
select cast(sum(case when circuits.country = 'Germany' then 1 else 0 end) as real) * 100 / count(races.raceid) from circuits inner join races on circuits.circuitid = races.circuitid where races.name = 'European Grand Prix'
select lat , lng from circuits where location = 'Silverstone'
select circuits.name from circuits inner join races on circuits.circuitid = races.circuitid where circuits.name in ('Silverstone Circuit' , 'Hockenheimring' , 'Hungaroring') order by circuits.lat desc limit 1
select circuitref from circuits where name = 'Marina Bay Street Circuit'
select country from circuits order by alt desc limit 1
select count(driverid) from drivers where code is null
select nationality from drivers where dob is not null order by dob asc limit 1
select surname from drivers where nationality = 'italian'
select url from drivers where forename = 'Anthony' and surname = 'Davidson'
select driverref from drivers where forename = 'Lewis' and surname = 'Hamilton'
select circuits.name from races inner join circuits on races.circuitid = circuits.circuitid where races.name = 'Spanish Grand Prix' and races.year = 2009
select distinct races.year from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Silverstone Circuit'
select races.url from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Silverstone Circuit'
select races.time from races inner join circuits on races.circuitid = circuits.circuitid where races.year = 2010 and circuits.location = 'Abu Dhabi'
select count(races.raceid) from races inner join circuits on races.circuitid = circuits.circuitid where circuits.country = 'Italy'
select races.date from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Barcelona-Catalunya'
select circuits.url from races inner join circuits on races.circuitid = circuits.circuitid where races.year = 2009 and races.name = 'Spanish Grand Prix'
select min(results.fastestlaptime) from results inner join drivers on results.driverid = drivers.driverid inner join laptimes on results.raceid = laptimes.raceid where drivers.surname = 'Hamilton' and drivers.forename = 'Lewis'
select drivers.forename , drivers.surname from drivers inner join results on drivers.driverid = results.driverid inner join laptimes on results.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid where races.name = 'Formula1' order by results.fastestlapspeed desc limit 1
select drivers.driverref from results inner join drivers on results.driverid = drivers.driverid inner join races on results.raceid = races.raceid where races.name = 'Australian Grand Prix' and races.year = 2008 order by results.rank desc limit 1
select distinct races.name from results inner join drivers on results.driverid = drivers.driverid inner join races on results.raceid = races.raceid where drivers.surname = 'Hamilton' and drivers.forename = 'Lewis'
select races.name from results inner join races on results.raceid = races.raceid inner join drivers on drivers.driverid = results.driverid where drivers.surname = 'Hamilton' and drivers.forename = 'Lewis' order by results.rank desc limit 1
select max(results.fastestlapspeed) from results inner join races on results.raceid = races.raceid inner join laptimes on races.raceid = laptimes.raceid where races.name = 'Spanish Grand Prix' and races.year = 2009
select distinct races.year from results inner join drivers on results.driverid = drivers.driverid inner join races on results.raceid = races.raceid where drivers.surname = 'Hamilton' and drivers.forename = 'Lewis'
select distinct results.positionorder from results inner join driverstandings on results.driverid = driverstandings.driverid inner join races on driverstandings.raceid = races.raceid inner join drivers on driverstandings.driverid = drivers.driverid where drivers.surname = 'Hamilton' and drivers.forename = 'Lewis' and races.year = 2008 and races.name = 'Australian Grand Prix'
select drivers.forename , drivers.surname from results inner join drivers on results.driverid = drivers.driverid inner join races on results.raceid = races.raceid where races.year = 2008 and results.grid = 4
select count(results.driverid) from results inner join races on results.raceid = races.raceid where races.name = 'Australian Grand Prix' and races.time is not null
select results.fastestlap from results inner join drivers on results.driverid = drivers.driverid inner join laptimes on results.driverid = laptimes.driverid inner join races on results.raceid = races.raceid where drivers.surname = 'Hamilton' and drivers.forename = 'Lewis' and races.name = 'Australian Grand Prix' and races.date = '2008' order by results.fastestlap desc limit 1
select results.time from results inner join races on results.raceid = races.raceid where races.name = 'Australian Grand Prix' and results.rank = 2 order by results.time desc limit 1
select drivers.driverref , drivers.url from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where races.name = 'Australian Grand Prix' and races.year = 2008
select count(drivers.driverid) from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid inner join driverstandings on drivers.driverid = driverstandings.driverid where races.name = 'Australian Grand Prix' and drivers.nationality = 'American' and races.year = 2008
select count(races.raceid) from races inner join laptimes on races.raceid = laptimes.raceid inner join results on laptimes.raceid = results.raceid where races.year = 2008 and races.name = 'Australian Grand Prix'
select sum(results.points) from results inner join driverstandings on results.driverid = driverstandings.driverid inner join drivers on driverstandings.driverid = drivers.driverid where drivers.surname = 'Hamilton' and drivers.forename = 'Lewis'
select avg(results.fastestlaptime) from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where drivers.surname = 'Hamilton' and drivers.forename = 'Lewis'
select cast(sum(case when results.time is not null then 1 else 0 end) as real) * 100 / count(races.raceid) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and races.year = 2008
select cast((races.time - results.time) as real) * 100 / results.driverid from results inner join races on results.raceid = races.raceid inner join driverstandings on results.driverid = driverstandings.driverid where races.year = 2008 and races.name = 'Australian Grand Prix' order by results.time desc limit 1
select count(circuitid) from circuits where location = 'Melbourne' and country = 'Australia'
select lat , lng from circuits where country = 'USA'
select count(driverid) from drivers where dob > 1980 and nationality = 'British'
select avg(constructorresults.points) from constructors inner join constructorresults on constructors.constructorid = constructorresults.constructorid where constructors.nationality = 'British'
select constructors.name from constructors inner join constructorstandings on constructors.constructorid = constructorstandings.constructorid order by constructorstandings.points desc limit 1
select constructors.name from results inner join constructors on results.constructorid = constructors.constructorid inner join constructorresults on results.constructorid = constructorresults.constructorid where constructorresults.raceid = 291 and constructorresults.points = 0
select count(constructors.name) from results inner join constructors on results.constructorid = constructors.constructorid inner join constructorresults on results.constructorid = constructorresults.constructorid where constructors.nationality = 'Japanese' and results.raceid = 2 group by constructors.constructorid having count(results.raceid) = 2
select constructors.name from results inner join constructors on results.constructorid = constructors.constructorid where results.rank = 1
select count(constructors.name) from results inner join constructors on results.constructorid = constructors.constructorid inner join laptimes on results.raceid = laptimes.raceid where constructors.nationality = 'French' and laptimes.lap > 50
select cast(sum(case when races.time is not null then 1 else 0 end) as real) * 100 / count(drivers.driverid) from results inner join drivers on results.driverid = drivers.driverid inner join races on results.raceid = races.raceid where races.year between 2007 and 2009
select avg(results.time) from results inner join races on results.raceid = races.raceid inner join status on results.statusid = status.statusid where status.status = 'Finished' and races.year is not null
select drivers.forename , drivers.surname from results inner join drivers on results.driverid = drivers.driverid where results.rank = 2 and strftime('%Y' , drivers.dob) > '1975'
select count(drivers.driverid) from results inner join drivers on results.driverid = drivers.driverid inner join races on results.raceid = races.raceid where drivers.nationality = 'Italian' and races.time is null
select drivers.forename , drivers.surname from drivers inner join results on drivers.driverid = results.driverid where results.fastestlaptime = ( select fastestlaptime from results order by fastestlap desc limit 1 )
sql placeholder
select avg(results.fastestlapspeed) from races inner join results on races.raceid = results.raceid where races.name = 'Spanish Grand Prix' and races.year = 2009
select distinct races.name , races.year from results inner join races on results.raceid = races.raceid where results.milliseconds is null order by results.milliseconds asc limit 1
select cast(sum(case when drivers.dob < 1985 then 1 else 0 end) as real) * 100 / count(drivers.driverid) from drivers inner join laptimes on drivers.driverid = laptimes.driverid where strftime('%Y' , laptimes.lap) between 2000 and 2005 and laptimes.lap > 50
select count(distinct drivers.driverid) from drivers inner join laptimes on drivers.driverid = laptimes.driverid where laptimes.milliseconds < 120 and drivers.nationality = 'French'
select distinct code from drivers where nationality = 'American'
select raceid from races where year = 2009
select count(distinct drivers.driverid) from results inner join drivers on results.driverid = drivers.driverid where results.raceid = 18
select code from drivers where nationality = 'Dutch' order by dob asc limit 3
select driverref from drivers where surname = 'Kubica'
select count(driverid) from drivers where nationality = 'Australian' and strftime('%Y' , dob) = '1980'
select distinct drivers.forename , drivers.surname from drivers inner join laptimes on drivers.driverid = laptimes.driverid where drivers.nationality = 'German' and drivers.dob between 1980 and 1990 order by laptimes.time asc limit 3
select driverref from drivers where nationality = 'German' order by dob asc limit 1
select distinct drivers.driverid , drivers.code from drivers inner join results on drivers.driverid = results.driverid inner join laptimes on results.raceid = laptimes.raceid where drivers.dob = ( select max(dob) from drivers where dob = 1971 )
select distinct drivers.forename , drivers.surname from drivers inner join laptimes on drivers.driverid = laptimes.driverid where drivers.nationality = 'Spanish' and drivers.dob < 1982 order by laptimes.time desc limit 10
select distinct races.year from races inner join laptimes on races.raceid = laptimes.raceid where laptimes.lap = ( select fastestlaptime from results order by fastestlaptime desc limit 1 )
select distinct races.year from races inner join laptimes on races.raceid = laptimes.raceid where laptimes.time = ( select max(time) from laptimes )
select distinct drivers.driverid from results inner join drivers on results.driverid = drivers.driverid where results.fastestlaptime = ( select min(time) from laptimes ) limit 5
select count(results.statusid) from results inner join status on results.statusid = status.statusid where results.raceid between 50 and 100 and status.status = 2
select count(races.raceid) , circuits.location , circuits.lng from races inner join circuits on races.circuitid = circuits.circuitid where circuits.country = 'Austria'
select number from results where time is not null group by raceid order by count(raceid) desc limit 1
select distinct drivers.driverref , drivers.nationality , drivers.dob from results inner join qualifying on results.driverid = qualifying.driverid inner join drivers on drivers.driverid = qualifying.driverid where qualifying.raceid = 23 and qualifying.q2 is not null
select distinct races.year , races.date , races.time from qualifying inner join races on qualifying.raceid = races.raceid inner join drivers on drivers.driverid = qualifying.driverid order by drivers.dob desc limit 1
select count(drivers.driverid) from results inner join drivers on results.driverid = drivers.driverid inner join status on results.statusid = status.statusid where status.status = 2 and drivers.nationality = 'American'
select constructors.name , constructors.url from constructors inner join constructorresults on constructors.constructorid = constructorresults.constructorid where constructors.nationality = 'Italian' order by constructorresults.points desc limit 1
select constructors.url from constructors inner join constructorstandings on constructorstandings.constructorid = constructors.constructorid group by constructorstandings.constructorid order by sum(constructorstandings.wins) desc limit 1
select drivers.forename from results inner join drivers on results.driverid = drivers.driverid inner join laptimes on results.driverid = laptimes.driverid inner join races on results.raceid = races.raceid where races.name = 'French Grand Prix' order by laptimes.time asc limit 1
select races.name , results.milliseconds from results inner join races on results.raceid = races.raceid order by results.time asc limit 1
select avg(results.fastestlaptime) from results inner join races on results.raceid = races.raceid inner join drivers on results.driverid = drivers.driverid inner join laptimes on results.raceid = laptimes.raceid where races.year = 2006 and results.rank < 10 group by results.driverid
select distinct drivers.forename , drivers.surname from drivers inner join pitstops on drivers.driverid = pitstops.driverid where drivers.nationality = 'German' and drivers.dob between 1980 and 1985 order by pitstops.duration asc limit 5
select drivers.forename , drivers.surname , results.time from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where races.name = 'Canadian Grand Prix' and races.year = 2008 order by results.time desc limit 1
select results.constructorid , races.url from results inner join races on results.raceid = races.raceid inner join driverstandings on races.raceid = driverstandings.raceid where races.name = 'Singapore Grand Prix' and driverstandings.driverid = 0 order by results.time desc limit 1
select forename , surname , dob from drivers where nationality = 'Austria' and strftime('%Y' , dob) between '1981' and '1991'
sql placeholder
select location , country , lng from circuits where name = 'Hungaroring'
select constructors.name , results.points , constructors.nationality from results inner join constructors on results.constructorid = constructors.constructorid inner join races on results.raceid = races.raceid inner join constructorresults on results.constructorid = constructorresults.constructorid where races.name = 'Monaco Grand Prix' and races.year between 1980 and 2010 order by constructorresults.points desc limit 1
select avg(results.points) from results inner join drivers on results.driverid = drivers.driverid inner join driverstandings on drivers.driverid = driverstandings.driverstandingsid inner join races on driverstandings.raceid = races.raceid where races.name = 'Turkish Grand Prix' and drivers.surname = 'Hamilton' and drivers.forename = 'Lewis'
select cast(count(raceid) as real) / 10 from races where date between '2000-01-01' and '2010-12-31'
select nationality from drivers group by nationality order by count(driverid) desc limit 1
select driverstandings.wins from results inner join driverstandings on results.driverid = driverstandings.driverid where results.rank = 91
select distinct races.name from races inner join results on races.raceid = results.raceid inner join laptimes on results.raceid = laptimes.raceid where results.fastestlapspeed = ( select min(fastestlaptime) from results )
select circuits.location , circuits.country from circuits inner join races on circuits.circuitid = races.circuitid order by races.date desc limit 1
select drivers.forename , drivers.surname from drivers inner join qualifying on drivers.driverid = qualifying.driverid inner join races on qualifying.raceid = races.raceid inner join circuits on races.circuitid = circuits.circuitid where races.year = 2008 and circuits.name = 'Marina Bay Street Circuit' order by qualifying.q3 asc limit 1
select drivers.forename , drivers.nationality , races.name from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid order by drivers.dob desc limit 1
select count(races.raceid) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Canadian Grand Prix' and results.statusid = 3 group by drivers.driverid order by count(races.raceid) desc limit 1
select sum(driverstandings.wins) , drivers.forename , drivers.surname from drivers inner join driverstandings on drivers.driverid = driverstandings.driverid inner join results on driverstandings.raceid = results.driverid order by drivers.dob asc limit 1
select max(pitstops.duration) from drivers inner join pitstops on drivers.driverid = pitstops.driverid
sql placeholder
select max(pitstops.duration) from drivers inner join pitstops on drivers.driverid = pitstops.driverid where drivers.driverref = 'Lewis'
select pitstops.lap from drivers inner join pitstops on drivers.driverid = pitstops.driverid inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where races.name = 'Australian Grand Prix' and drivers.surname = 'Hamilton' and drivers.forename = 'Lewis'
select distinct pitstops.duration from drivers inner join pitstops on drivers.driverid = pitstops.driverid inner join races on pitstops.raceid = races.raceid where races.name = 'Australian Grand Prix' and races.year = 2011
select results.fastestlaptime from drivers inner join results on drivers.driverid = results.driverid inner join laptimes on results.driverid = laptimes.driverid where drivers.surname = 'Hamilton' and drivers.forename = 'Lewis'
select drivers.surname , drivers.forename from drivers inner join results on drivers.driverid = results.driverid inner join laptimes on results.driverid = laptimes.driverid where results.fastestlaptime is not null order by laptimes.time asc limit 1
select races.circuitid from drivers inner join results on drivers.driverid = results.driverid inner join laptimes on results.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid where drivers.driverref = 'Lewis' and results.fastestlaptime = 0.0 order by results.time asc limit 1
select laptimes.time from circuits inner join races on circuits.circuitid = races.circuitid inner join laptimes on races.raceid = laptimes.raceid where races.name = 'Austrian Grand Prix' order by laptimes.lap desc limit 1
select laptimes.time from circuits inner join races on circuits.circuitid = races.circuitid inner join laptimes on races.raceid = laptimes.raceid where circuits.country = 'Italy' order by laptimes.lap desc limit 1
select races.name from races inner join circuits on races.circuitid = circuits.circuitid inner join laptimes on races.raceid = laptimes.raceid where circuits.name = 'Austrian Grand Prix' order by laptimes.time desc limit 1
select pitstops.duration from pitstops inner join races on pitstops.raceid = races.raceid inner join laptimes on laptimes.raceid = races.raceid where races.name = 'Austrian Grand Prix' order by laptimes.time desc limit 1
sql placeholder
select avg(pitstops.milliseconds) from drivers inner join results on drivers.driverid = results.driverid inner join pitstops on results.driverid = pitstops.driverid where drivers.surname = 'Hamilton' and drivers.forename = 'Lewis'
select avg(laptimes.milliseconds) from results inner join circuits on results.raceid = circuits.circuitid inner join races on circuits.circuitid = races.circuitid inner join laptimes on races.raceid = laptimes.raceid where circuits.country = 'Italy'
select player_api_id from player_attributes order by overall_rating desc limit 1
select height , player_name from player order by height desc limit 1
select preferred_foot from player_attributes order by potential asc limit 1
select count(id) from player_attributes where overall_rating between 60 and 65 and defensive_work_rate like 'low'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id order by player_attributes.crossing desc limit 5
select league.name from match inner join league on match.league_id = league.id where match.season = '2015/2016' group by league.name order by sum(match.home_team_goal + match.away_team_goal) desc limit 1
select home_team_goal from match where season = '2015/2016' and home_team_goal - away_team_goal < 0 order by home_team_goal - away_team_goal asc limit 1
select player.player_name from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_fifa_api_id group by player.player_name order by sum(player_attributes.penalties) desc limit 10
select team.team_long_name from team inner join match on team.team_api_id = match.away_team_api_id inner join league on match.league_id = league.id where league.name = 'Scotland Premier League' and match.season = '2009/2010' order by match.away_team_goal - match.home_team_goal desc limit 1
select team.team_short_name , team.team_long_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id group by team.team_short_name , team.team_long_name order by sum(team_attributes.buildupplayspeed) desc limit 4
select league.name from match inner join league on match.league_id = league.id where match.season = '2015/2016' group by league.name order by sum(match.home_team_goal - match.away_team_goal) desc limit 1
select player.birthday - strftime('%Y' , player_attributes.date) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.sprint_speed >= 97 and player_attributes.date between '2013-01-01 00:00:00' and '2015-12-31 00:00:00'
select league.name , count(match.league_id) from match inner join league on match.league_id = league.id group by league.name order by count(match.league_id) desc limit 1
select avg(height) from player where birthday between '1990-01-01 00:00:00' and '1996-01-01 00:00:00'
select player_api_id from player_attributes where date like '2010%' order by overall_rating desc limit 1
select distinct team_attributes.team_fifa_api_id from team inner join team_attributes on team.team_fifa_api_id = team_attributes.team_api_id where team_attributes.buildupplayspeed between 51 and 59
select team.team_long_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team_attributes.buildupplaypassing > 0.5 and team_attributes.date like '2012%' group by team.team_long_name having sum(team_attributes.buildupplaypassing) > 0
select cast(sum(case when player_attributes.preferred_foot = 'left' then 1 else 0 end) as real) * 100 / count(player.player_api_id) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.birthday between '1987-01-01 00:00:00' and '1992-12-31 00:00:00'
select league.name from match inner join league on match.league_id = league.id order by match.home_team_goal + match.away_team_goal desc limit 5
select cast(sum(player_attributes.long_shots) as real) / count(player_attributes.player_api_id) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Ahmed Samir Farag'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player.height > 180 group by player.player_name order by cast(sum(player_attributes.heading_accuracy) as real) / count(player_attributes.player_api_id) desc limit 10
select distinct team.team_long_name from team inner join team_attributes on team.id = team_attributes.team_api_id where team_attributes.chancecreationpassingclass = 'Normal' and team_attributes.date between '2014-01-01 00:00:00' and '2014-01-31 00:00:00' order by team_attributes.chancecreationpassing asc
select distinct league.name from match inner join league on match.league_id = league.id where match.season = '2009/2010' and match.home_team_goal > ( select avg(away_team_goal) from match where season = '2009/2010' )
select team_short_name from team where team_long_name = 'Queens Park Rangers'
select player_name from player where substr(birthday , 1 , 4) = '1970' and substr(birthday , 6 , 2) = '10'
select player_attributes.attacking_work_rate from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Franco Zennaro'
select team_attributes.buildupplaypositioningclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'ADO Den Haag'
select player_attributes.heading_accuracy from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Francois Affolter' and player_attributes.date = '2014-09-18 00:00:00'
select player_attributes.overall_rating from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Gabriel' and strftime('%Y' , player_attributes.date) = '2011'
select sum(case when league.name = 'Scotland Premier League' then 1 else 0 end) from match inner join league on match.league_id = league.id where match.season = '2015/2016'
select player_attributes.preferred_foot from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.birthday is not null order by player.birthday asc limit 1
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player_attributes.potential desc limit 1
select count(player.id) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.weight < 130 and player_attributes.preferred_foot = 'left'
select team.team_short_name from team inner join team_attributes on team.team_api_id = team_attributes.team_fifa_api_id where team_attributes.chancecreationpassingclass = 'Risky'
select player_attributes.defensive_work_rate from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'David Wilson'
select player.birthday from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id order by player_attributes.overall_rating desc limit 1
select league.name from league inner join match on league.country_id = match.country_id inner join country on country.id = match.country_id where country.name = 'Netherlands'
select avg(match.home_team_goal) from country inner join match on country.id = match.country_id where country.name = 'Poland' and match.season = '2010/2011'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.height between 1 and 10 group by player.player_name order by avg(player_attributes.finishing) desc limit 1
select player_name from player where height > 180
select count(id) from player where strftime('%Y' , birthday) = '1990'
select count(player.player_name) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id inner join team on team_attributes.team_fifa_api_id = team.team_fifa_api_id inner join team_attributes on team.team_api_id = team_attributes.team_fifa_api_id where team.team_long_name = 'Adam' and player.weight > 170
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.overall_rating > 80 and strftime('%Y' , player_attributes.date) between '2008' and '2010'
select player_attributes.potential from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Aaron Doran'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.preferred_foot = 'left'
select team.team_long_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team_attributes.buildupplayspeedclass = 'Fast'
select team_attributes.buildupplaypassingclass from team inner join team_attributes on team.id = team_attributes.team_api_id where team.team_short_name = 'CLB'
select team.team_short_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team_attributes.buildupplaypassing > 70
select avg(player_attributes.overall_rating) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.height > 170 and strftime('%Y' , player_attributes.date) between '2010' and '2015'
select player_name from player order by height asc limit 1
select country.name from match inner join league on match.league_id = league.id inner join country on country.id = league.country_id where league.name = 'Italy Serie A'
select team.team_short_name from team inner join team_attributes on team.id = team_attributes.team_api_id where team_attributes.buildupplayspeed = 31 and team_attributes.buildupplaydribbling = 53 and team_attributes.buildupplaypassing = 32
select avg(player_attributes.overall_rating) from player inner join player_attributes on player.id = player_attributes.player_api_id where player.player_name = 'Aaron Doran'
select sum(case when match.date between '2008-08' and '2008-10' then 1 else 0 end) from match inner join league on match.league_id = league.id where league.name = 'Germany 1. Bundesliga'
select team.team_short_name from team inner join match on team.id = match.home_team_api_id where match.home_team_goal = 10 group by team.team_short_name
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.balance = 10 and player_attributes.potential = 61 order by player_attributes.balance desc limit 1
select avg(player_attributes.ball_control) - ( select avg(player_attributes.ball_control) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Abdou Diallo' ) as diff from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Aaron Appindangoye'
select team_long_name from team where team_short_name = 'GEN'
select player_name from player where player_name = 'Aaron Lennon' or player_name = 'Abdelaziz Barrada' order by birthday asc limit 1
select player_name from player order by height desc limit 1
select sum(case when player_attributes.attacking_work_rate = 'low' then 1 else 0 end) from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id inner join match on player.player_api_id = match.away_player_11 or match.away_player_10 = player.player_api_id where player_attributes.preferred_foot = 'left'
select country.name from match inner join league on match.league_id = league.country_id inner join country on country.id = league.country_id where league.name = 'Belgium Jupiler League'
select league.name from league inner join match on league.id = match.league_id inner join country on country.id = match.country_id where country.name = 'Germany'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player_attributes.overall_rating desc limit 1
select count(player.player_fifa_api_id) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.defensive_work_rate = 'high' and strftime('%Y' , player.birthday) < 1986
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Alexis' or player.player_name = 'Ariel Borysiuk' or player.player_name = 'Arouna Kone' order by player_attributes.crossing desc limit 1
select player_attributes.heading_accuracy from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Ariel Borysiuk'
select count(player.id) from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player.height > 180 and player_attributes.volleys > 70
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.volleys > 70 and player_attributes.dribbling > 70
select sum(case when country.name = 'Belgium' then 1 else 0 end) from match inner join country on country.id = match.country_id where match.season = '2008/2009'
select player_attributes.long_passing from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.birthday is not null order by player.birthday asc limit 1
select sum(case when match.date like '2009-04%' then 1 else 0 end) from match inner join league on match.league_id = league.id where league.name = 'Belgium Jupiler League'
select league.name from match inner join league on match.league_id = league.id where match.season = '2008/2009' group by league.name order by count(match.id) desc limit 1
select avg(player_attributes.overall_rating) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where strftime('%Y' , player.birthday) < '1986'
select cast((sum(case when player.player_name = 'Ariel Borysiuk' then player_attributes.overall_rating else 0 end) - sum(case when player.player_name = 'Paulin Puel' then player_attributes.overall_rating else 0 end)) as real) * 100 / sum(case when player.player_name = 'Paulin Puel' then player_attributes.overall_rating else 0 end) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id
select avg(team_attributes.buildupplayspeed) from team inner join team_attributes on team.team_fifa_api_id = team_attributes.team_fifa_api_id where team.team_long_name = 'Heart of Midlothian'
select avg(player_attributes.overall_rating) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Pietro Marino'
select sum(player_attributes.crossing) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Aaron Lennox'
select team_attributes.chancecreationpassing , team_attributes.chancecreationpassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'Ajax' order by team_attributes.chancecreationpassing desc limit 1
select player_attributes.preferred_foot from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Abdou Diallo' order by player_attributes.preferred_foot desc limit 1
select player_attributes.overall_rating from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Dorlan Pabon' order by player_attributes.overall_rating desc limit 1
select avg(match.away_team_goal) from team inner join match on team.team_api_id = match.away_team_api_id inner join country on match.country_id = country.id where team.team_long_name = 'Parma' and country.name = 'Italy'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.overall_rating = 77 and player_attributes.date = '2016-06-23%' order by player.birthday asc limit 1
select player_attributes.overall_rating from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Aaron Mooy' and player_attributes.date = '2016-02-04 00:00:00'
select player_attributes.potential from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Francesco Parravicini' and player_attributes.date = '2010-08-30 00:00:00'
select player_attributes.attacking_work_rate from player inner join player_attributes on player.id = player_attributes.player_api_id where player.player_name = 'Francesco Migliore' and player_attributes.date = '2015-05-01 00:00:00'
select player_attributes.defensive_work_rate from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Kevin Berigaud' and player_attributes.date = '2013-02-22 00:00:00'
select player_attributes.date from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Kevin Constant' order by player_attributes.crossing desc limit 1
select team_attributes.buildupplayspeedclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'Willem II' and team_attributes.date = '2012-02-22 00:00:00'
select team_attributes.buildupplaydribblingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_short_name = 'LEI' and team_attributes.date = '2015-09-10 00:00:00'
select team_attributes.buildupplaypassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'FC Lorient' and team_attributes.date = '2010-02-22'
select team_attributes.chancecreationpassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'PEC Zwolle' and team_attributes.date = '2013-09-20 00:00:00'
select team_attributes.chancecreationcrossingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'Hull City' and team_attributes.date = '2010-02-22 00:00:00'
select team_attributes.defenceaggressionclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'Hannover 96' and team_attributes.date = '2015-09-10 00:00:00'
select avg(player_attributes.overall_rating) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Marko Arnautovic' and player_attributes.date between '2007-02-22 00:00:00' and '2016-04-21 00:00:00'
select cast((sum(case when player.player_name = 'Landon Donovan' then player_attributes.overall_rating else 0 end) - sum(case when player.player_name = 'Jordan Bowery' then player_attributes.overall_rating else 0 end)) as real) * 100 / sum(case when player.player_name = 'Landon Donovan' then player_attributes.overall_rating else 0 end) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id
select player_name from player order by height desc limit 5
select player_api_id from player order by weight desc limit 10
select player_name from player where strftime('%Y' , current_timestamp) - strftime('%Y' , birthday) > 34
select sum(match.home_team_goal) from match inner join player on player.player_api_id = match.away_player_10 or player.player_api_id = match.away_player_9 where player.player_name = 'Aaron Lennon'
select sum(case when player.player_name = 'Daan Smith' then 1 else 0 end) as num from player inner join match on player.player_api_id = match.away_player_11
select sum(case when player.birthday < 31 then 1 else 0 end) from match inner join player on player.player_api_id = match.away_player_11
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id order by player_attributes.overall_rating desc limit 10
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id order by player_attributes.potential desc limit 1
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.attacking_work_rate = 'high'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.finishing = 1 order by player.birthday asc limit 1
select player.player_name from match inner join league on player.player_api_id = match.away_player_10 inner join player on match.home_player_1 = player.player_api_id inner join country on country.id = match.country_id where country.name = 'Belgium'
sql placeholder
select country.name from player inner join match on player.player_api_id = match.home_player_1 inner join country on match.country_id = country.id group by country.name order by avg(player.weight) desc limit 1
select team.team_long_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team_attributes.buildupplayspeedclass = 'Slow'
select team.team_short_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team_attributes.chancecreationpassingclass = 'Safe'
select avg(player.height) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id inner join league on player_attributes.id = league.id inner join country on league.country_id = country.id where country.name = 'Italy'
select player_name from player where height > 180 order by height desc limit 3
select count(player_fifa_api_id) from player where player_name like 'Aaron%' and birthday > '1990'
select sum(case when player_attributes.jumping = 6 then 1 else 0 end) - sum(case when player_attributes.jumping = 23 then 1 else 0 end) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id
select id from player_attributes order by potential asc limit 3
select count(id) from player_attributes where preferred_foot = 'left' and crossing = ( select max(crossing) from player_attributes )
select cast(sum(case when player_attributes.stamina > 80 then 1 else 0 end) as real) * 100 / count(player.player_name) from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id
select country.name from match inner join league on match.league_id = league.id inner join country on country.id = league.country_id where league.name = 'Poland Ekstraklasa'
select home_team_goal , away_team_goal from match where date like '2008-09-24%'
select player_attributes.sprint_speed , player_attributes.agility , player_attributes.acceleration from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Alexis Blin'
select team_attributes.buildupplayspeedclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'KSV Cercle Brugge'
select sum(case when match.season = '2015/2016' then 1 else 0 end) from match inner join league on match.league_id = league.id where league.country_id = 'I' and league.name = 'Serie A'
select max(match.home_team_goal) from match inner join league on match.league_id = league.id inner join country on league.country_id = country.id where league.name = 'Netherlands Eredivisie'
select player_attributes.finishing , player_attributes.curve from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player.weight desc limit 1
select team.team_long_name from team inner join match on team.team_api_id = match.home_team_api_id or team.team_api_id = match.away_team_api_id where match.season = '2015/2016' group by team.team_long_name order by count(team.id) desc limit 1
select team.team_long_name from team inner join match on team.team_api_id = match.away_team_api_id group by team.team_long_name order by sum(match.away_team_goal) desc limit 1
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id order by player_attributes.overall_rating desc limit 1
select cast(sum(case when player_attributes.overall_rating > 70 then 1 else 0 end) as real) * 100 / count(player.id) from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player.height < 180
select case when sum(case when admission = '+' then 1 else 0 end) > sum(case when admission = '-' then 1 else 0 end) then 'in-patient' else 'outpatient' end from patient
select cast(sum(case when sex = 'F' and strftime('%Y' , birthday) > '1930' then 1 else 0 end) as real) * 100 / count(id) from patient
select cast(sum(case when admission = '+' then 1 else 0 end) as real) * 100 / count(*) from patient where birthday between '1930-01-01' and '1940-12-31'
select cast(sum(case when admission = '+' then 1 else 0 end) as real) / sum(case when admission = '-' then 1 else 0 end) from patient where diagnosis = 'SLE'
select distinct examination.diagnosis , laboratory.date from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where patient.id = 30609
sql placeholder
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.ldh > '500'
select patient.id , patient.birthday - strftime('%Y' , examination.kct) from patient inner join examination on patient.id = examination.id where examination.rvvt = '+'
select patient.id , patient.sex , patient.diagnosis from patient inner join examination on patient.id = examination.id where examination.thrombosis = 2
sql placeholder
select patient.id , patient.sex , patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.alb < 3.5
select cast(sum(case when patient.sex = 'F' then 1 else 0 end) as real) * 100 / count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.tp < '6.0' or laboratory.tp > '8.5'
sql placeholder
select count(*) from patient where strftime('%Y' , admission) = '1997' and sex = 'F' and description = 'Inpatient'
sql placeholder
sql placeholder
select min(patient.birthday) - max(patient.birthday) from patient inner join laboratory on patient.id = laboratory.id where laboratory.tg > 200
select examination.symptoms , patient.diagnosis from patient inner join examination on patient.id = examination.id order by patient.birthday asc limit 1
select cast(count(patient.id) as real) / 12 from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , laboratory.date) = '1998' and patient.sex = 'M'
sql placeholder
select cast(sum(case when patient.sex = 'M' then 1 else 0 end) as real) / sum(case when patient.sex = 'F' then 1 else 0 end) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ua < '8.0'
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select sex from patient where diagnosis = 'AORTITIS' order by id asc limit 1
sql placeholder
select distinct patient.sex from patient inner join laboratory on patient.id = laboratory.id where laboratory.date = '1992-06-12' and laboratory.gpt = 9 and patient.sex = 'M'
select strftime('%Y' , patient.birthday) - strftime('%Y' , laboratory.date) as age from patient inner join laboratory on patient.id = laboratory.id where laboratory.date = '1991-10-21' and laboratory.ua = 8.4
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.date between '1987-07-06' and '1996-01-31' and laboratory.gpt > 30 and laboratory.alb < 4
select count(id) from patient where sex = 'F' and strftime('%Y' , admission) = '1964' and birthday = '1964'
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select patient.sex from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where examination.diagnosis = 'PSS' and laboratory.crp > 2 and laboratory.cre = 1 and laboratory.ldh = 123
select avg(laboratory.alb) from patient inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SLE' and patient.sex = 'F' and laboratory.plt > 400
select examination.symptoms from patient inner join examination on patient.id = examination.id where patient.diagnosis = 'SLE' group by examination.symptoms order by count(examination.symptoms) desc limit 1
select description , diagnosis from patient where id = 48473 order by description asc limit 1
select count(diagnosis) from patient where diagnosis = 'APS' and sex = 'F'
select count(distinct patient.id) from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , laboratory.date) = '1997' and laboratory.tp < 8.5
select cast(sum(case when patient.diagnosis like '%ITP%' then 1 else 0 end) as real) * 100 / sum(case when patient.diagnosis like '%SLE%' then 1 else 0 end) from patient inner join examination on patient.id = examination.id where examination.symptoms = 'thrombocytopenia' and patient.diagnosis = 'SLE'
select cast(sum(case when sex = 'F' then 1 else 0 end) as real) * 100 / count(id) from patient where strftime('%Y' , birthday) = '1980' and diagnosis = 'RA'
sql placeholder
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'F' and laboratory.wbc < 3.5
sql placeholder
select laboratory.ua from patient inner join laboratory on patient.id = laboratory.id where patient.id = 57266 and patient.sex = 'M' or patient.sex = 'F' and laboratory.ua > 8.0
select laboratory.date from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where patient.id = 48473 and laboratory.got >= 60
select distinct patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , laboratory.date) = '1994' and laboratory.got < 60
select distinct patient.id from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.gpt >= 60
select distinct patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.gpt > 60 order by patient.birthday desc
select cast(sum(laboratory.ldh) as real) / count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ldh < 500
select patient.id , patient.birthday - strftime('%Y' , current_timestamp) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ldh between 100 and 300
select distinct patient.admission from patient inner join laboratory on patient.id = laboratory.id where laboratory.alp < 300
select patient.id , laboratory.alp from patient inner join laboratory on patient.id = laboratory.id where patient.birthday = '1982-04-01' and laboratory.alp < 300
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.tp < 6.0
select laboratory.tp - laboratory.tp from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'F' and laboratory.tp > 8.5
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.alb < 3.5 or laboratory.alb >= 5.5 order by patient.birthday asc
select distinct patient.id , laboratory.alb from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , patient.birthday) = '1982' and laboratory.alb between 3.5 and 5.5
select cast(sum(case when patient.sex = 'F' then 1 else 0 end) as real) * 100 / count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ua > 6.5 and patient.sex = 'M'
select cast(sum(laboratory.ua) as real) / count(patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where patient.sex = 'M' or patient.sex = 'F' and laboratory.ua < 8.0
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.un > 29
sql placeholder
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.cre >= 1.5
select case when sum(case when patient.sex = 'M' then 1 else 0 end) > sum(case when patient.sex = 'F' then 1 else 0 end) then 'TRUE' else 'FALSE' end as result from patient inner join laboratory on patient.id = laboratory.id where laboratory.cre >= 1.5
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.tg > 100
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , laboratory.date) - strftime('%Y' , patient.birthday) > 50
select distinct patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.cpk < 250 and patient.admission = '-'
select count(distinct patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and strftime('%Y' , patient.birthday) between '1936' and '1956' and laboratory.cpk > 250
sql placeholder
select patient.id , laboratory.glu from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , patient.description) >= '1991' and laboratory.glu < 180
select distinct patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.wbc < 3.5 or laboratory.wbc >= 9.0
select distinct patient.diagnosis , strftime('%Y' , current_timestamp) - strftime('%Y' , patient.birthday) as age from patient inner join laboratory on patient.id = laboratory.id where laboratory.rbc < 3.5
select case when sum(case when patient.admission = '+' then 1 else 0 end) - sum(case when patient.admission = '-' then 1 else 0 end) > 50 then 'Yes' else 'No' end from patient inner join laboratory on patient.id = laboratory.id where laboratory.rbc < 3.5 or laboratory.rbc >= 6.0 and patient.sex = 'F'
select distinct patient.id , patient.sex from patient inner join laboratory on patient.id = laboratory.id where laboratory.hgb < 10 and patient.admission = '-'
select patient.id , patient.sex from patient inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SLE' and laboratory.hgb >= 10 and patient.birthday < 17 order by patient.birthday asc limit 1
select patient.id , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.hct > 52 group by patient.id having count(laboratory.id) > 2
select avg(hct) from laboratory where strftime('%Y' , date) = '1991' and hct < 29
select sum(case when laboratory.plt < 100 then 1 else 0 end) , sum(case when laboratory.plt > 400 then 1 else 0 end) from patient inner join laboratory on patient.id = laboratory.id
select distinct patient.id from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , laboratory.date) - strftime('%Y' , patient.birthday) < 50 and laboratory.plt > 100 and laboratory.plt <= 400
select cast(sum(case when patient.sex = 'F' then 1 else 0 end) as real) * 100 / count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , laboratory.date) - strftime('%Y' , patient.birthday) > 55
sql placeholder
sql placeholder
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.thrombosis = 3 and laboratory.aptt > 45
select count(distinct patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.fg < 150 and laboratory.fg >= 450
select count(distinct patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.birthday > '1980-01-01' and laboratory.fg < 150 and laboratory.fg < 450
sql placeholder
sql placeholder
select count(distinct examination.id) from examination inner join laboratory on examination.id = laboratory.id where examination.symptoms = 'abortion' and laboratory.igg < 900
select count(patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.symptoms is not null and laboratory.igg >= 900 and laboratory.igg <= 2000
sql placeholder
sql placeholder
select patient.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.igm < 40 and laboratory.igm < 400 group by patient.diagnosis order by count(patient.diagnosis) desc limit 1
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.crp like '+' or laboratory.crp like '-' or laboratory.crp < 1.0
select count(distinct patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.crp >= 1.0 and strftime('%Y' , laboratory.date) - strftime('%Y' , patient.birthday) < 18
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.ra in ('-' , '+-') and examination.kct = '+'
select distinct patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , patient.birthday) >= '1995' and laboratory.ra in ('-' , '+-')
select patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.rf < 20 and strftime('%Y' , patient.birthday) - strftime('%Y' , laboratory.rf) > 60
select count(patient.id) from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'Normal' and examination.thrombosis = 0
sql placeholder
sql placeholder
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where patient.diagnosis = 'APS' and laboratory.c4 > 10
select count(distinct patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.rnp = '-' or laboratory.rnp = '+-' and patient.admission = '+'
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.rnp not in ('-' , '+-') order by patient.birthday desc limit 1
select count(patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where examination.thrombosis = 1 and laboratory.sm in ('-' , '+-')
select patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.sm in ('-' , '+-') order by patient.birthday desc limit 3
sql placeholder
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where patient.sex = 'M' and laboratory.sc170 in ('-' , '+-') and examination.symptoms = 'vertigo'
sql placeholder
sql placeholder
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.ssb in ('-' , '+-') and patient.diagnosis = 'SLE'
select count(distinct examination.id) from examination inner join patient on examination.id = patient.id where patient.diagnosis = 'Normal' and examination.symptoms is not null
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.centromea in ('-' , '+-') and laboratory.ssb in ('-' , '+-')
select distinct patient.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.dna >= 8
select count(distinct patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.dna < 8 and patient.description is null
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.dna < 8 and patient.admission = '+'
select cast(sum(case when patient.diagnosis = 'SLE' then 1 else 0 end) as real) * 100 / count(patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.got >= 60
select count(distinct patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.got < 60 and patient.sex = 'M'
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.got >= 60 order by patient.birthday desc limit 1
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.gpt < 60 order by laboratory.got desc limit 3
select count(distinct patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.got < 60
sql placeholder
sql placeholder
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.admission = '+' and laboratory.alp >= 300
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.alp < 300 and patient.admission = '-'
select distinct patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.tp < 6.0
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SJS' and laboratory.tp between 6.0 and 8.5
sql placeholder
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.alb between 3.5 and 5.5 and laboratory.tp between 6.0 and 8.5
sql placeholder
select max(examination.ana) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.cre < 1.5 and patient.diagnosis = 'Normal'
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select count(patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.tg < 200 and examination.symptoms is not null
select patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.tg < 200 order by laboratory.tg desc limit 1
select distinct patient.id from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.thrombosis = 0 and laboratory.cpk < 250
select count(distinct examination.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.cpk < 250 and examination.kct = '+' or examination.rvvt = '+' or examination.lac = '+'
select min(patient.birthday) from patient inner join laboratory on patient.id = laboratory.id where laboratory.glu > 180
select count(patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.thrombosis = 0 and laboratory.glu < 180
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.admission = '+' and laboratory.wbc between 3.5 and 9.0
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SLE' and laboratory.wbc between 3.5 and 9.0
select patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.rbc < 3.5 and laboratory.rbc >= 6.0 and patient.admission = '-'
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.plt > 100 and laboratory.plt < 400 and examination.symptoms is not null
select distinct laboratory.plt from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where patient.diagnosis = 'MCTD' and laboratory.plt > 100 and laboratory.plt < 400
select cast(sum(laboratory.pt) as real) / count(laboratory.id) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.pt < 14
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.thrombosis = 2 or examination.thrombosis = 1 and laboratory.pt < 14
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Angela' and member.last_name = 'Sanders'
select count(major.major_id) from major inner join member on major.major_id = member.link_to_major where major.college = 'College of Engineering'
select member.first_name , member.last_name from major inner join member on major.major_id = member.link_to_major where major.department = 'Art and Design Department'
select count(member.first_name) from event inner join attendance on event.event_id = attendance.link_to_event inner join member on member.member_id = attendance.link_to_member where event.event_name = 'Women''s Soccer'
select member.phone from event inner join attendance on event.event_id = attendance.link_to_event inner join member on attendance.link_to_member = member.member_id where event.event_name = 'Women''s Soccer'
select count(member.member_id) from event inner join attendance on event.event_id = attendance.link_to_event inner join member on attendance.link_to_member = member.member_id where event.event_name = 'Women''s Soccer' and member.t_shirt_size = 'Medium'
select event.event_name from event inner join attendance on event.event_id = attendance.link_to_event inner join member on member.member_id = attendance.link_to_member group by event.event_name order by count(attendance.link_to_event) desc limit 1
select major.college from major inner join member on major.major_id = member.link_to_major where member.position = 'Vice President'
select event.event_name from event inner join attendance on event.event_id = attendance.link_to_event inner join member on attendance.link_to_member = member.member_id where member.first_name = 'Maya' and member.last_name = 'Mclean'
select count(attendance.link_to_event) from member inner join attendance on member.member_id = attendance.link_to_member inner join event on attendance.link_to_event = event.event_id where member.first_name = 'Sacha' and member.last_name = 'Harrison' and strftime('%Y' , event.event_date) = '2019'
select count(*) from ( select event.type as num from event inner join attendance on event.event_id = attendance.link_to_event inner join member on attendance.link_to_member = member.member_id where member.position = 'Member' group by event.type having count(event.event_id) > 10 ) t3
select event_name from event where event_id > 20
select cast(count(attendance.link_to_event) as real) / count(distinct event.event_name) from event inner join attendance on event.event_id = attendance.link_to_event where strftime('%Y' , event.event_date) = '2020' and event.type = 'Meeting'
select expense_description from expense order by cost desc limit 1
select count(member.member_id) from major inner join member on major.major_id = member.link_to_major where major.major_name = 'Environmental Engineering'
select member.first_name , member.last_name from event inner join attendance on event.event_id = attendance.link_to_event inner join member on attendance.link_to_member = member.member_id where event.event_name = 'Laugh Out Loud'
select member.last_name from major inner join member on major.major_id = member.link_to_major where major.major_name = 'Law and Constitutional Studies'
select zip_code.county from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Sherri' and member.last_name = 'Ramsey'
select major.college from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Tyler' and member.last_name = 'Hewitt'
select income.amount from member inner join income on member.member_id = income.link_to_member where member.position = 'Vice President'
select budget.spent from event inner join budget on event.event_id = budget.link_to_event where event.event_name like 'September Meeting' and budget.category = 'Food'
select zip_code.city , zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code where member.position = 'President'
select member.first_name , member.last_name from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.state = 'Illinois'
select budget.spent from event inner join budget on event.event_id = budget.link_to_event where event.event_name like 'September Meeting%' and budget.category = 'Advertisement'
select major.department from major inner join member on major.major_id = member.link_to_major where member.first_name = 'Pierce' and member.last_name = 'Guidi'
select sum(budget.amount) from event inner join budget on event.event_id = budget.link_to_event where event.event_name = 'October Speaker'
select expense.approved from event inner join expense on event.event_id = expense.expense_id where event.event_name like 'October Meeting' and event.event_date like '2019-10-08'
select sum(expense.cost) / count(expense.expense_id) from member inner join expense on member.member_id = expense.link_to_member where member.first_name = 'Elijah' and member.last_name = 'Allen' and strftime('%Y' , expense.expense_date) = '9' and strftime('%m' , expense.expense_date) = '10'
select sum(case when strftime('%Y' , event.event_date) = '2019' then budget.amount else 0 end) - sum(case when strftime('%Y' , event.event_date) = '2020' then budget.amount else 0 end) from budget inner join event on budget.link_to_event = event.event_id
select location from event where event_name = 'Spring Budget Review'
select cost from expense where expense_description = 'Posters' and expense_date = '2019-09-04'
select remaining from budget where category = 'Food' and amount = ( select max(amount) from budget where category = 'Food' )
select notes from income where source = 'Fundraising' and date_received = '2019-09-14'
select count(major_id) from major where college = 'College of Humanities and Social Sciences'
select phone from member where first_name = 'Carlo' and last_name = 'Jacobs'
select distinct zip_code.county from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Adela' and member.last_name = 'O''Gallagher'
select count(event.event_id) from event inner join budget on event.event_id = budget.link_to_event inner join expense on expense.link_to_budget = budget.budget_id where event.event_name = 'November Meeting' and budget.remaining < 0
select sum(budget.amount) from event inner join budget on event.event_id = budget.link_to_event where event.event_name = 'September Speaker'
select distinct event.status from expense inner join budget on expense.link_to_budget = budget.link_to_event inner join event on event.event_id = budget.link_to_event where expense.expense_description = 'Post Cards , Posters' and expense.expense_date = '2019-8-20'
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Brent' and member.last_name = 'Thomason'
select count(*) from major inner join member on major.major_id = member.link_to_major where major.major_name = 'Human Development and Family Studies' and member.t_shirt_size = 'Large'
select zip_code.type from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Christof' and member.last_name = 'Nielson'
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.position = 'Vice President'
select zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Sacha' and member.last_name = 'Harrison'
select major.department from major inner join member on major.major_id = member.link_to_major where member.position = 'President'
select income.date_received from member inner join income on member.member_id = income.link_to_member where member.first_name = 'Connor' and member.last_name = 'Hilton'
select member.first_name , member.last_name from income inner join member on income.link_to_member = member.member_id where income.source = 'Dues' order by income.date_received asc limit 1
select cast(sum(case when event.event_name = 'Yearly Kickoff' then budget.amount else 0 end) as real) * 100 / sum(case when event.event_name = 'October Meeting' then budget.amount else 0 end) from budget inner join event on budget.link_to_event = event.event_id
select cast(sum(case when budget.category = 'Parking' then budget.amount else 0 end) as real) * 100 / sum(budget.amount) from budget inner join event on budget.link_to_event = event.event_id
select sum(cost) from expense where expense_description = 'Pizza'
select count(city) from zip_code where county = 'Orange County' and state = 'Virginia'
select department from major where college = 'College of Humanities and Social Sciences'
select zip_code.city , zip_code.county , zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Amy' and member.last_name = 'Firth'
select expense.expense_description from budget inner join expense on budget.budget_id = expense.link_to_budget order by budget.remaining asc limit 1
select member.first_name , member.last_name from member inner join attendance on member.member_id = attendance.link_to_member inner join event on attendance.link_to_event = event.event_id where event.event_name = 'October Meeting'
select major.college from major inner join member on major.major_id = member.link_to_major group by major.college order by count(major.college) desc limit 1
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.phone = '809-555-3360'
select event.event_name from event inner join budget on event.event_id = budget.link_to_event order by budget.amount desc limit 1
select expense.expense_description from member inner join expense on member.member_id = expense.link_to_member where member.position = 'Vice President'
select count(member.member_id) from event inner join attendance on event.event_id = attendance.link_to_event inner join member on attendance.link_to_member = member.member_id where event.event_name = 'Women''s Soccer'
select income.date_received from member inner join income on member.member_id = income.link_to_member where member.first_name = 'Casey' and member.last_name = 'Mason'
select count(zip_code.zip_code) from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.state = 'Maryland'
select count(attendance.link_to_event) from member inner join attendance on member.member_id = attendance.link_to_member inner join event on attendance.link_to_event = event.event_id where member.phone = '954-555-6240'
select member.first_name , member.last_name from major inner join member on major.major_id = member.link_to_major where major.department = 'School of Applied Sciences , Technology and Education'
select event.event_name from budget inner join event on budget.link_to_event = event.event_id where event.status = 'Closed' order by cast(budget.spent as real) / budget.amount desc limit 1
select count(member_id) from member where position = 'President'
select max(budget.spent) from event inner join budget on event.event_id = budget.link_to_event
select count(event_id) from event where strftime('%Y' , event_date) = '2020' and type = 'Meeting'
select sum(spent) from budget where category = 'Food'
select member.first_name , member.last_name from member inner join attendance on member.member_id = attendance.link_to_member group by member.first_name , member.last_name having count(attendance.link_to_event) > 7
sql placeholder
select member.first_name , member.last_name from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.state = 'South Carolina' and zip_code.city = 'Georgetown'
select count(income.income_id) from member inner join income on member.member_id = income.link_to_member where member.first_name = 'Grant' and member.last_name = 'Gilmour'
select member.first_name , member.last_name from member inner join income on member.member_id = income.link_to_member where income.amount > 40
select sum(expense.cost) from event inner join expense on event.event_id = expense.expense_id where event.event_name = 'Yearly Kickoff'
select member.first_name , member.last_name from member inner join budget on member.member_id = budget.link_to_event inner join event on event.event_id = budget.link_to_event where event.event_name = 'Yearly Kickoff'
select member.first_name , member.last_name , income.source from income inner join member on income.link_to_member = member.member_id order by income.amount desc limit 1
select event.event_name from expense inner join event on expense.expense_id = event.event_id order by expense.cost asc limit 1
sql placeholder
select cast(sum(case when major_name = 'Finance' then 1 else 0 end) as real) / sum(case when major_name = 'Physics' then 1 else 0 end) from major
select source from income where date_received >= '2019-09-01' and date_received < '2019-09-30' order by amount desc limit 1
select first_name , last_name , email from member where position = 'Secretary'
select count(member.member_id) from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Physics Teaching'
select count(member.member_id) from event inner join attendance on event.event_id = attendance.link_to_event inner join member on attendance.link_to_member = member.member_id where event.event_name like 'Community Theater' and strftime('%Y' , event.event_date) = '2019'
select count(event.event_name) , major.major_name from event inner join attendance on event.event_id = attendance.link_to_event inner join member on attendance.link_to_member = member.member_id inner join major on member.link_to_major = major.major_id where member.first_name = 'Luisa' and member.last_name = 'Guidi'
select avg(budget.spent) from event inner join budget on event.event_id = budget.link_to_event where budget.category = 'Food' and budget.event_status = 'Closed'
select event.event_name from budget inner join event on budget.link_to_event = event.event_id where budget.category = 'Advertisement' order by budget.spent desc limit 1
select attendance.link_to_member from event inner join attendance on event.event_id = attendance.link_to_event inner join member on attendance.link_to_member = member.member_id where member.first_name = 'Maya' and member.last_name = 'Mclean' and event.event_name = 'Women''s Soccer'
select cast(sum(case when type = 'Community Service' then 1 else 0 end) as real) * 100 / count(event_id) from event where event_date like '2019%'
select expense.cost from expense inner join event on expense.expense_id = event.event_id where event.event_name = 'September Speaker' and expense.expense_description = 'Posters'
select t_shirt_size from member group by t_shirt_size order by count(t_shirt_size) desc limit 1
select event.event_name from budget inner join event on budget.link_to_event = event.event_id where event.status = 'Closed' order by budget.remaining asc limit 1
sql placeholder
select budget.amount , budget.category from event inner join budget on event.event_id = budget.link_to_event where event.event_name = 'April Speaker' order by budget.amount asc
select budget_id from budget where category = 'Food' order by amount desc limit 1
sql placeholder
select sum(cost) from expense where expense_description = 'Parking'
select sum(cost) from expense where expense_date = '2019-08-20'
select member.first_name , member.last_name , expense.cost from member inner join expense on member.member_id = expense.link_to_member where member.member_id = 'rec4BLdZHS2Blfp4v'
select expense.expense_description from member inner join expense on member.member_id = expense.link_to_member where member.first_name = 'Sacha' and member.last_name = 'Harrison'
select expense.expense_description from member inner join expense on member.member_id = expense.link_to_member where member.t_shirt_size = 'X-Large'
select member.zip from expense inner join member on expense.link_to_member = member.member_id inner join zip_code on member.zip = zip_code.zip_code where expense.cost < 50
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Phillip' and member.last_name = 'Cullen'
select member.position from major inner join member on major.major_id = member.link_to_major where major.major_name = 'Business'
select count(*) from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Business' and member.t_shirt_size = 'Medium'
select distinct event.type from event inner join budget on event.type = budget.link_to_event where budget.remaining > 30
select distinct budget.category from budget inner join event on budget.link_to_event = event.event_id where event.location = 'MU 215'
select distinct budget.category from budget inner join event on budget.link_to_event = event.event_id where event.event_date = '2020-03-24T12:00:00'
select distinct major.major_name from member inner join major on member.link_to_major = major.major_id where member.position = 'Vice President'
select cast(sum(case when major.major_name = 'Mathematics' then 1 else 0 end) as real) * 100 / count(major.major_id) from major inner join member on major.major_id = member.link_to_major
select distinct budget.category from event inner join budget on event.event_id = budget.link_to_event where event.location = 'MU 215'
select count(income_id) from income where amount = 50
select count(member_id) from member where t_shirt_size = 'X-Large' and position = 'Member'
select count(major_id) from major where college = 'College of Agriculture and Applied Sciences' and department = 'School of Applied Sciences , Technology and Education'
select member.last_name , major.department , major.college from major inner join member on major.major_id = member.link_to_major where major.major_name = 'Environmental Engineering'
select budget.category from event inner join budget on event.event_id = budget.link_to_event where event.location = 'MU 215' and event.type = 'Guest Speaker' and budget.spent = 0
select zip_code.city , zip_code.state from major inner join member on major.major_id = member.link_to_major inner join zip_code on member.zip = zip_code.zip_code where major.department = 'Electrical and Computer Engineering Department' and member.position = 'Member'
select event.event_name from event inner join attendance on event.event_id = attendance.link_to_event inner join member on attendance.link_to_member = member.member_id where member.position = 'Vice President' and event.location = '900 E. Washington St.' and event.type = 'Social'
select member.last_name , member.position from expense inner join member on expense.link_to_member = member.member_id where expense.expense_date = '2019-09-10' and expense.expense_description = 'Pizza'
select member.last_name from event inner join attendance on event.event_id = attendance.link_to_event inner join member on attendance.link_to_member = member.member_id where event.event_name = 'Women''s Soccer' and member.position = 'Member'
select cast(sum(case when income.amount = 50 then 1 else 0 end) as real) * 100 / count(*) from member inner join income on member.member_id = income.link_to_member where member.t_shirt_size = 'Medium' and member.position = 'Member'
select distinct county from zip_code where type = 'PO Box'
select distinct zip_code from zip_code where type = 'PO Box' and state = 'Puerto Rico' and county = 'San Juan Municipio'
select event_name from event where type like 'Game' and status = 'Closed' and event_date between '2019-03-15' and '2020-03-20'
select attendance.link_to_event from expense inner join attendance on expense.link_to_member = attendance.link_to_member inner join event on attendance.link_to_event = event.event_id where expense.cost > 50
select member.first_name , member.last_name , attendance.link_to_event from expense inner join attendance on expense.link_to_member = attendance.link_to_member inner join member on attendance.link_to_member = member.member_id where expense.approved = 'true' and expense.expense_date between '2019-01-10' and '2019-11-19'
select major.college from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Katy' and member.link_to_major = 'rec1N0upiVLy5esTO'
select member.phone from major inner join member on major.major_id = member.link_to_major where major.college = 'College of Agriculture and Applied Sciences' and major.major_name = 'Business'
select member.email from expense inner join member on expense.link_to_member = member.member_id where expense.expense_date between '2019-09-10' and '2019-11-19' and expense.cost > 20
select count(*) from member inner join major on member.link_to_major = major.major_id where major.college = 'College of Education & Human Services' and major.major_name = 'Education' and member.position = 'Member'
select cast(sum(case when budget.remaining < 0 then 1 else 0 end) as real) * 100 / count(event.event_id) from event inner join budget on event.event_id = budget.link_to_event
select event_id , location , status from event where event_date between '2019-11-01' and '2020-03-31'
select expense_description from expense group by expense_description having sum(cost) / count(expense_id) > 50
select first_name , last_name from member where t_shirt_size = 'X-Large'
select cast(sum(case when type = 'PO Box' then 1 else 0 end) as real) * 100 / count(zip_code) from zip_code
select event.event_name , event.location from budget inner join event on budget.link_to_event = event.event_id where budget.remaining > 0
select event.event_name , event.event_date from event inner join expense on event.event_date = expense.expense_date where expense.expense_description = 'Pizza' and expense.cost > 50 and expense.cost < 100
select member.first_name , member.last_name , major.major_name from member inner join expense on member.member_id = expense.link_to_member inner join major on member.link_to_major = major.major_id where expense.cost > 100
select distinct zip_code.city , zip_code.county from income inner join event on income.income_id = event.event_id inner join zip_code on event.location = zip_code.zip_code where income.income_id > 40
select member.first_name , member.last_name from event inner join attendance on event.event_id = attendance.link_to_event inner join member on attendance.link_to_member = member.member_id group by member.first_name , member.last_name order by count(attendance.link_to_member) desc limit 1
select avg(expense.cost) from expense inner join attendance on expense.link_to_member = attendance.link_to_member inner join member on attendance.link_to_member = member.member_id where member.position != 'Member'
sql placeholder
select cast(sum(expense.cost) as real) * 100 / count(event.event_id) from expense inner join event on expense.expense_id = event.event_id where event.type = 'Game'
select budget.budget_id from expense inner join budget on expense.link_to_budget = budget.budget_id where expense.expense_description = 'Water , chips , cookies' order by expense.cost desc limit 1
select member.first_name , member.last_name from member inner join expense on member.member_id = expense.link_to_member order by expense.cost desc limit 5
select member.first_name , member.last_name , member.phone from expense inner join member on expense.link_to_member = member.member_id where expense.cost > ( select avg(cost) from expense )
select cast(sum(case when zip_code.state = 'Maine' then 1 else 0 end) as real) * 100 / count(zip_code.zip_code) - cast(sum(case when zip_code.state = 'Vermont' then 1 else 0 end) as real) * 100 / count(zip_code.zip_code) from member inner join zip_code on member.zip = zip_code.zip_code
select major.major_name , major.department from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Garrett' and member.last_name = 'Gerke'
select member.first_name , member.last_name , expense.cost from member inner join expense on member.member_id = expense.link_to_member where expense.expense_description = 'Water , Veggie tray , supplies'
select member.last_name , member.phone from major inner join member on major.major_id = member.link_to_major where major.major_name = 'Elementary Education'
select budget.category , budget.amount from event inner join budget on event.event_id = budget.link_to_event where event.event_name = 'January Speaker'
select event.event_name from event inner join budget on event.event_id = budget.link_to_event where budget.category = 'Food'
select member.first_name , member.last_name , income.amount from income inner join member on income.link_to_member = member.member_id where income.date_received = '9/9/2019'
select budget.category from expense inner join budget on expense.link_to_budget = budget.budget_id where expense.expense_description = 'Posters'
select member.first_name , member.last_name , major.college from member inner join major on member.link_to_major = major.major_id where member.position = 'Secretary'
select sum(budget.spent) , event.event_name from budget inner join event on budget.link_to_event = event.event_id where budget.category = 'Speaker Gifts'
select zip_code.city from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Garrett' and member.last_name = 'Girke'
select member.first_name , member.last_name , member.position from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.city = 'Lincolnton' and zip_code.state = 'North Carolina' and zip_code.zip_code = 28092
select count(gasstationid) from gasstations where country = 'CZE' and segment = 'Premium'
select cast(sum(case when currency = 'EUR' then 1 else 0 end) as real) * 100 / sum(case when currency = 'CZK' then 1 else 0 end) from customers
select customers.customerid from customers inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.date >= 201201 and yearmonth.date <= 201212 and customers.segment = 'LAM' order by yearmonth.consumption asc limit 1
select avg(yearmonth.consumption) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'SME' and strftime('%Y' , yearmonth.date) = '2013'
select customers.customerid from customers inner join yearmonth on customers.customerid = yearmonth.customerid where strftime('%Y' , yearmonth.date) = '2011' and customers.currency = 'CZK' order by yearmonth.consumption desc limit 1
select count(customers.customerid) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'KAM' and strftime('%Y' , yearmonth.date) between '2012-01-01' and '2012-12-31'
select sum(iif(customers.currency = 'CZK' , yearmonth.consumption , 0)) - sum(iif(customers.currency = 'EUR' , yearmonth.consumption , 0)) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.date between '2012-01-01' and '2012-12-31'
select yearmonth.date from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'EUR' group by yearmonth.date order by sum(yearmonth.consumption) desc limit 1
select distinct customers.segment from customers inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.consumption = ( select min(consumption) from yearmonth )
select strftime('%Y' , yearmonth.date) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'CZK' group by strftime('%Y' , yearmonth.date) order by sum(yearmonth.consumption) desc limit 1
select yearmonth.date from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'SME' and strftime('%Y' , yearmonth.date) = '2013' order by yearmonth.consumption desc limit 1
select avg(yearmonth.consumption) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'CZK' and customers.segment in ('SME' , 'LAM' , 'KAM') and yearmonth.date in ('2013' , '2013') and customers.segment in ('LAM' , 'KAM' , 'SME') group by yearmonth.customerid order by sum(yearmonth.consumption) asc limit 1
select customers.segment from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'EUR' and customers.segment in ('SME' , 'LAM' , 'KAM') and yearmonth.date in ('2012' , '2013') order by yearmonth.consumption desc limit 1
select sum(consumption) from yearmonth where customerid = 6 and date between '2013-08' and '2013-11'
select sum(case when country = 'Czech Rep.' then 1 else 0 end) - sum(case when country = 'Slovakia' then 1 else 0 end) from gasstations
select consumption * (customerid + consumption) from yearmonth where date like '2013-04%'
select case when sum(iif(customers.currency = 'Czech Koruna' , 1 , 0)) > sum(iif(customers.currency = 'Euro' , 1 , 0)) then 'Yes' else 'No' end from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid
select customers.customerid from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'LAM' and customers.currency = 'Euro' and yearmonth.date = '2013-10' order by yearmonth.consumption desc limit 1
select customers.customerid , yearmonth.consumption from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'KAM' group by customers.customerid order by sum(yearmonth.consumption) desc limit 1
select sum(yearmonth.consumption) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'KAM' and yearmonth.date = '2013-05'
select cast(sum(case when yearmonth.consumption > 46.73 then 1 else 0 end) as real) * 100 / count(yearmonth.customerid) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'LAM'
select country , count(gasstationid) from gasstations where segment = 'Value for money' group by country order by count(gasstationid) desc limit 1
select cast(sum(case when currency = 'EUR' then 1 else 0 end) as real) * 100 / count(customerid) from customers where segment = 'KAM'
select cast(sum(case when consumption > 528.3 then 1 else 0 end) as real) * 100 / count(customerid) from yearmonth where date = '2012-02'
select cast(count(case when segment = 'Premium' then gasstationid else null end) as real) * 100 / count(gasstationid) from gasstations
select customerid from yearmonth where consumption = ( select max(consumption) from yearmonth where strftime('%Y-%m' , date) = '2013-09' )
select customers.segment from customers inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.date = '201309' order by yearmonth.consumption asc limit 1
select customers.customerid from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'SME' and yearmonth.date = '2012-06' order by yearmonth.consumption asc limit 1
select consumption from yearmonth where strftime('%Y' , date) = '2012' order by consumption desc limit 1
select yearmonth.consumption from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'eur' order by yearmonth.consumption desc limit 1
sql placeholder
select distinct gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.date like '2013-06%'
select distinct gasstations.chainid from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.transactionid = 1
select distinct products.description from products inner join transactions_1k on products.productid = transactions_1k.productid where transactions_1k.transactionid = 'Eur'
select sum(price) / count(transactionid) from transactions_1k where date like '2012-01%'
select count(customers.customerid) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'eur' and yearmonth.consumption > 1000
select distinct products.description from products inner join transactions_1k on products.productid = transactions_1k.productid inner join gasstations on transactions_1k.gasstationid = gasstations.gasstationid where gasstations.country = 'CZE'
select transactions_1k.time from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.chainid = 11
select count(transactions_1k.transactionid) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and transactions_1k.price > 1000
select count(transactions_1k.transactionid) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and strftime('%Y-%m-%d' , transactions_1k.date) >= '2012-01-01'
select avg(transactions_1k.price) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE'
select sum(transactions_1k.price) / count(customers.customerid) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where customers.currency = 'eur'
select customerid from transactions_1k where date = '2012-08-25' order by amount desc limit 1
select gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.date = '2012-08-25' order by transactions_1k.customerid asc limit 1
select distinct customers.currency from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.date = '2012-08-24' and transactions_1k.time = '16:25:00'
select distinct customers.segment from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.time = '21:20:00' and transactions_1k.date = '2012-08-23'
select count(transactions_1k.transactionid) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where customers.currency = 'EUR' and transactions_1k.time < '13:00:00' and transactions_1k.date = '2012-08-26'
select segment from customers where customerid = ( select customerid from customers order by customerid asc limit 1 )
select distinct gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.time = '12:42:00' and transactions_1k.date = '2012-08-24'
select distinct productid from transactions_1k where date = '2012-08-23' and time = '21:20:00'
select transactions_1k.amount , yearmonth.date , yearmonth.consumption from transactions_1k inner join yearmonth on transactions_1k.customerid = yearmonth.customerid where transactions_1k.date like '2012-01-01%'
select count(transactions_1k.transactionid) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and transactions_1k.time between '8:00' and '9:00' and transactions_1k.date = '2012-08-26'
select distinct customers.currency from customers inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.date like '2013-06%'
select gasstations.country from transactions_1k inner join gasstations on transactions_1k.gasstationid = gasstations.gasstationid where transactions_1k.cardid = 667467
sql placeholder
select cast(sum(case when customers.currency = 'EUR' then 1 else 0 end) as real) * 100 / count(customers.customerid) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.date = '2012-08-25'
select cast(yearmonth.consumption as real) * 100 / yearmonth.consumption from yearmonth inner join transactions_1k on yearmonth.customerid = transactions_1k.customerid where transactions_1k.date = '2012-08-25' and transactions_1k.amount = 634.8
select gasstations.gasstationid from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid order by transactions_1k.amount desc limit 1
select cast(sum(case when segment = 'Premium' then 1 else 0 end) as real) * 100 / count(gasstationid) from gasstations where country = 'SVK'
select amount , date from transactions_1k where customerid = 38508 and date = '2012-01'
select distinct products.description from products inner join transactions_1k on products.productid = transactions_1k.productid order by transactions_1k.transactionid desc limit 5
select customers.customerid , avg(transactions_1k.price) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid group by customers.customerid order by sum(transactions_1k.price) desc limit 1
select gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.productid = 2 order by transactions_1k.price desc limit 1
select distinct yearmonth.consumption from yearmonth inner join transactions_1k on yearmonth.customerid = transactions_1k.customerid where yearmonth.date like '2012-08%' and transactions_1k.productid = 5 and transactions_1k.price > 29 * transactions_1k.amount
