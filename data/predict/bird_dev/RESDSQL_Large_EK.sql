sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select school from schools where magnet = 1
select schools.phone from satscores inner join schools on satscores.cds = schools.cdscode where satscores.numge1500 group by schools.phone order by count(satscores.numge1500) desc limit 1
sql placeholder
select count(satscores.cds) from satscores inner join frpm on satscores.cds = frpm.cdscode inner join schools on frpm.cdscode = schools.cdscode where satscores.avgscrmath > 560
sql placeholder
sql placeholder
sql placeholder
select schools.phone from schools inner join satscores on schools.cdscode = satscores.cds where satscores.numge1500 order by satscores.numtsttakr desc limit 3
sql placeholder
select schools.district from schools inner join satscores on schools.cdscode = satscores.cds where schools.statustype = 'Active' order by satscores.avgscrread desc limit 1
sql placeholder
select charter from schools where charter = ( select avg(avgscrwrite) from satscores where cds = 499 )
select sum(case when fundingtype = 'Directly funded' then 1 else 0 end) from schools where fundingtype = 'Directly funded' and county = 'Contra Costa'
select phone from schools where school = ( select max(avgscrmath) from satscores )
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select schools.school , schools.fundingtype from satscores inner join schools on satscores.cds = schools.cdscode where satscores.avgscrmath > 400 and satscores.cname = 'Riverside'
sql placeholder
select avg(satscores.avgscrwrite) , schools.phone from schools inner join satscores on schools.cdscode = satscores.cds where schools.opendate >= 1991 and schools.closeddate < 2000
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select schools.admlname1 , schools.admlname2 from schools inner join satscores on schools.admfname1 = satscores.sname where satscores.numge1500 group by schools.admlname1 , schools.admlname2 order by count(satscores.numge1500) desc limit 3
select schools.streetabr , schools.city , schools.zip , schools.state from satscores inner join schools on satscores.cds = schools.cdscode where satscores.numge1500 order by satscores.numtsttakr asc limit 1
select website from schools where county = 'Los Angeles' and school = 'Los Angeles County ROP'
sql placeholder
select schools.phone from satscores inner join schools on satscores.cds = schools.cdscode where schools.district = 'Fresno Unified' order by satscores.avgscrread asc limit 1
sql placeholder
sql placeholder
select satscores.avgscrmath , schools.county from schools inner join satscores on schools.cdscode = satscores.cds order by satscores.avgscrmath asc limit 1
select avg(satscores.avgscrwrite) , schools.city from schools inner join satscores on schools.cdscode = satscores.cds where satscores.numge1500 group by schools.city order by count(satscores.numge1500) desc limit 1
sql placeholder
sql placeholder
select cast(count(schools.opendate) as real) / 12 from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.doctype = 'Elementary School District' and schools.county = 'Alameda'
select cast(sum(case when doctype = 'Unified School District' then 1 else 0 end) as real) * 100 / sum(case when doctype = 'Elementary School District' then 1 else 0 end) from schools where county = 'Orange'
select county , closeddate from schools where statustype = 'Closed' group by county order by count(county) desc limit 1
select schools.mailstrabr , schools.school from schools inner join satscores on schools.cdscode = satscores.cds order by satscores.avgscrmath desc limit 5
select schools.mailstrabr , schools.school from schools inner join satscores on schools.cdscode = satscores.cds where satscores.avgscrread = 1 order by satscores.avgscrread asc limit 1
sql placeholder
select sum(case when mailcity = 'Fresno' then 1 else 0 end) from schools
select school , mailzip from schools where admfname1 = 'Avetik' and admlname2 = 'Atoian'
select cast(sum(case when county = 'Colusa' then 1 else 0 end) as real) * 100 / sum(case when county = 'Humboldt' then 1 else 0 end) from schools
select count(mailstate) from schools where county = 'San Joaquin'
select phone , ext from schools where school = ( select max(avgscrwrite) from satscores )
select phone , ext from schools where zip = '95203-3704'
select website from schools where admfname1 = 'Dante' and admlname2 = 'Mike'
select website from schools where virtual = 'P' and charter = 1
select count(*) from schools where city = 'Hickman' and doctype = 'Elementary School District' and charter = 1
sql placeholder
select admfname1 , city from schools where charternum = '00D2'
select count(*) from schools where charternum = '00D4' and mailcity = 'Hickman'
select cast(sum(case when schools.fundingtype = 'Locally funded' then 1 else 0 end) as real) * 100 / count(schools.charter) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.county = 'Santa Clara Clara'
select count(schools.fundingtype) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.county = 'Stanislaus' and schools.fundingtype = 'Directly funded'
select sum(case when schools.doctype = 'Community College District' then 1 else 0 end) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.city = 'San Francisco' and schools.closeddate = 1989
sql placeholder
sql placeholder
select count(schools.cdscode) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.county = 'Alpine' and schools.statustype = 'Active' and schools.soctype = 'District Community Day Schools'
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select school type from schools where city = 'Adelanto' group by gsserved order by count(gsserved) desc limit 1
select county from schools where virtual = 'F' and county between 'San Diego' and 'Santa Barbara' group by county order by count(virtual) desc limit 1
select school type , latitude , school from schools order by latitude desc limit 1
sql placeholder
select gsoffered from schools order by longitude desc limit 1
select sum(case when schools.magnet = 1 then 1 else 0 end) , sum(case when schools.magnet = 3 then 1 else 0 end) , sum(case when schools.magnet = 1 then 1 else 0 end) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.magnet = 1
select admfname1 , admfname2 , district from schools group by admfname1 , district order by count(admfname1) desc limit 1
sql placeholder
sql placeholder
sql placeholder
select schools.admemail1 , schools.admemail2 , schools.school from satscores inner join schools on satscores.cds = schools.cdscode where satscores.numge1500 group by schools.admemail1 , schools.school order by count(satscores.numge1500) desc limit 1
select count(trans.account_id) from account inner join trans on account.account_id = trans.account_id inner join district on account.district_id = district.district_id where district.a3 = 'east Bohemia' and account.frequency = 'POPLATEK PO OBRATU'
select count(*) from account inner join district on account.district_id = district.district_id inner join loan on account.account_id = loan.account_id where district.a3 = 'Prague'
select case when sum(case when a13 then a12 else 0 end) > sum(case when a13 then a12 else 0 end) then '%' else '%' end from district
select count(district.district_id) from district inner join client on district.district_id = client.district_id where district.a11 = 'A' and client.gender = 'F'
select count(client.gender) from client inner join district on client.district_id = district.district_id where district.a3 = 'north Bohemia' and district.a11 = 8000 and client.gender = 'M'
sql placeholder
sql placeholder
select count(disp.account_id) from disp inner join account on disp.account_id = account.account_id where account.frequency = 'POPLATEK TYDNE' and disp.type = 'OWNER'
select client.client_id from account inner join disp on account.account_id = disp.account_id inner join client on client.client_id = disp.client_id where disp.type = 'DISPONENT' and account.frequency = 'POPLATEK PO OBRATU'
select account.account_id , account.frequency from account inner join loan on account.account_id = loan.account_id where loan.date = 1997 order by loan.amount asc limit 1
select account.account_id from loan inner join account on loan.account_id = account.account_id where loan.duration > 12 and strftime('%Y' , account.date) > '1993' order by loan.amount desc limit 1
select count(client.client_id) from client inner join account on client.client_id = account.account_id inner join district on account.district_id = district.district_id where client.gender = 'F' and strftime('%Y' , account.date) >= '1950'
select account_id from account where strftime('%Y' , date) = '1995' order by date asc limit 1
select distinct account_id from account where strftime('%Y' , date) >= '1997' and account_id >= 3000
select client.client_id from card inner join disp on card.disp_id = disp.disp_id inner join client on disp.client_id = client.client_id where strftime('%Y' , card.issued) = '1994-03-03'
select account_id from trans where date = '1998-10-14' and amount = 840
select district.district_id from account inner join district on account.district_id = district.district_id inner join loan on account.account_id = loan.account_id where loan.date = '1994/8/25'
select trans.amount from trans inner join disp on trans.account_id = disp.account_id inner join card on card.disp_id = disp.disp_id where card.issued = 1996-10-21 order by trans.amount desc limit 1
select client.gender from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where district.a11 order by district.a11 desc limit 1
sql placeholder
select count(client.gender) from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where district.a2 = 'Jesenik'
sql placeholder
select count(*) from account inner join district on account.district_id = district.district_id where district.a2 = 'Litomerice' and district.a9 = '1996'
select district.a2 from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where client.gender = 'F' and client.birth_date = '1976-02-09'
select client.birth_date from client inner join account on client.district_id = account.district_id inner join loan on account.account_id = loan.account_id where loan.amount = 98832 and loan.date = '1996-01-03'
select account.account_id from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where district.a3 = 'Prague'
select cast(sum(case when client.gender = 'M' then 1 else 0 end) as real) * 100 / count(client.gender) from client inner join district on client.district_id = district.district_id where district.a3 = 'southemia'
select cast(sum(case when loan.date between 1993/3/22 and 1998/12/27 then 1 else 0 end) as real) * 100 / sum(case when loan.date between 1993/3/22 and 1998/12/27 then 1 else 0 end) from account inner join loan on account.account_id = loan.account_id inner join client on account.account_id = client.client_id where client.client_id = '1993'
select cast(sum(case when status = 'A' then 1 else 0 end) as real) * 100 / count(*) from loan where status = 'A'
select cast(sum(amount) as real) * 100 / count(account_id) from loan where status = 'C'
select account.account_id , district.a2 and district.a3 from account inner join district on account.district_id = district.district_id inner join trans on account.account_id = trans.account_id where account.frequency = 'POPLATEK PO OBRATU' and strftime('%Y' , trans.date) = '1993'
select account.account_id , account.frequency from account inner join district on account.district_id = district.district_id where district.a3 = 'east Bohemia' and account.date between 1995 and 2000
select account.account_id , account.date from account inner join district on account.district_id = district.district_id where district.a2 = 'Prachatice'
select district.a2 , district.a3 from district inner join account on district.district_id = account.district_id where account.district_id = 4990
select account.account_id , district.a2 and district.a3 from account inner join district on account.district_id = district.district_id inner join loan on account.account_id = loan.account_id where loan.amount > 300000
sql placeholder
sql placeholder
select cast(sum(case when district.a2 = 'Decin' then 1 else 0 end) as real) * 100 / count(*) from account inner join district on account.district_id = district.district_id where strftime('%Y' , account.date) = '1993'
select account_id from account where frequency = 'POPLATEK MESICNE'
select district.a2 from account inner join district on account.district_id = district.district_id inner join client on account.district_id = client.district_id where client.gender = 'F' order by account.account_id desc limit 10
select trans.amount from trans inner join account on trans.account_id = account.account_id inner join district on account.district_id = district.district_id where trans.type = 'VYDAJ' and district.a2 = '1996-01-01' group by trans.amount order by count(trans.amount) desc limit 10
select count(disp.account_id) from card inner join disp on card.disp_id = disp.disp_id inner join district on district.district_id = district.district_id where district.a3 = 'South Bohemia'
select district.a3 from loan inner join account on loan.account_id = account.account_id inner join district on account.district_id = district.district_id where loan.status = 'C' order by loan.duration desc limit 1
select avg(loan.amount) from client inner join loan on client.client_id = loan.loan_id where client.gender = 'M'
select district.a2 from district inner join account on district.district_id = account.district_id where district.a13 order by district.a2 desc limit 1
select count(*) from account inner join district on account.district_id = district.district_id where district.a16 order by district.a16 desc limit 1
select count(trans.account_id) from trans inner join account on trans.account_id = account.account_id where trans.operation = 'VYBER KARTOU' and account.frequency = 'POPLATEK MESICNE' and trans.balance < 0
select count(loan.amount) from account inner join loan on account.account_id = loan.account_id where account.frequency = 'POPLATEK MESICNE' and loan.amount > 250000
select count(trans.account_id) from trans inner join account on trans.account_id = account.account_id inner join loan on account.account_id = loan.account_id where loan.status = 'C' and account.district_id = 1
select count(client.gender) from client inner join district on client.district_id = district.district_id where district.a15 order by district.a15 desc limit 1
select count(card.card_id) from card inner join disp on card.disp_id = disp.disp_id where card.type = 'gold' and disp.type = 'disponent'
select count(*) from account inner join district on account.district_id = district.district_id where district.a2 = 'Pisek'
select district.a2 from trans inner join account on trans.account_id = account.account_id inner join district on account.district_id = district.district_id where strftime('%Y' , trans.date) = '1997' group by district.a2
sql placeholder
select account.account_id from card inner join account on card.card_id = account.account_id where card.type = 'gold' or card.type = 'junior'
select avg(trans.amount) from trans inner join account on trans.account_id = account.account_id where trans.operation = 'VYBER KARTOU' and account.date = '2021'
select trans.account_id from trans inner join account on trans.account_id = account.account_id where trans.operation = 'VYBER KARTOU' order by trans.amount asc limit 1
select client.gender from client inner join disp on client.client_id = disp.client_id inner join loan on disp.account_id = loan.account_id inner join card on card.disp_id = disp.disp_id where client.gender = 'F'
select count(client.client_id) from client inner join account on client.client_id = account.account_id inner join district on account.district_id = district.district_id where client.gender = 'F' and district.a3 = 'south Bohemia'
sql placeholder
select disp.type , avg(district.a11) from disp inner join account on disp.account_id = account.account_id inner join district on account.district_id = district.district_id inner join loan on account.account_id = loan.account_id where disp.type = 'OWNER'
select count(trans.account_id) from trans inner join account on trans.account_id = account.account_id inner join district on account.district_id = district.district_id where district.a3 = 'North Bohemia' and trans.bank = 'AB'
select district.a2 from account inner join district on account.district_id = district.district_id inner join trans on account.account_id = trans.account_id where trans.type = 'VYDAJ'
select cast(sum(case when district.a3 > 4000 then 1 else 0 end) as real) / count(*) from account inner join district on account.district_id = district.district_id where district.a15 = 'A15'
select count(loan.account_id) from card inner join disp on card.disp_id = disp.disp_id inner join loan on disp.account_id = loan.account_id where disp.type = 'OWNER' and card.type = 'classic'
select count(client.client_id) from client inner join district on client.district_id = district.district_id where district.a2 = 'Hl.m. Praha' and client.gender = 'M'
select cast(sum(case when type = 'gold' then 1 else 0 end) as real) * 100 / count(*) from card where issued < 1998
select disp.type from disp inner join account on disp.account_id = account.account_id inner join loan on account.account_id = loan.account_id order by loan.amount desc limit 1
select sum(case when strftime('%Y' , date) = '1995' then 1 else 0 end) from account inner join district on account.district_id = district.district_id
sql placeholder
select trans.operation from trans inner join disp on trans.account_id = disp.account_id inner join client on disp.client_id = client.client_id where client.client_id = 3356
select count(*) from account inner join loan on account.account_id = loan.account_id where account.frequency = 'POPLATEK TYDNE' and loan.amount < 200000
select card.type from card inner join disp on card.disp_id = disp.disp_id inner join client on disp.client_id = client.client_id where client.client_id = 13539
select district.a3 from client inner join district on client.district_id = district.district_id where client.client_id = 3541
select district.a2 from loan inner join account on loan.account_id = account.account_id inner join district on account.district_id = district.district_id where loan.status = 'A' group by district.a2 order by count(account.account_id) desc limit 1
sql placeholder
select trans.amount from trans inner join account on trans.account_id = account.account_id where account.district_id = 5
select count(*) from account inner join district on account.district_id = district.district_id where district.a2 = 'Jesenik'
select client.client_id from card inner join disp on card.disp_id = disp.disp_id inner join client on disp.client_id = client.client_id where card.issued >= '1997-01-01' and card.type = 'junior'
select sum(case when client.gender = 'F' then 1 else 0 end) from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where district.a11 = 10000
select cast(sum(loan.amount) as real) * 100 / sum(loan.amount) from client inner join account on client.client_id = account.account_id inner join loan on account.account_id = loan.account_id where client.gender = 'M' and loan.amount between 1996 and 1997
select count(account_id) from trans where operation = 'VYBER KARTOU' and strftime('%Y' , date) >= '1995'
select sum(case when a3 = 'east Bohemia' then 1 else 0 end) - sum(case when a16 = 'north Bohemia' then 1 else 0 end) from district
select count(disp.disp_id) from disp inner join account on disp.account_id = account.account_id where disp.type = 'OWNER' and disp.type = 'DISPONENT' between 1 and 10
sql placeholder
select client.birth_date from account inner join disp on account.account_id = disp.account_id inner join client on disp.client_id = client.client_id where disp.type = 'OWNER' and account.account_id = 130
select count(disp.account_id) from disp inner join account on disp.account_id = account.account_id where disp.type = 'OWNER' and account.frequency = 'POPLATEK PO OBRATU'
select loan.amount , loan.status from client inner join disp on client.client_id = disp.client_id inner join account on account.account_id = disp.account_id inner join loan on account.account_id = loan.account_id where client.client_id = 992
select trans.amount , client.gender from account inner join disp on account.account_id = disp.account_id inner join client on disp.client_id = client.client_id inner join trans on account.account_id = trans.account_id where trans.trans_id = 851 and client.client_id = 4
select card.type from card inner join disp on card.card_id = disp.disp_id inner join client on disp.client_id = client.client_id where client.client_id = 9
select sum(trans.amount) from trans inner join disp on trans.account_id = disp.account_id inner join client on disp.client_id = client.client_id where client.client_id = 617 and strftime('%Y' , trans.date) = '1998'
select client.client_id from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where district.a3 = 'east Bohemia' and client.birth_date between 1983 and 1987
select client.client_id from client inner join loan on client.client_id = loan.loan_id where client.gender = 'F' group by client.client_id order by sum(loan.amount) desc limit 3
sql placeholder
select count(*) from account inner join district on account.district_id = district.district_id where district.a2 = 'Beroun' and strftime('%Y' , account.date) >= '1996'
select count(client.gender) from card inner join disp on card.disp_id = disp.disp_id inner join client on disp.client_id = client.client_id where card.type = 'junior' and client.gender = 'F'
select cast(sum(case when client.gender = 'F' then 1 else 0 end) as real) * 100 / count(client.gender) from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where district.a3 = 'Prag'
select cast(sum(case when client.gender = 'M' then 1 else 0 end) as real) * 100 / count(client.gender) from client inner join disp on client.client_id = disp.client_id where disp.account_id = disp.account_id
select count(client.client_id) from client inner join disp on client.client_id = disp.client_id inner join account on disp.account_id = account.account_id where account.frequency = 'POPLATEK TYDNE' and client.gender = 'M'
select account.account_id from account inner join loan on account.account_id = loan.account_id where loan.duration > 24 and account.date > '1997' order by loan.amount asc limit 1
sql placeholder
select count(client.client_id) from client inner join district on client.district_id = district.district_id where district.a3 = 'east Bohemia' and client.birth_date = 1920
select count(*) from account inner join loan on account.account_id = loan.account_id where account.frequency = 'POPLATEK TYDNE' and loan.duration = 24
select avg(loan.amount) from loan inner join trans on loan.account_id = trans.account_id inner join account on account.account_id = trans.account_id where account.frequency = 'POPLATEK PO OBRATU' and loan.status = 'C'
select client.district_id , district.district_id from client inner join disp on client.client_id = disp.client_id inner join district on client.district_id = district.district_id inner join account on account.district_id = district.district_id where disp.type = 'OWNER'
select client.client_id , client.birth_date from card inner join disp on card.disp_id = disp.disp_id inner join client on disp.client_id = client.client_id where card.type = 'gold'
select bond_type from bond group by bond_type order by count(bond_type) desc limit 1
select count(*) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'cl' and molecule.label = '-'
select avg(atom.element = 'o') from atom inner join bond on atom.molecule_id = bond.molecule_id where bond.bond_type = '-'
sql placeholder
select count(*) from molecule inner join atom on molecule.molecule_id = atom.molecule_id where atom.element = 'na' and molecule.label = '-'
select molecule.molecule_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '#' and molecule.label = '+'
select cast(sum(case when atom.element = 'c' then 1 else 0 end) as real) * 100 / count(*) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.molecule_id where bond.bond_type = '= '= 'double-bond'
select count(*) from bond where bond_type = '#'
select count(connected.atom_id2) from atom inner join connected on atom.atom_id = connected.atom_id2 where atom.element != 'br'
select count(molecule_id) from molecule where label = '+' and molecule_id between 'TR000' and 'TR099'
select atom.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'si'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where bond.bond_id = 'TR004_8_9'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where bond.bond_type = 'double' and atom.element = 'cl' or atom.element = 'f' or atom.element = 'br' or atom.element = 'sna' or element = 'p' and bond.bond_type = 'sulfur'
sql placeholder
select bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 'te'
select connected.atom_id2 , atom.atom_id from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on connected.bond_id = bond.bond_id where bond.bond_type = '-'
sql placeholder
select atom.element from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.label = '-' group by atom.element order by count(atom.element) asc limit 1
select bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on connected.bond_id = bond.bond_id where atom.atom_id between 'TR004_8' and 'TR004_20'
select distinct molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where atom.element != 'sn' and molecule.label = '+'
select count(*) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 'i' and bond.bond_type = '-'
select connected.atom_id2 , connected.atom_id from connected inner join bond on connected.bond_id = bond.bond_id where bond.bond_type = '#'
select connected.atom_id2 , atom.atom_id from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on connected.bond_id = bond.bond_id inner join molecule on bond.molecule_id = molecule.molecule_id where atom.molecule_id = 'TR181'
select cast(sum(case when atom.element = 'f' then 1 else 0 end) as real) * 100 / count(*) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+'
select cast(sum(case when bond.bond_type = '#' then 1 else 0 end) as real) * 100 / count(*) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.label = '+'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id2 where atom.molecule_id = 'TR000' group by atom.element order by atom.element desc limit 3
select atom.atom_id from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on connected.bond_id = bond.bond_id where bond.molecule_id = 'TR001' and bond.bond_id = 'TR001_2_6'
select sum(case when label = '+' then 1 else 0 end) - sum(case when label = '-' then 1 else 0 end) from molecule
select atom.atom_id from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on connected.bond_id = bond.bond_id where bond.bond_id = 'TR_000_2_5'
sql placeholder
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = 'double' group by molecule.label order by count(molecule.molecule_id) desc limit 5
sql placeholder
select cast(sum(case when label = '+' then 1 else 0 end) as real) * 100 / count(molecule_id) from molecule
select cast(sum(case when atom.element = 'h' then 1 else 0 end) as real) * 100 / count(*) from atom inner join connected on atom.atom_id = connected.atom_id2 inner join molecule on atom.molecule_id = molecule.molecule_id where atom.molecule_id = 'TR206'
select bond_type from bond where molecule_id = 'TR000'
select atom.element , molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' and molecule.molecule_id = 'TR060'
select bond.bond_type , molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.molecule_id = 'TR018' group by bond.bond_type order by count(bond.bond_type) desc limit 1
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '-' order by molecule.label desc limit 3
select bond.bond_type from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR006' order by bond.bond_type desc limit 2
select sum(case when connected.atom_id2 = 'TR009_12' then 1 else 0 end) from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on connected.bond_id = bond.bond_id where atom.molecule_id = 'TR009'
select count(atom.molecule_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'br' and molecule.label = '+'
select bond.bond_type , connected.atom_id2 from connected inner join bond on connected.bond_id = bond.bond_id where bond.bond_id = 'TR001_6_9'
select molecule.molecule_id , molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.atom_id = 'TR001_10'
select count(molecule_id) from bond where bond_type = '#'
select count(connected.bond_id) from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on bond.bond_id = connected.bond_id where atom.atom_id like 'TR%_19'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id2 where atom.molecule_id = 'TR004'
select count(molecule_id) from molecule where label = '-'
select atom.atom_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id2 where atom.atom_id between 21 and 25 and molecule.label = '+'
select distinct bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 'p' and atom.element = 'n'
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '= 'and molecule.label = '+' group by molecule.molecule_id order by count(*) desc limit 1
select cast(count(connected.bond_id) as real) / count(distinct atom.atom_id) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where atom.element = 'i'
select bond.bond_type , bond.bond_id from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on connected.bond_id = bond.bond_id where atom.atom_id = 45 and bond.bond_type = '= '
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id2
select atom.atom_id from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.molecule_id = 'TR447' and bond.bond_type = '#'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where bond.bond_id = 'TR144_8_19'
select molecule.molecule_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '= 'and molecule.label = '+' group by molecule.molecule_id order by count(*) desc limit 1
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' order by atom.element asc limit 1
select connected.atom_id2 , bond.bond_id from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on bond.bond_id = bond.bond_id where atom.element = 'pb'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where bond.bond_type = '#'
select cast(count(bond.bond_id) as real) * 100 / count(atom.atom_id) from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on bond.bond_id = connected.bond_id group by atom.element order by count(atom.atom_id) desc limit 1
select cast(sum(case when molecule.label = '+' then 1 else 0 end) as real) * 100 / count(*) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '-'
select count(atom.atom_id) from atom inner join connected on atom.atom_id = connected.atom_id2 where atom.element in ('c' , 'h')
select connected.atom_id2 from atom inner join connected on atom.atom_id = connected.atom_id2 where atom.element = 's'
select bond.bond_type from atom inner join bond on atom.atom_id = bond.molecule_id where atom.element = 'sn'
select count(distinct atom.element) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where bond.bond_type = '-'
select sum(case when atom.element = 'p' then 1 else 0 end) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where bond.bond_type = '#'
select bond.bond_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.label = '+'
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '-'
select cast(sum(case when bond.bond_type = '-' then 1 else 0 end) as real) * 100 / count(*) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 'cl'
select label from molecule where molecule_id = 'TR000' or 'TR001' or 'TR002'
select molecule_id from molecule where label = '-'
select sum(case when label = '+' then 1 else 0 end) from molecule where molecule_id between 'TR000' and 'TR030'
select bond_type from bond where molecule_id between 'TR000' and 'TR050'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where bond.bond_id = 'TR001_10_11'
select count(connected.bond_id) from atom inner join connected on atom.atom_id = connected.atom_id where atom.element = 'i'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'ca' group by molecule.label order by count(molecule.label) desc limit 1
select case when atom.element = 'cl' then 'yes' else 'no' end from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on connected.bond_id = bond.bond_id where bond.bond_id = 'TR001_1_8'
select molecule.molecule_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '#' and molecule.label = '-' limit 2
select cast(sum(case when atom.element = 'pb' then 1 else 0 end) as real) * 100 / count(*) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.molecule_id = 'TR001'
select molecule_id from bond where bond_type = 'double'
sql placeholder
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where bond.bond_id = 'TR005_16_26'
select count(*) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '-' and molecule.label = ''
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_id = 'TR001_10_11'
select bond.bond_id , molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '#' and molecule.label = '+'
select atom.element from molecule inner join atom on molecule.molecule_id = atom.molecule_id inner join connected on atom.atom_id = connected.atom_id2 where atom.atom_id = 7 and molecule.label = '+' group by atom.element
select cast(sum(case when atom.element = 'h' then 1 else 0 end) as real) * 100 / count(*) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR006'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'ca'
select bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 'te'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where bond.bond_id = 'TR001_10_11'
select cast(sum(case when bond_type = '#' then 1 else 0 end) as real) * 100 / count(*) from bond
select cast(sum(case when bond.bond_type = '= 'then 1 else 0 end) as real) * 100 / count(*) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR047'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.atom_id = 'TR001_1'
select label from molecule where molecule_id = 'TR151'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id2 where atom.molecule_id = 'TR151'
select count(molecule_id) from molecule where label = '+'
sql placeholder
select count(*) from molecule where label = '+'
select bond.bond_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '= 'and molecule.label = '+'
select count(atom.atom_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'h' and molecule.label = '+'
select bond.molecule_id from bond inner join connected on bond.bond_id = connected.bond_id where connected.atom_id = 2 and bond.bond_type = 'TR00_1_2'
select atom.atom_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'c' and molecule.label = '-'
select cast(sum(case when molecule.label = '+' then 1 else 0 end) as real) * 100 / count(*) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'h'
select label from molecule where molecule_id = 'TR124'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id2 inner join molecule on connected.atom_id = molecule.molecule_id where atom.molecule_id = 'TR186'
select bond_type from bond where bond_id = 'TR007_4_19'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on connected.bond_id = bond.bond_id where bond.bond_id = 'TR001_2_4'
select count(*) , bond.bond_type from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.label = '+' and bond.bond_type = '= '
select atom.element , molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'cl' and molecule.label = '+'
sql placeholder
select atom.molecule_id , atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where bond.bond_type like '#'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where bond.bond_id = 'TR000_2_3'
select count(connected.bond_id) from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on connected.bond_id = bond.bond_id where atom.element = 'cl'
select atom.atom_id , bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.molecule_id = 'TR346'
select count(*) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '= 'and molecule.label = '+'
select count(*) from atom inner join bond on atom.molecule_id = bond.molecule_id where atom.element = 's' and bond.bond_type != 'double'
select molecule.label from bond inner join molecule on bond.molecule_id = molecule.molecule_id where bond.bond_id = 'TR001_2_4'
select count(atom.atom_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.molecule_id = 'TR005'
select count(*) from bond where bond_type = '-'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'cl'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'c'
select cast(sum(case when atom.element = 'cl' then 1 else 0 end) as real) * 100 / count(*) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+'
select molecule_id from bond where bond_id = 'TR001_1_7'
select count(atom.element) from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on connected.bond_id = bond.bond_id where bond.bond_id = 'TR001_3_4'
select bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on connected.bond_id = bond.bond_id where connected.atom_id2 = 'TR000_1' and connected.atom_id2 = 'TR000_2'
select atom.molecule_id from atom inner join connected on atom.molecule_id = connected.atom_id2 inner join molecule on atom.molecule_id = molecule.molecule_id where connected.atom_id2 = 'TR000_2' and connected.atom_id = 'TR000_4'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id2 where connected.atom_id = 'TR000_1'
select label from molecule where molecule_id = 'TR000'
select cast(sum(case when bond.bond_type = '-' then 1 else 0 end) as real) * 100 / count(*) from bond inner join connected on bond.bond_id = connected.bond_id
select count(atom.molecule_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'n' and molecule.label = '+'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join bond on molecule.molecule_id = bond.molecule_id where atom.element = 's' and bond.bond_type = '= '
select label from molecule where label = '-' group by label having count(molecule_id) > 5
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.molecule_id = 'TR024' and bond.bond_type = '= '
select molecule.molecule_id from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.label = '+' group by molecule.molecule_id order by count(atom.molecule_id) desc limit 1
select cast(sum(case when molecule.label = '+' then 1 else 0 end) as real) * 100 / count(*) from molecule inner join atom on molecule.molecule_id = atom.molecule_id inner join bond on bond.molecule_id = atom.molecule_id where atom.element = 'h' and bond.bond_type = '#'
select count(molecule_id) from molecule where label = '+'
select count(*) from bond where bond_type = '-' and molecule_id between 'TR004' and 'TR010'
select count(*) from atom inner join connected on atom.atom_id = connected.atom_id2 inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'c' and molecule.molecule_id = 'TR008'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id2 where atom.atom_id = 'TR004_7' and molecule.label = '-'
select count(*) from atom inner join bond on atom.molecule_id = bond.molecule_id where bond.bond_type = '= 'and atom.element = 'o'
select count(*) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '#' and molecule.label = '-'
select atom.element , bond.bond_type from atom inner join bond on atom.molecule_id = bond.molecule_id where atom.molecule_id = 'TR016'
select connected.atom_id from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on connected.bond_id = bond.bond_id where atom.element = 'c' and bond.bond_type = '= 'and bond.molecule_id = 'TR012'
select atom.atom_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'o' and molecule.label = '+'
select name from cards where cardkingdomfoilid = cards.cardkingdomid is not null
select bordercolor from cards where cardkingdomfoilid is not null
select facename from cards where convertedmanacost = ( select max(convertedmanacost) from cards )
select name from cards where frameversion = 2015 and edhrecrank < 100
select cards.name from cards inner join legalities on cards.uuid = legalities.uuid where cards.rarity = 'mythic' and legalities.format = 'gladiator' and legalities.status = 'Banned'
select legalities.format from cards inner join legalities on cards.uuid = legalities.uuid where cards.side = 'NULL' and cards.types = 'Artifact'
select cards.id , cards.artist from cards inner join legalities on cards.uuid = legalities.uuid where cards.power = '*' and legalities.format = 'commander' and legalities.status = 'Legal'
sql placeholder
select rulings.text from cards inner join rulings on cards.uuid = rulings.uuid where cards.name = 'Sublime Epiphany' and cards.number = '74s'
select cards.name , cards.artist , cards.ispromo from cards inner join rulings on cards.uuid = rulings.uuid where cards.ispromo = 1 group by cards.name , cards.artist order by count(rulings.id) desc limit 1
select set_translations.translation from cards inner join set_translations on cards.id = set_translations.language where cards.name = 'annul' and cards.number = 29
select cards.name from cards inner join set_translations on cards.id = set_translations.id where set_translations.language = 'Japanese' and cards.isalternative = 'false'
select cast(sum(case when set_translations.language = 'Chinese Simplified' then 1 else 0 end) as real) * 100 / count(cards.availability) from cards inner join set_translations on cards.id = set_translations.id where set_translations.language = 'Chinese Simplified'
select cards.name , sets.totalsetsize from cards inner join set_translations on cards.id = set_translations.setcode inner join sets on sets.code = set_translations.setcode where set_translations.language = 'Italian'
select count(types) from cards where artist = 'Aaron Boyd'
select keywords from cards where name = 'Angel of Mercy'
select count(*) from cards where power = '*'
select promotypes from cards where name = 'Duress'
select bordercolor from cards where name = 'Ancestor''s Chosen'
select originaltype from cards where name = 'Ancestor''s Chosen'
select set_translations.language from cards inner join set_translations on cards.uuid = set_translations.setcode where cards.name = 'Angel of Mercy'
select count(cards.id) from cards inner join legalities on cards.id = legalities.uuid where legalities.status = 'Restricted' and cards.istextless = 0
select rulings.text from cards inner join rulings on cards.uuid = rulings.uuid where cards.name = 'Condemn'
select count(cards.id) from cards inner join legalities on cards.uuid = legalities.uuid where cards.isstarter = 1 and legalities.status = 'Restricted'
select legalities.status from cards inner join legalities on cards.uuid = legalities.uuid where cards.name = 'Cloudchaser Eagle'
select type from cards where name = 'Benalish Knight'
select legalities.format from cards inner join legalities on cards.uuid = legalities.uuid where cards.name = 'Benalish Knight'
select cards.artist from cards inner join foreign_data on cards.uuid = foreign_data.uuid where foreign_data.language = 'Phyrexian'
select cast(sum(case when bordercolor = 'borderless' then 1 else 0 end) as real) * 100 / count(id) from cards
select sum(case when isreprint = 1 then 1 else 0 end) from cards where isreprint = 1
select count(cards.id) from cards inner join set_translations on cards.id = set_translations.id where set_translations.language = 'Russian' and cards.bordercolor = 'borderless'
select cast(sum(case when foreign_data.language = 'French' then 1 else 0 end) as real) * 100 / count(cards.id) from cards inner join foreign_data on cards.id = foreign_data.id where cards.isstoryspotlight = 1
select count(id) from cards where toughness = 99
select name from cards where artist = 'Aaron Boyd'
select count(id) from cards where bordercolor = 'black' and availability = 'mtgo'
select id from cards where convertedmanacost = 0
select layout from cards where keywords = 'Flying'
select count(id) from cards where subtypes != 'Angel' and originaltype = 'Summon - Angel'
select cardkingdomfoilid from cards where cardkingdomfoilid is not null
select id from cards where dueldeck = 'a'
select edhrecrank from cards where frameversion = 2015
select cards.artist from cards inner join set_translations on cards.id = set_translations.id where set_translations.language = 'Chinese Simplified'
select cards.name from cards inner join foreign_data on cards.id = foreign_data.uuid where cards.availability = 'paper' and foreign_data.language = 'Japanese'
select count(cards.id) from cards inner join legalities on cards.uuid = legalities.uuid where cards.bordercolor = 'white' and legalities.status = 'Banned'
select cards.uuid , foreign_data.language from cards inner join foreign_data on cards.uuid = foreign_data.uuid inner join legalities on cards.uuid = legalities.uuid where legalities.format = 'legacy'
select rulings.text from cards inner join rulings on cards.uuid = rulings.uuid where cards.name = 'Beacon of Immortality'
select count(cards.id) , legalities.status from cards inner join legalities on cards.uuid = legalities.uuid where cards.frameversion = 'future'
select distinct colors from cards where setcode = 'OGW'
select cards.name , set_translations.language from cards inner join set_translations on cards.setcode = set_translations.setcode where cards.convertedmanacost = 5 and set_translations.translation = ''
select cards.name , rulings.date from cards inner join rulings on cards.uuid = rulings.uuid where cards.originaltype = 'Creature - Elf'
select distinct cards.colors , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid where cards.id between 1 and 20
select distinct cards.colors from cards inner join set_translations on cards.id = set_translations.setcode inner join foreign_data on set_translations.id = foreign_data.uuid where cards.originaltype = 'Artifact' and cards.colors = 'B'
select cards.name from rulings inner join cards on rulings.id = cards.uuid where cards.rarity = 'uncommon' order by rulings.date desc limit 3
select count(*) from cards where artist = 'John Avon' and cardkingdomfoilid is not null
select count(*) from cards where bordercolor = 'white' and cardkingdomfoilid = cards.cardkingdomid
select count(*) from cards where artist = 'UDON' and availability = 'mtgo' and hand = -1
select count(id) from cards where frameversion = 1993 and availability = 'paper' and hascontentwarning = 1
select manacost from cards where frameversion = 2003 and layout = 'normal' and bordercolor = 'black' and availability = 'mtgo'
select sum(convertedmanacost) from cards where artist = 'Rob Alexander'
select subtypes , supertypes from cards where availability = 'arena'
select cards.setcode from cards inner join set_translations on cards.setcode = set_translations.setcode where set_translations.language = 'Spanish'
select cast(sum(case when hand = +3 then 1 else 0 end) as real) * 100 / count(*) from cards where frameeffects = 'legendary'
select cast(sum(case when istextless = 1 then 1 else 0 end) as real) * 100 / count(id) from cards where isstoryspotlight = 1
select cast(sum(case when foreign_data.language = 'Spanish' then 1 else 0 end) as real) * 100 / count(cards.name) from cards inner join foreign_data on cards.uuid = foreign_data.uuid
select distinct set_translations.language from sets inner join set_translations on sets.code = set_translations.setcode where sets.basesetsize = 309
select count(set_translations.setcode) from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Portuguese (Brasil)' and sets.block = 'Commander'
select cards.id from cards inner join legalities on cards.uuid = legalities.uuid where cards.types = 'Creature' and legalities.status = 'Legal'
select cards.subtypes , cards.supertypes from cards inner join foreign_data on cards.uuid = foreign_data.uuid where foreign_data.language = 'German' and cards.subtypes is not null and cards.supertypes is not null
select count(*) from cards where power = '*'
select count(cards.side) from rulings inner join cards on rulings.uuid = cards.uuid where rulings.text = 'This is a triggered mana ability.' and cards.side is null
sql placeholder
select artist from cards where text = 'Das perfekte Gegenmittel zu einer dichten Formation.'
select foreign_data.name from cards inner join foreign_data on cards.id = foreign_data.id where cards.artist = 'Matthew D. Wilson' and cards.layout = 'normal' and cards.bordercolor = 'black' and cards.type = 'Creature'
select count(cards.id) from cards inner join rulings on cards.id = rulings.uuid where rulings.date = '2009-01-10' and cards.rarity = 'rare'
select set_translations.translation from sets inner join set_translations on sets.code = set_translations.setcode where sets.block = 'Ravnica' and sets.basesetsize = 180
select cast(sum(case when cards.hascontentwarning = 0 then 1 else 0 end) as real) * 100 / count(cards.id) from cards inner join legalities on cards.uuid = legalities.uuid where legalities.format = 'commander' and legalities.status = 'legal'
select cast(sum(case when cards.power = '*' then 1 else 0 end) as real) * 100 / count(cards.id) from cards inner join foreign_data on cards.id = foreign_data.uuid where foreign_data.language = 'French'
select cast(sum(case when sets.type = 'expansion' then 1 else 0 end) as real) * 100 / count(set_translations.translation) from set_translations inner join sets on set_translations.setcode = sets.code where set_translations.language = 'Japanese'
select printings from cards where artist = 'Daren Bader'
select count(id) from cards where bordercolor = 'borderless' and edhrecrank > 12000
select count(id) from cards where isreprint = 1 and isoversized = 1 and ispromo = 1
select power from cards where promotypes = 'arenaleague' and power is null or power = '*' order by power desc limit 3
select foreign_data.language from cards inner join foreign_data on cards.id = foreign_data.uuid where cards.multiverseid = 149934
select cardkingdomid from cards where cardkingdomfoilid is not null and cardkingdomid is not null order by cards.power desc limit 3
select cast(sum(case when layout = 'normal' then 1 else 0 end) as real) * 100 / count(istextless) from cards where istextless = 1
select number from cards where side is null and subtypes = 'Angel' or 'Wizard'
select name from sets where mtgocode is null or mtgocode = '' order by name desc limit 3
select set_translations.language from cards inner join set_translations on cards.setcode = set_translations.setcode inner join sets on set_translations.setcode = sets.code where sets.mcmname = 'Archenemy' and set_translations.setcode = 'ARC'
select sets.name , set_translations.translation from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.id = 5
select foreign_data.language , foreign_data.type from sets inner join set_translations on sets.code = set_translations.setcode inner join foreign_data on set_translations.id = foreign_data.id where foreign_data.id = 206
select cards.name , cards.id from cards inner join sets on cards.id = sets.id inner join foreign_data on cards.uuid = foreign_data.uuid where sets.block = 'Shadowmoor' and foreign_data.language = 'Italian' order by cards.name desc limit 2
sql placeholder
select cards.name from cards inner join set_translations on cards.id = set_translations.setcode inner join sets on set_translations.setcode = sets.code where set_translations.language = 'Russian' order by sets.basesetsize desc limit 1
select cast(sum(case when cards.isonlineonly = 1 then 1 else 0 end) as real) * 100 / count(cards.id) from cards inner join set_translations on cards.id = set_translations.setcode where set_translations.language = 'Chinese Simplified'
select count(sets.code) from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Japanese' and sets.mtgocode is null or sets.mtgocode = ''
select count(id) from cards where bordercolor = 'black'
select count(id) from cards where frameeffects = 'extendedart'
select name from cards where bordercolor = 'black' and isfullart = 1
select set_translations.language from sets inner join set_translations on sets.code = set_translations.setcode where sets.id = 174
select name from sets where code = 'ALL'
select language from foreign_data where name = 'A Pedra Fellwar'
select code from sets where releasedate = '2007-07-13'
select sets.basesetsize , sets.code from sets where block = 'Masques' or block = 'Mirage'
select code from sets where type = 'expansion'
select foreign_data.name , cards.type from cards inner join foreign_data on cards.uuid = foreign_data.uuid where cards.watermark = 'boros'
select foreign_data.language , foreign_data.flavortext , cards.type from cards inner join foreign_data on cards.uuid = foreign_data.uuid where cards.watermark = 'colorpie'
select cast(sum(case when cards.convertedmanacost = 16 then 1 else 0 end) as real) * 100 / count(cards.convertedmanacost) from cards inner join sets on cards.id = sets.id where cards.name = 'Abyssal Horror'
select code from sets where type = 'expansion'
select foreign_data.name , cards.type from cards inner join foreign_data on cards.uuid = foreign_data.uuid where cards.watermark = 'abzan'
select set_translations.language , cards.type from cards inner join set_translations on cards.id = set_translations.setcode inner join foreign_data on set_translations.language = foreign_data.language where cards.watermark = 'azorius'
select count(*) from cards where artist = 'Aaron Miller' and cardkingdomfoilid = cards.cardkingdomid is not null
select count(*) from cards where availability like 'paper%' and hand = '+%'
select name from cards where istextless = 0
select convertedmanacost from cards where name = 'Ancestor''s Chosen'
select count(*) from cards where bordercolor = 'white' and power = '*'
select name from cards where ispromo = 1 and side is not null
select subtypes , supertypes from cards where name = 'Molimo , Maro-Sorcerer'
select purchaseurls from cards where promotypes = 'bundle'
select count(*) from cards where bordercolor = 'black' and printings = 'mtgo' and availability = 'arena'
select case when sum(case when name = 'Serra Angel' then convertedmanacost else 0 end) > sum(case when name = 'Shrine Keeper' then convertedmanacost else 0 end) then 'Serra Angel' else 'Shrine Keeper' end from cards
select artist from cards where flavorname = 'Battra , Dark Destroyer'
select name from cards where frameversion = '2003' order by convertedmanacost desc limit 3
select sets.name from cards inner join set_translations on cards.id = set_translations.setcode inner join sets on set_translations.setcode = sets.code where cards.name = 'Ancestor''s Chosen' and set_translations.language = 'Italian'
select count(set_translations.translation) from cards inner join set_translations on cards.id = set_translations.id where cards.name = 'Angel of Mercy'
select cards.name from cards inner join set_translations on cards.id = set_translations.setcode where set_translations.translation = 'Hauptset Zehnte Edition'
select set_translations.translation from cards inner join set_translations on cards.id = set_translations.id inner join sets on set_translations.setcode = sets.code where cards.name = 'Ancestor''s Chosen' and set_translations.language = 'Korean'
select count(cards.id) from cards inner join set_translations on cards.id = set_translations.setcode where cards.artist = 'Adam Rex' and set_translations.translation = 'Hauptset Zehnte Edition'
select sets.basesetsize from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Hauptset Zehnte Edition'
select set_translations.translation from cards inner join set_translations on cards.id = set_translations.setcode inner join sets on set_translations.setcode = sets.code where sets.name = 'Eighth Edition' and set_translations.language = 'Simplified Chinese'
select sets.isonlineonly from cards inner join sets on cards.setcode = sets.code where cards.name = 'Angel of Mercy' and sets.mtgocode is not null
select sets.releasedate from cards inner join sets on cards.id = sets.id where cards.name = 'Ancestor''s Chosen'
select sets.type from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Hauptset Zehnte Edition'
select count(set_translations.setcode) from sets inner join set_translations on sets.code = set_translations.setcode where sets.block = 'Ice Age' and set_translations.language = 'Italian'
select sets.isforeignonly from cards inner join sets on cards.id = sets.id where cards.name = 'Adarkar Valkyrie'
select count(set_translations.setcode) from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Italian' and sets.basesetsize < 10
select count(cards.id) from cards inner join sets on cards.id = sets.id where cards.bordercolor = 'black' and sets.name = 'Coldsnap'
select name from cards where convertedmanacost = ( select max(convertedmanacost) from cards where name = 'Coldsnap' )
select cards.artist from cards inner join sets on cards.id = sets.id where cards.artist in ('Jeremy Jarvis' , 'Aaron Miller' , 'Chippy')
select cards.name from cards inner join sets on cards.id = sets.id where cards.number = 4 and sets.name = 'Coldsnap'
select count(cards.name) from cards inner join sets on cards.id = sets.id where cards.convertedmanacost > 5 and cards.power = '*' and sets.name = 'Coldsnap'
select foreign_data.flavortext from cards inner join foreign_data on cards.id = foreign_data.id where cards.name = 'Ancestor''s Chosen' and foreign_data.language = 'Italian'
select foreign_data.language from cards inner join foreign_data on cards.id = foreign_data.id where cards.name = 'Ancestor''s Chosen' and foreign_data.flavortext is not null
select foreign_data.type from cards inner join foreign_data on cards.id = foreign_data.uuid where cards.name = 'Ancestor''s Chosen' and foreign_data.language = 'German'
select rulings.text from cards inner join rulings on cards.id = rulings.id inner join set_translations on rulings.id = set_translations.id where set_translations.translation = 'Coldsnap' and set_translations.language = 'Italian'
sql placeholder
select rulings.date from cards inner join rulings on cards.uuid = rulings.uuid where cards.name = 'Reminisce'
select cast(sum(case when cards.convertedmanacost = 7 then 1 else 0 end) as real) * 100 / count(cards.convertedmanacost) from cards inner join sets on cards.setcode = sets.id where sets.name = 'Coldsnap'
select cast(sum(case when cards.name = 'Foil' then 1 else 0 end) as real) * 100 / count(cards.power) from cards inner join sets on cards.cardkingdomfoilid = sets.id where sets.name = 'Coldsnap'
select code from sets where releasedate = '2017-07-14'
select keyrunecode from sets where code = 'PKHC'
select cards.mcmid from cards inner join sets on cards.mcmid = sets.mcmid where cards.setcode = 'SS2'
select sets.mcmname from cards inner join sets on cards.mcmid = sets.mcmid where sets.releasedate = '2017-06-09'
select type from sets where name = 'From the Vault: Lore'
select code from sets where name = 'Commander 2014 Oversized'
select rulings.text , cards.hascontentwarning from cards inner join rulings on cards.uuid = rulings.uuid where cards.artist = 'Jim Pavelec'
select sets.releasedate from cards inner join sets on cards.setcode = sets.code where cards.name = 'Evacuation'
select sets.basesetsize , sets.totalsetsize from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Rinascita di Alara'
select distinct sets.type from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Huitième édition'
select set_translations.translation from cards inner join set_translations on cards.id = set_translations.id inner join sets on set_translations.setcode = sets.code where cards.name = 'Tendo Ice Bridge'
select count(set_translations.translation) from sets inner join set_translations on sets.id = set_translations.setcode where sets.name = 'Salvat 2011'
select sets.name from cards inner join set_translations on cards.id = set_translations.setcode inner join sets on set_translations.setcode = sets.code where cards.name = 'Fellwar Stone' and set_translations.language = 'Japanese'
select cards.name from cards inner join sets on cards.id = sets.id where sets.name = 'Journey into Nyx Hero''s Path' order by cards.convertedmanacost desc limit 1
select sets.releasedate from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Ola de fro'
select sets.type from cards inner join sets on cards.setcode = sets.code where cards.name = 'Samite Pilgrim'
select count(cards.name) from cards inner join sets on cards.id = sets.id where cards.convertedmanacost = 3 and sets.name = 'World Championship Decks 2004'
select set_translations.translation from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Chinese Simplified' and sets.name = 'Mirrodin'
select cast(sum(case when sets.isnonfoilonly = 1 then 1 else 0 end) as real) * 100 / count(cards.availability) from cards inner join set_translations on cards.id = set_translations.id inner join sets on sets.code = set_translations.setcode where set_translations.language = 'Japanese'
select cast(sum(case when cards.isonlineonly = 1 then 1 else 0 end) as real) * 100 / count(cards.id) from cards inner join set_translations on cards.id = set_translations.setcode where set_translations.language = 'Portuguese (Brazil)'
select distinct printings from cards where artist = 'Aleksi Briclot' and istextless = 1
select cards.uuid from cards inner join sets on cards.id = sets.id order by sets.basesetsize desc limit 1
select artist from cards where side is null order by convertedmanacost desc limit 1
select frameeffects from cards where cardkingdomfoilid is not null order by frameeffects desc limit 1
select count(*) from cards where hasfoil = 0 and dueldeck = 'a' and power = '*'
select name , id from sets where type = 'commander' order by totalsetsize desc limit 1
select cards.name from cards inner join legalities on cards.id = legalities.uuid where legalities.format = 'duel' order by cards.manacost desc limit 10
select cards.originalreleasedate , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid where cards.rarity = 'mythic' order by cards.originalreleasedate asc limit 1
select count(cards.id) from cards inner join foreign_data on cards.uuid = foreign_data.uuid where cards.artist = 'Volkan Baga' and foreign_data.language = 'French'
select count(cards.uuid) from cards inner join legalities on cards.uuid = legalities.uuid where cards.name = 'Abundance' and cards.rarity = 'rare' and cards.types = 'Enchantment' and legalities.status = 'Legal'
select legalities.format , cards.name from cards inner join legalities on cards.uuid = legalities.uuid where legalities.status = 'Banned' group by legalities.format order by count(legalities.status) desc limit 1
select set_translations.language from sets inner join set_translations on sets.code = set_translations.setcode where sets.name = 'Battlebond'
select cards.artist , legalities.format from cards inner join legalities on cards.id = legalities.uuid order by cards.id asc limit 1
select legalities.status from cards inner join legalities on cards.uuid = legalities.uuid where cards.frameversion = 1997 and cards.artist = 'D. Alexander Gregory' and legalities.format = 'legacy' and cards.hascontentwarning = 1
select cards.name , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid where cards.edhrecrank = 1 and legalities.status = 'Banned'
select avg(sets.id) , set_translations.language from sets inner join set_translations on sets.code = set_translations.setcode where sets.releasedate between '2012-01-01' and '2015-12-31' group by set_translations.language order by count(set_translations.language) desc limit 1
select artist from cards where bordercolor = 'black' and availability = 'arena'
select cards.uuid from cards inner join legalities on cards.uuid = legalities.uuid where legalities.format = 'oldschool' and legalities.status = 'Banned' or 'Restricted'
select count(*) from cards where artist = 'Matthew D. Wilson' and availability = 'paper'
select rulings.text , rulings.date from cards inner join rulings on cards.uuid = rulings.uuid where cards.artist = 'Kev Walker' order by rulings.date desc limit 1
select cards.name , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid inner join sets on legalities.id = sets.code where sets.name = 'Hour of Devastation' and legalities.status = 'legal'
select sets.name from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language not like '%Japanese%' and set_translations.translation = 'Korean'
select cards.frameversion , cards.facename from cards inner join legalities on cards.uuid = legalities.uuid where cards.artist = 'Allen Williams' and legalities.status = 'Banned'
select displayname from users where displayname = 'Harlan' or displayname = 'Jarrod Dixon' order by reputation desc limit 1
select displayname from users where strftime('%Y' , creationdate) = '2014'
select count(id) from users where lastaccessdate > '2014-09-01 00:00:00'
select displayname from users order by views desc limit 1
select count(*) from users where downvotes > 1 and upvotes > 100
select count(accountid) from users where strftime('%Y' , creationdate) > '2013' and views > 10
select count(posts.owneruserid) from users inner join posts on users.id = posts.owneruserid where users.displayname = 'csgillespie'
select posts.title from posts inner join users on posts.owneruserid = users.id where users.displayname = 'csgillespie'
select ownerdisplayname from posts where title = 'Eliciting priors from experts'
select posts.title from users inner join posts on users.id = posts.owneruserid where users.displayname = 'csgillespie' order by users.views desc limit 1
select users.displayname from users inner join posts on users.id = posts.owneruserid order by posts.favoritecount desc limit 1
select sum(posts.commentcount) from posts inner join users on posts.owneruserid = users.id where users.displayname = 'csgillespie'
select posts.answercount from users inner join posts on users.id = posts.owneruserid where users.displayname = 'csgillespie' order by posts.answercount desc limit 1
select users.displayname from users inner join posts on users.id = posts.owneruserid inner join posthistory on posts.id = posthistory.postid where posts.title = 'Examples for teaching: Correlation does not mean causation'
select count(posts.parentid) from posts inner join users on posts.owneruserid = users.id where users.displayname = 'csgillespie' and posts.parentid is null
select distinct users.displayname from posts inner join users on posts.owneruserid = users.id where posts.closeddate is not null
select count(posts.owneruserid) from posts inner join users on posts.owneruserid = users.id where users.age > 65 and posts.score >= 20
select users.location from posts inner join users on posts.owneruserid = users.id where posts.title = 'Eliciting priors from experts'
select posts.body from tags inner join posts on tags.excerptpostid = posts.id where tags.tagname = 'bayesian'
select posts.body from tags inner join posts on tags.excerptpostid = posts.id order by tags.count desc limit 1
select count(badges.id) from users inner join badges on users.id = badges.userid where users.displayname = 'csgillespie'
select badges.name from badges inner join users on badges.userid = users.id where users.displayname = 'csgillespie'
select count(users.id) from badges inner join users on badges.userid = users.id where users.displayname = 'csgillespie' and badges.date = 2011
select users.displayname from badges inner join users on badges.userid = users.id group by users.displayname order by count(users.displayname) desc limit 1
select avg(posts.score) from posts inner join users on posts.owneruserid = users.id where users.displayname = 'csgillespie'
select cast(count(badges.id) as real) / count(distinct users.displayname) from badges inner join users on badges.userid = users.id where users.views > 200
select cast(sum(case when users.age > 65 then 1 else 0 end) as real) * 100 / count(posts.owneruserid) from users inner join posts on users.id = posts.owneruserid where posts.score > 20
select sum(id) from votes where creationdate = '2010-07-19' and userid = 58
select creationdate from votes group by creationdate order by count(id) desc limit 1
select count(id) from badges where name = 'Revival'
select title from posts order by score desc limit 1
select count(commentcount) from posts where viewcount = 1910
select posts.favoritecount from posts inner join comments on posts.id = comments.postid inner join users on comments.userid = users.id where users.id = 3025 and comments.creationdate = '2014-04-23 20:29:39.0'
select comments.text from comments inner join posts on comments.postid = posts.id where posts.parentid = 107829 and posts.commentcount = 1
select posts.closeddate from comments inner join posts on comments.postid = posts.id where comments.creationdate = '2013-07-12 09:08:18.0' and comments.userid = 23853
select users.reputation from users inner join posts on users.id = posts.owneruserid where posts.id = 65041
select count(posts.owneruserid) from posts inner join users on posts.owneruserid = users.id where users.displayname = 'Tiago Pasqualini'
select users.displayname from votes inner join users on votes.userid = users.id where votes.id = 6347
select sum(votes.votetypeid) from posts inner join votes on posts.id = votes.postid where posts.title = 'Data Visualization'
select badges.name from badges inner join users on badges.userid = users.id where users.displayname = 'DatEpicCoderGuyWhoPrograms'
select cast(count(posts.id) as real) / count(distinct votes.id) from votes inner join posts on votes.postid = posts.id where posts.owneruserid = 24
select users.views from users inner join posts on users.id = posts.id where posts.title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
select text from comments where score = 17
select displayname from users where websiteurl = 'http://stackoverflow.com/u/1114'
select badges.name from badges inner join users on badges.userid = users.id where users.displayname = 'SilentGhost'
select users.displayname from users inner join comments on users.id = comments.userid where comments.text = 'Thank you user93!'
select comments.text from users inner join comments on users.id = comments.userid where users.displayname = 'A Lion'
select users.displayname , users.reputation from users inner join posts on users.id = posts.owneruserid inner join posthistory on posts.id = posthistory.postid where posts.title = 'Understanding what Dassault iSight is doing?'
select comments.text from comments inner join posts on comments.postid = posts.id where posts.title = 'How does gentle boosting differ from AdaBoost?'
select users.displayname from badges inner join users on badges.userid = users.id where badges.name = 'Necromancer' limit 10
select users.displayname from posts inner join users on posts.owneruserid = users.id where posts.title = 'Open source tools for visualizing multi-dimensional data?'
select posts.title from users inner join posts on users.id = posts.lasteditoruserid inner join posthistory on posts.id = posthistory.postid where users.displayname = 'Vebjorn Ljosa'
select sum(posts.score) , users.websiteurl from users inner join posts on users.id = posts.lasteditoruserid inner join posthistory on posts.id = posthistory.postid where users.displayname = 'Yevgeny'
select distinct posthistory.comment from comments inner join posts on comments.postid = posts.id inner join posthistory on posts.id = posthistory.postid where posts.title = 'Why square the difference instead of taking the absolute value in standard deviation?'
select sum(votes.bountyamount) from posts inner join votes on posts.id = votes.postid where posts.title = 'about data'
select posthistory.userdisplayname from votes inner join posts on votes.postid = posts.id inner join posthistory on posts.owneruserid = posthistory.userid inner join users on posts.owneruserid = users.id where votes.bountyamount = 50 and posthistory.comment = 'Variance'
select avg(posts.viewcount) , comments.text from comments inner join posts on comments.postid = posts.id inner join tags on posts.id = tags.excerptpostid where tags.tagname = 'humor'
select count(userid) from comments where userid = 13
select id from users order by reputation desc limit 1
select id from users order by views asc limit 1
select count(userid) from badges where name = 'Supporter' and strftime('%Y' , date) = '2011'
select count(users.id) from badges inner join users on badges.userid = users.id group by users.id having count(users.id) > 5
select count(users.id) from badges inner join users on badges.userid = users.id where badges.name = 'Supporter' and badges.name = 'Teacher' and users.location = 'New York'
select users.id , users.reputation from users inner join posts on users.id = posts.owneruserid where posts.id = 1
select posthistory.userdisplayname from users inner join posthistory on users.id = posthistory.userid inner join posts on posthistory.postid = posts.id where users.views > 1000
select comments.userid , badges.name from comments inner join badges on comments.userid = badges.userid group by comments.userid , badges.name order by count(comments.userid) desc limit 1
select count(users.id) from badges inner join users on badges.userid = users.id where badges.name = 'Teacher' and users.location = 'India'
select cast(sum(case when date = 2010 then 1 else 0 end) as real) * 100 / count(name) from badges where strftime('%Y' , date) = '2011'
select distinct posthistory.posthistorytypeid , posthistory.userid from posts inner join posthistory on posts.posttypeid = posthistory.posthistorytypeid where posts.id = 3720
select posts.viewcount from posts inner join postlinks on posts.id = postlinks.relatedpostid where postlinks.relatedpostid = 61217
select posts.score , postlinks.linktypeid from posts inner join postlinks on posts.id = postlinks.postid where posts.id = 395
select comments.postid , comments.userid from comments inner join posts on comments.postid = posts.id where comments.score > 60
sql placeholder
sql placeholder
select count(userid) from badges where name = 'Announcer'
select distinct name from badges where date = '2010-07-19 19:39:08'
select count(*) from comments where score > 60
select text from comments where creationdate = '2010-07-19 19:16:14.0'
select count(postid) from comments where score = 10
select badges.name from badges inner join users on badges.userid = users.id order by users.reputation desc limit 1
sql placeholder
select badges.name from badges inner join users on badges.userid = users.id where users.displayname = 'Pierre'
select distinct badges.date from badges inner join users on badges.userid = users.id where users.location = 'Rochester , NY'
select cast(sum(case when name = 'Teacher' then 1 else 0 end) as real) * 100 / count(userid) from badges
select cast(sum(case when users.age between 13 and 18 then 1 else 0 end) as real) * 100 / count(users.id) from badges inner join users on badges.userid = users.id where badges.name = 'Organizer'
select score from comments where creationdate = '2010-07-19 19:19:56.0'
select posthistory.text from comments inner join posthistory on comments.postid = posthistory.postid where comments.creationdate = '2010-07-19 19:37:33.0'
select users.age from badges inner join users on badges.userid = users.id where users.location = 'Vienna , Austria'
select count(users.id) from badges inner join users on badges.userid = users.id where badges.name = 'Supporter' and users.age between 19 and 65
select users.views from badges inner join users on badges.userid = users.id where badges.date = '2010-07-19 19:39:08.0'
select badges.name from badges inner join users on badges.userid = users.id order by users.reputation asc limit 1
select distinct badges.name from badges inner join users on badges.userid = users.id where users.displayname = 'Sharpie'
select count(users.id) from badges inner join users on badges.userid = users.id where badges.name = 'Supporter' and users.age > 65
select displayname from users where id = 30
select count(id) from users where location = 'New York'
select count(id) from votes where strftime('%Y' , creationdate) = '2010'
select count(id) from users where age between 19 and 65
select displayname from users order by views desc limit 1
select cast(sum(case when strftime('%Y' , creationdate) = '2010' then 1 else 0 end) as real) * 100 / sum(case when strftime('%Y' , creationdate) = '2011' then 1 else 0 end) from votes
select tags.tagname from posts inner join tags on posts.id = tags.id inner join users on posts.owneruserid = users.id where users.displayname = 'John Stauffer'
select count(posthistory.postid) from users inner join posts on users.id = posts.owneruserid inner join posthistory on posts.id = posthistory.postid where users.displayname = 'Daniel Vassallo'
select count(votes.userid) from votes inner join users on votes.userid = users.id where users.displayname = 'Harlan'
select posts.id from users inner join posts on users.id = posts.owneruserid where users.displayname = 'slashnick' order by posts.answercount desc limit 1
select posts.viewcount from users inner join posts on users.id = posts.owneruserid inner join posthistory on posts.id = posthistory.postid where users.displayname = 'Harvey Motulsky' or users.displayname = 'Noah Snyder' order by posts.viewcount desc limit 1
select count(distinct posts.ownerdisplayname) from posts inner join votes on posts.id = votes.postid inner join posthistory on posts.id = posthistory.postid where posts.ownerdisplayname = 'Matt Parker' and votes.postid > 4
select count(comments.score) from comments inner join posts on comments.postid = posts.id inner join users on comments.userid = users.id where users.displayname = 'Neil McGuigan' and comments.score < 60
select distinct tags.tagname from posts inner join tags on posts.id = tags.id inner join users on posts.owneruserid = users.id where users.displayname = 'Mark Meckes'
select distinct users.displayname from badges inner join users on badges.userid = users.id where badges.name = 'Organizer'
select cast(sum(case when tags.tagname = 'r' then 1 else 0 end) as real) * 100 / count(tags.tagname) from tags inner join posts on tags.id = posts.id inner join users on posts.owneruserid = users.id where users.displayname = 'Community'
select sum(case when users.displayname = 'Mornington' then posts.viewcount else 0 end) - sum(case when users.displayname = 'Amos' then posts.viewcount else 0 end) from users inner join posts on users.id = posts.owneruserid
select count(userid) from badges where name = 'Commentator' and strftime('%Y' , date) = '2014'
select count(postid) from posthistory where creationdate between '2010-07-21 00:00:00' and '2012-07-21 23:59:59'
select displayname , age from users order by views desc limit 1
select posts.lasteditdate , posts.lasteditoruserid from posts inner join posthistory on posts.id = posthistory.postid where posts.title = 'Detecting a given face in a database of facial images'
select count(score) from comments where userid = 13
select posts.title , users.displayname from comments inner join posts on comments.postid = posts.id inner join users on comments.userid = users.id where comments.score > 60
select distinct badges.name from badges inner join users on badges.userid = users.id where strftime('%Y' , badges.date) = '2011'
select users.displayname , users.websiteurl from users inner join posts on users.id = posts.owneruserid where posts.favoritecount > 150
select count(posthistory.postid) , posts.lasteditdate from posts inner join posthistory on posts.id = posthistory.postid where posts.title = 'What is the best introductory Bayesian statistics textbook?'
select users.lastaccessdate , users.location from users inner join badges on users.id = badges.userid where badges.name = 'outliers'
select posts.title from posts inner join posthistory on posts.id = posthistory.postid where posthistory.text = 'How to tell if something happened in a data set which monitors a value over time'
sql placeholder
select posts.ownerdisplayname from users inner join posts on users.id = posts.owneruserid order by posts.viewcount desc limit 1
sql placeholder
select postlinks.relatedpostid , postlinks.linktypeid from posts inner join postlinks on posts.id = postlinks.relatedpostid where posts.title = 'What are principal component scores?'
select users.displayname from users inner join posts on users.id = posts.parentid order by posts.score desc limit 1
select users.displayname , users.websiteurl from users inner join votes on users.id = votes.userid where votes.votetypeid = 8 order by votes.bountyamount desc limit 1
select title from posts order by viewcount desc limit 5
select count(tagname) from tags where count between 5000 and 7000
select owneruserid from posts order by favoritecount desc limit 1
select age from users order by reputation desc limit 1
select count(postid) from votes where strftime('%Y' , creationdate) = '2011' and bountyamount = 50
select id from users order by age asc limit 1
select score from posts order by viewcount desc limit 1
select cast(count(postlinks.id) as real) / 12 from posts inner join postlinks on posts.id = postlinks.postid where strftime('%Y' , postlinks.creationdate) = '2010' and posts.answercount < 2
select votes.postid from votes inner join posts on votes.postid = posts.id where votes.userid = 'users.id' and posts.favoritecount = 1 order by posts.favoritecount desc limit 1
select title from posts order by creaiondate asc limit 1
select users.displayname from badges inner join users on badges.userid = users.id group by users.displayname order by count(users.displayname) desc limit 1
select votes.creationdate from users inner join votes on users.id = votes.userid inner join posts on votes.postid = posts.id where users.displayname = 'chl' order by votes.creationdate asc limit 1
select posts.creaiondate from users inner join posts on users.id = posts.id order by users.age asc limit 1
sql placeholder
select count(distinct users.id) from users inner join posts on users.id = posts.owneruserid where posts.favoritecount >= 4 and users.location = 'United Kingdom'
select avg(votes.postid) from votes inner join users on votes.userid = users.id where users.age = ( select max(age) from users )
select displayname from users order by reputation desc limit 1
select count(reputation) from users where views > 1000 and reputation > 2000
select displayname from users where age between 19 and 65
select count(posthistory.postid) from users inner join posthistory on users.id = posthistory.userid where users.displayname = 'Jay Stevens' and strftime('%Y' , users.creationdate) = '2010'
select posts.id , posts.title from users inner join posts on users.id = posts.owneruserid where users.displayname = 'Harvey Motulsky' order by posts.viewcount desc limit 1
select posts.title , posts.owneruserid from posts inner join comments on posts.id = comments.postid order by comments.score desc limit 1
select avg(posts.score) from users inner join posts on users.id = posts.owneruserid where users.displayname = 'Stephen Turner'
sql placeholder
select posts.ownerdisplayname , posts.id from users inner join posts on users.id = posts.owneruserid inner join posthistory on posts.id = posthistory.postid where strftime('%Y' , users.creationdate) = '2010' order by posts.favoritecount desc limit 1
select cast(count(case when users.reputation > 1000 then 1 else null end) as real) * 100 / count(posts.owneruserid) from users inner join posts on users.id = posts.owneruserid where strftime('%Y' , users.creationdate) = '2011'
select cast(count(case when age between 13 and 18 then 1 else null end) as real) * 100 / count(id) from users
sql placeholder
select count(viewcount) from posts where viewcount > ( select avg(viewcount) from posts )
select count(posts.id) from comments inner join posts on comments.postid = posts.id order by posts.score desc limit 1
select count(viewcount) from posts where commentcount = 0 and viewcount > 35000
select users.displayname , users.location from users inner join posts on users.id = posts.lasteditoruserid where posts.id = 183 order by posts.lasteditdate desc limit 1
select badges.name from badges inner join users on badges.userid = users.id where users.displayname = 'Emett' order by badges.date desc limit 1
select count(upvotes) from users where age between 19 and 65 and upvotes > 5000
select strftime('%Y' , badges.date) - strftime('%Y' , users.creationdate) from badges inner join users on badges.userid = users.id where users.displayname = 'Zolomon'
sql placeholder
sql placeholder
select count(userid) from badges where name = 'Citizen Patrol'
select count(tags.id) from tags inner join posts on tags.id = posts.id where tags.tagname = 'careers'
select reputation , views from users where displayname = 'Jarrod Dixon'
select posts.commentcount , posts.answercount from posts inner join comments on posts.id = comments.postid where posts.title = 'Clustering 1D data'
select creationdate from users where displayname = 'IrishStat'
select count(distinct postid) from votes where bountyamount >= 30
select cast(count(case when posts.score >= 50 then 1 else null end) as real) * 100 / count(posts.id) from users inner join posts on users.id = posts.id inner join comments on posts.id = comments.postid order by users.reputation desc limit 1
select count(postid) from comments where score < 20
select count(tags.tagname) from tags inner join posts on tags.id = posts.id where tags.id < 15 and tags.count < 20
select excerptpostid , wikipostid from tags where tagname = 'sample'
select users.reputation , users.upvotes from comments inner join users on comments.userid = users.id where comments.text = 'fine , you win :)'
select posthistory.text from posts inner join comments on posts.id = comments.postid inner join posthistory on comments.postid = posthistory.postid where posts.title = 'How can I adapt ANOVA for binary data?'
select comments.text from comments inner join posts on comments.postid = posts.id where posts.viewcount between 100 and 150 order by comments.score desc limit 1
sql placeholder
select count(viewcount) from posts where viewcount < 5 and score = 0
select count(posts.commentcount) from comments inner join posts on comments.postid = posts.id where comments.score = 0 and posts.commentcount = 1
select count(users.id) from users inner join comments on users.id = comments.userid where users.age = 40 and comments.score = 0
select comments.postid , comments.text from comments inner join posts on comments.postid = posts.id where posts.title = 'Group differences on a five point Likert item'
select users.upvotes from comments inner join users on comments.userid = users.id where comments.text = 'R is also lazy evaluated.'
select distinct posthistory.comment from users inner join comments on users.id = comments.userid inner join posthistory on comments.userid = posthistory.userid where users.displayname = 'Harvey Motulsky'
select distinct users.displayname from comments inner join users on comments.userid = users.id where comments.score between 1 and 5 and users.downvotes = 0
select cast(sum(case when users.upvotes = 0 then 1 else 0 end) as real) * 100 / count(users.id) from users inner join comments on users.id = comments.userid where comments.score between 5 and 10
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = '3-D Man'
select count(hero_power.hero_id) from hero_power inner join superhero on hero_power.hero_id = superhero.id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Super Strength'
select count(hero_power.hero_id) from superpower inner join hero_power on superpower.id = hero_power.power_id inner join superhero on hero_power.hero_id = superhero.id where superpower.power_name = 'Super Strength' and superhero.height_cm > 200
select superhero.full_name from hero_power inner join superhero on hero_power.hero_id = superhero.id group by superhero.full_name having count(hero_power.power_id) > 15
select count(superhero.id) from colour inner join superhero on colour.id = superhero.eye_colour_id where colour.colour = 'Blue'
select colour.colour from colour inner join superhero on colour.id = superhero.skin_colour_id where superhero.superhero_name = 'Apocalypse'
select count(superhero.superhero_name) from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id inner join colour on colour.id = superhero.eye_colour_id where colour.colour = 'Blue' and superpower.power_name = 'Agility'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join colour on colour.id = superhero.hair_colour_id inner join superpower on hero_power.power_id = superpower.id where colour.colour = 'Blond' and superhero.eye_colour_id = 'Blue' and superpower.power_name = 'Agility'
select count(*) from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics'
select superhero.full_name from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics' order by superhero.height_cm desc limit 1
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.superhero_name = 'Sauron'
select count(superhero.id) from superhero inner join colour on superhero.eye_colour_id = colour.id inner join publisher on superhero.publisher_id = publisher.id where colour.colour = 'Blue' and publisher.publisher_name = 'Marvel Comics'
select avg(superhero.height_cm) from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics'
select cast(count(case when superpower.power_name = 'Super Strength' then 1 else null end) as real) * 100 / count(*) from superpower inner join hero_power on superpower.id = hero_power.power_id inner join superhero on hero_power.hero_id = superhero.id inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics'
select count(*) from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'DC Comics'
select publisher.publisher_name from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on hero_attribute.hero_id = superhero.id inner join publisher on superhero.publisher_id = publisher.id where attribute.attribute_name = 'Speed' order by hero_attribute.attribute_value asc limit 1
select count(*) from superhero inner join colour on superhero.eye_colour_id = colour.id inner join publisher on superhero.publisher_id = publisher.id where colour.colour = 'Gold' and publisher.publisher_name = 'Marvel Comics'
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.superhero_name = 'Blue Beetle II'
select count(superhero.id) from colour inner join superhero on colour.id = superhero.hair_colour_id where colour.colour = 'Blond'
select superhero.superhero_name from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on hero_attribute.hero_id = superhero.id where attribute.attribute_name = 'Intelligence' order by hero_attribute.attribute_value asc limit 1
select race.race from race inner join superhero on race.id = superhero.race_id where superhero.superhero_name = 'Copycat'
select count(superhero.superhero_name) from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on hero_attribute.hero_id = superhero.id where attribute.attribute_name = 'Durability' and hero_attribute.attribute_value < 50
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Death Touch'
select count(*) from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on hero_attribute.hero_id = superhero.id inner join gender on superhero.gender_id = gender.id where attribute.attribute_name = 'Strength' and hero_attribute.attribute_value = 100 and gender.gender = 'Female'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id group by superhero.superhero_name order by count(superpower.power_name) desc limit 1
select count(superhero.race_id) from race inner join superhero on race.id = superhero.race_id where race.race = 'Vampire'
select cast(count(case when alignment.alignment = 'Bad' then 1 else null end) as real) * 100 / count(*) from alignment inner join superhero on alignment.id = superhero.alignment_id inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics'
select sum(case when publisher.publisher_name = 'Marvel Comics' then 1 else 0 end) - sum(case when publisher.publisher_name = 'DC Comics' then 1 else 0 end) as difference from superhero inner join publisher on superhero.publisher_id = publisher.id
select id from publisher where publisher_name = 'Star Trek'
select avg(hero_attribute.attribute_value) from hero_attribute inner join superhero on hero_attribute.hero_id = superhero.id
select count(*) from superhero where full_name is null
select colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.id = 75
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = 'Deathlok'
select avg(superhero.weight_kg) from gender inner join superhero on gender.id = superhero.gender_id where gender.gender = 'Female'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id inner join gender on gender.id = superhero.gender_id where gender.gender = 'Male' limit 5
select superhero.superhero_name from superhero inner join race on superhero.race_id = race.id inner join hero_power on hero_power.hero_id = superhero.id where race.race = 'Alien'
select superhero_name from superhero where height_cm between 170 and 190 and eye_colour_id = 1
select superpower.power_name from hero_power inner join superpower on hero_power.power_id = superpower.id where hero_power.hero_id = 56
select superhero.full_name from superhero inner join race on superhero.race_id = race.id where race.race = 'Demi-God' limit 5
select count(*) from alignment inner join superhero on alignment.id = superhero.alignment_id where alignment.alignment = 'Bad'
select race.race from race inner join superhero on race.id = superhero.race_id inner join hero_power on superhero.id = hero_power.hero_id where superhero.weight_kg = 169
select colour.colour from superhero inner join colour on superhero.hair_colour_id = colour.id inner join race on race.id = superhero.race_id where race.race = 'Human' and superhero.height_cm = 185
select superhero.eye_colour_id from superhero inner join colour on superhero.eye_colour_id = colour.id order by superhero.weight_kg desc limit 1
select cast(count(case when publisher.publisher_name = 'Marvel Comics' then 1 else null end) as real) * 100 / count(publisher.id) from publisher inner join superhero on publisher.id = superhero.publisher_id inner join hero_power on superhero.id = hero_power.hero_id where superhero.height_cm between 150 and 180
select superhero.full_name from superhero inner join gender on superhero.gender_id = gender.id where gender.gender = 'Male' and superhero.weight_kg > ( select avg(weight_kg) from superhero )
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id group by superpower.power_name order by count(superpower.power_name) desc limit 1
select hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where superhero.superhero_name = 'Abomination'
select superpower.power_name from hero_power inner join superpower on hero_power.power_id = superpower.id where hero_power.hero_id = 1
select count(hero_power.hero_id) from hero_power inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Stealth'
select superhero.full_name from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on hero_attribute.hero_id = superhero.id where attribute.attribute_name = 'Strength' order by hero_attribute.attribute_value desc limit 1
select cast(count(superhero.id) as real) / count(distinct superhero.skin_colour_id) from colour inner join superhero on colour.id = superhero.skin_colour_id where colour.id = 1
select count(*) from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Dark Horse Comics'
select superhero.superhero_name from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on hero_attribute.hero_id = superhero.id inner join publisher on superhero.publisher_id = publisher.id where attribute.attribute_name = 'durability' order by hero_attribute.attribute_value desc limit 1
select colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.full_name = 'Abraham Sapien'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Flight'
select superhero.eye_colour_id , superhero.hair_colour_id , superhero.skin_colour_id from superhero inner join publisher on superhero.publisher_id = publisher.id inner join gender on gender.id = superhero.gender_id where gender.gender = 'Female' and publisher.publisher_name = 'Dark Horse Comics'
select superhero.superhero_name , publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id inner join superpower on superhero.id = superpower.id where superhero.eye_colour_id = eye_colour_id and superhero.hair_colour_id = skin_colour_id
select race.race from race inner join superhero on race.id = superhero.race_id where superhero.superhero_name = 'A-Bomb'
select cast(sum(case when colour.colour = 'Blue' then 1 else 0 end) as real) * 100 / count(*) from colour inner join superhero on colour.id = superhero.skin_colour_id inner join gender on gender.id = superhero.gender_id where gender.gender = 'Female'
select superhero.superhero_name , race.race from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join race on superhero.race_id = race.id where superhero.full_name = 'Charles Chandler'
select gender.gender from superhero inner join gender on superhero.gender_id = gender.id where superhero.superhero_name = 'Agent 13'
select superhero.superhero_name from superpower inner join hero_power on superpower.id = hero_power.power_id inner join superhero on hero_power.hero_id = superhero.id where superpower.power_name = 'Adaptation'
select count(hero_power.power_id) from hero_power inner join superhero on hero_power.hero_id = superhero.id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = 'Amazo'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.full_name = 'Hunter Zolomon'
select superhero.height_cm from colour inner join superhero on colour.id = superhero.eye_colour_id where colour.colour = 'Amber'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join colour on colour.id = superhero.eye_colour_id and superhero.hair_colour_id = superhero.hair_colour_id where colour.colour = 'Black'
select superhero.eye_colour_id from colour inner join superhero on colour.id = superhero.skin_colour_id where colour.colour = 'Gold'
select superhero.full_name from superhero inner join race on superhero.race_id = race.id where race.race = 'Vampire'
select superhero.superhero_name from alignment inner join superhero on alignment.id = superhero.alignment_id where alignment.alignment = 'Neutral'
select count(hero_attribute.hero_id) from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id where attribute.attribute_name = 'Strength' order by hero_attribute.attribute_value desc limit 1
select race.race , alignment.alignment from alignment inner join superhero on alignment.id = superhero.alignment_id inner join race on race.id = superhero.race_id where superhero.superhero_name = 'Cameron Hicks'
select cast(count(case when gender.gender = 'Female' then 1 else null end) as real) * 100 / count(*) from gender inner join superhero on gender.id = superhero.gender_id inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics'
select avg(superhero.weight_kg) from superhero inner join race on superhero.race_id = race.id where race.race = 'Alien'
select sum(case when full_name = 'Emil Blonsky' then weight_kg else 0 end) - sum(case when full_name = 'Charles Chandler' then weight_kg else 0 end) as difference from superhero
select avg(height_cm) from superhero
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = 'Abomination'
select count(*) from gender inner join superhero on gender.id = superhero.gender_id inner join race on race.id = superhero.race_id where race.race = 'god/eternal' and gender.gender = 'Male'
select superhero.superhero_name from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on hero_attribute.hero_id = superhero.id where attribute.attribute_name = 'Speed' order by hero_attribute.attribute_value desc limit 1
select count(*) from alignment inner join superhero on alignment.id = superhero.alignment_id where alignment.alignment = 'Neutral'
select attribute.attribute_name , hero_attribute.attribute_value from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on hero_attribute.hero_id = superhero.id where superhero.superhero_name = '3-D Man'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id where superhero.eye_colour_id = 7 and superhero.hair_colour_id = 9
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.superhero_name = 'Hawkman' or superhero.superhero_name = 'Karate Kid' or superhero.superhero_name = 'Speedy'
select count(*) from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.id = 1
select cast(count(case when superhero.eye_colour_id = 7 then 1 else null end) as real) * 100 / count(superhero.superhero_name) from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join colour on colour.id = superhero.id where colour.colour = 'Blue'
select cast(sum(case when gender.gender = 1 then 1 else 0 end) as real) * 100 / sum(case when gender.gender = 2 then 1 else 0 end) from gender inner join superhero on gender.id = superhero.gender_id
select superhero_name from superhero order by height_cm desc limit 1
select id from superpower where power_name = 'cryokinesis'
select superhero_name from superhero where id = 294
select full_name from superhero where weight_kg = 0 or weight_kg = null
select colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.full_name = 'Karen Beecher-Duncan'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.full_name = 'Helen Parr'
select race.race from race inner join superhero on race.id = superhero.race_id where superhero.height_cm = 188 and superhero.weight_kg = 108
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.id = 38
select race.race from hero_attribute inner join superhero on hero_attribute.hero_id = superhero.id inner join race on race.id = superhero.race_id order by hero_attribute.attribute_value desc limit 1
select alignment.alignment , superpower.power_name from alignment inner join superhero on alignment.id = superhero.alignment_id inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = 'Atom IV'
select superhero.full_name from superhero inner join colour on superhero.eye_colour_id = colour.id where colour.colour = 'Blue' limit 5
select avg(hero_attribute.attribute_value) from alignment inner join hero_attribute on alignment.id = hero_attribute.attribute_id inner join superhero on hero_attribute.hero_id = superhero.id where alignment.alignment = 'Neutral'
select colour.colour from colour inner join superhero on colour.id = superhero.skin_colour_id inner join hero_attribute on superhero.id = hero_attribute.hero_id where hero_attribute.attribute_value = 100
select count(*) from alignment inner join superhero on alignment.id = superhero.alignment_id inner join gender on gender.id = superhero.gender_id where gender.gender = 'Female' and alignment.alignment = 'Good'
select superhero.superhero_name from hero_attribute inner join superhero on hero_attribute.hero_id = superhero.id inner join attribute on hero_attribute.attribute_id = attribute.id where hero_attribute.attribute_value between 75 and 80
select race.race from race inner join superhero on race.id = superhero.race_id inner join gender on superhero.gender_id = gender.id inner join colour on colour.id = superhero.hair_colour_id where colour.colour = 'blue' and gender.gender = 'male'
select cast(count(case when gender.gender = 'Female' then 1 else null end) as real) * 100 / count(*) from alignment inner join superhero on alignment.id = superhero.alignment_id inner join gender on gender.id = superhero.gender_id where alignment.alignment = 'Bad'
select sum(case when colour.colour = 'Blue' then 1 else 0 end) - sum(case when colour.colour = 'No Eye Color' then 1 else 0 end) as difference from colour inner join superhero on colour.id = superhero.eye_colour_id where superhero.weight_kg = 0
select hero_attribute.attribute_value from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on hero_attribute.hero_id = superhero.id where superhero.superhero_name = 'Hulk' and attribute.attribute_name = 'Strength'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = 'Ajax'
select count(*) from colour inner join superhero on colour.id = superhero.skin_colour_id inner join alignment on alignment.id = superhero.alignment_id where colour.colour = 'Green' and alignment.alignment = 'Bad'
select count(*) from gender inner join superhero on gender.id = superhero.gender_id inner join publisher on superhero.publisher_id = publisher.id where gender.gender = 'Female' and publisher.publisher_name = 'Marvel Comics'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Wind Control' order by superhero.superhero_name asc
select gender.gender from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join gender on superhero.gender_id = gender.id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Phoenix Force'
select superhero.superhero_name from superhero inner join publisher on superhero.publisher_id = publisher.id inner join hero_power on hero_power.hero_id = superhero.id where publisher.publisher_name = 'DC Comics' order by superhero.weight_kg desc limit 1
select avg(superhero.height_cm) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join race on race.id = superhero.race_id where race.race > 'Human' and publisher.publisher_name = 'Dark Horse Comics'
select superhero.superhero_name from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on hero_attribute.hero_id = superhero.id where attribute.attribute_name = 'Speed' order by hero_attribute.attribute_value desc limit 1
select sum(case when publisher.publisher_name = 'DC Comics' then 1 else 0 end) - sum(case when publisher.publisher_name = 'Marvel Comics' then 1 else 0 end) from superhero inner join publisher on superhero.publisher_id = publisher.id
select attribute.attribute_name from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on hero_attribute.hero_id = superhero.id where superhero.superhero_name = 'Black Panther' order by hero_attribute.attribute_value asc limit 1
select colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.superhero_name = 'Abomination'
select full_name from superhero order by height_cm desc limit 1
select superhero_name from superhero where full_name = 'Charles Chandler'
select cast(count(case when gender.gender = 'Female' then 1 else null end) as real) * 100 / count(*) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join gender on gender.id = superhero.gender_id where publisher.publisher_name = 'George Lucas'
select cast(count(case when alignment.alignment = 'Good' then 1 else null end) as real) * 100 / count(*) from alignment inner join superhero on alignment.id = superhero.alignment_id inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics'
select count(*) from superhero where full_name like 'John%'
select hero_id from hero_attribute order by attribute_value asc limit 1
select full_name from superhero where superhero_name = 'Alien'
select superhero.full_name from superhero inner join colour on colour.id = superhero.eye_colour_id inner join hero_power on superhero.id = hero_power.hero_id where colour.colour = 'Brown' and superhero.weight_kg < 100
select hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where superhero.superhero_name = 'Aquababy'
select superhero.weight_kg , race.race from race inner join superhero on race.id = superhero.race_id where superhero.id = 40
select avg(superhero.height_cm) from alignment inner join superhero on alignment.id = superhero.alignment_id where alignment.alignment = 'Neutral'
select hero_power.hero_id from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Intelligence'
select colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.superhero_name = 'Blackwulf'
select superpower.power_name from superpower inner join hero_power on superpower.id = hero_power.power_id inner join superhero on hero_power.hero_id = superhero.id where superhero.height_cm > ( select avg(height_cm) from superhero )
select drivers.driverref from drivers inner join qualifying on drivers.driverid = qualifying.driverid inner join results on results.driverid = qualifying.raceid where qualifying.raceid = 18 order by qualifying.q1 desc limit 5
select drivers.surname from results inner join qualifying on results.driverid = qualifying.driverid inner join drivers on drivers.driverid = qualifying.driverid where qualifying.raceid = 19 order by qualifying.q2 asc limit 1
select races.year from circuits inner join races on circuits.circuitid = races.circuitid where circuits.location = 'shanghai'
select circuits.url from circuits inner join races on circuits.circuitid = races.circuitid where circuits.name = 'Circuit de Barcelona-Catalunya'
select races.name from circuits inner join races on circuits.circuitid = races.circuitid where circuits.country = 'Germany'
select distinct results.position from circuits inner join results on circuits.circuitid = results.constructorid inner join constructors on results.constructorid = constructors.constructorid where constructors.name = 'Renault'
select count(races.raceid) from circuits inner join races on circuits.circuitid = races.circuitid inner join results on races.raceid = results.raceid where circuits.country = 'Asia' and races.year = 2010
select races.name from circuits inner join races on circuits.circuitid = races.circuitid where circuits.country = 'Spain'
select circuits.location from circuits inner join races on circuits.circuitid = races.circuitid where races.name = 'Australian Grand Prix'
select races.url from circuits inner join races on circuits.circuitid = races.circuitid where circuits.name = 'Sepang International Circuit'
select races.time from circuits inner join races on circuits.circuitid = races.circuitid where circuits.name = 'Sepang International Circuit'
select results.position from races inner join circuits on races.circuitid = circuits.circuitid inner join results on results.raceid = races.raceid where races.name = 'Abu Dhabi Grand Prix'
select distinct constructors.nationality from results inner join constructorresults on results.constructorid = constructorresults.constructorid inner join constructors on constructorresults.constructorid = constructors.constructorid where constructorresults.raceid = 24 and constructorresults.points = 1
select qualifying.q1 from drivers inner join results on drivers.driverid = results.driverid inner join qualifying on results.driverid = qualifying.driverid where drivers.forename = 'Bruno' and drivers.surname = 'Senna' and qualifying.raceid = 354
sql placeholder
select drivers.number from drivers inner join qualifying on drivers.driverid = qualifying.driverid inner join results on results.raceid = qualifying.raceid where drivers.surname = 'Driver' and qualifying.q3 = '0:01:54'
select count(distinct drivers.driverid) from races inner join laptimes on races.raceid = laptimes.raceid inner join drivers on laptimes.driverid = drivers.driverid where races.name = 'Bahrain Grand Prix' and races.year = 2007
select seasons.url from races inner join seasons on races.year = seasons.year inner join results on results.raceid = races.raceid where races.year = 901
select count(drivers.driverid) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.year = 2015 and races.date = '2015-11-29'
select drivers.dob from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.raceid = 592 order by races.time asc limit 1
sql placeholder
select drivers.driverid from results inner join laptimes on results.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid inner join drivers on drivers.driverid = results.driverid where races.raceid = 933 order by results.fastestlapspeed desc limit 1
select circuits.location from circuits inner join races on circuits.circuitid = races.circuitid where races.name = 'Malaysian Grand Prix'
select distinct constructors.url from constructors inner join results on constructors.constructorid = results.constructorid inner join constructorresults on results.constructorid = constructorresults.constructorid where constructorresults.raceid = 9 order by constructorresults.points desc limit 1
select qualifying.q1 from qualifying inner join results on qualifying.driverid = results.driverid inner join drivers on results.driverid = drivers.driverid where drivers.surname = 'Lucas' and drivers.forename = 'di Grassi' and qualifying.raceid = 345
sql placeholder
sql placeholder
select laptimes.time from laptimes inner join results on laptimes.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.forename = 'Bruce' and drivers.surname = 'McLaren' and results.raceid = 743
select drivers.forename , drivers.surname from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'San Marino Grand Prix' and races.year = 2006
select seasons.url from races inner join seasons on races.year = seasons.year inner join results on results.raceid = races.raceid where races.year = 901
select count(drivers.driverid) from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where races.year = 2015 and races.date = '2015-11-29'
select drivers.forename , drivers.surname from drivers inner join laptimes on drivers.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid where races.raceid = 872 order by drivers.dob desc limit 1
select drivers.surname from drivers inner join laptimes on drivers.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid inner join results on results.driverid = drivers.driverid where races.raceid = 348 order by laptimes.time asc limit 1
select drivers.nationality from results inner join drivers on results.driverid = drivers.driverid where results.raceid = 348 order by results.fastestlapspeed desc limit 1
sql placeholder
select cast(sum(case when races.date = '1983-07-16' then 1 else 0 end) as real) * 100 / count(drivers.driverid) from drivers inner join laptimes on drivers.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid where races.date = '1983-07-16'
select year from races where name = 'Singapore Grand Prix' order by year asc limit 1
select count(name) from races where year = 2005 order by name desc
select name , date from races where year = ( select min(date) from races ) and year = ( select min(date) from races )
select name , date from races where year = 1999 order by round desc limit 1
select year from races group by year order by count(round) desc limit 1
select distinct races.name from races inner join results on races.raceid = results.raceid where races.year = 2017 and races.year = 2000
select circuits.country , circuits.name , circuits.location from races inner join circuits on races.circuitid = circuits.circuitid where races.name = 'European Grand Prix' order by races.year asc limit 1
select races.year from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Brands Hatch' order by races.year desc limit 1
select count(distinct races.year) from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Silverstone Circuit' and races.name = 'British Grand Prix'
select drivers.forename , drivers.surname from drivers inner join results on drivers.driverid = results.driverid inner join driverstandings on results.driverid = driverstandings.driverid inner join races on results.raceid = races.raceid where races.name = 'Singapore Grand Prix' and races.year = 2010 order by results.position desc limit 1
select drivers.forename , drivers.surname from drivers inner join results on drivers.driverid = results.driverid order by results.points desc limit 1
select drivers.forename , drivers.surname , results.points from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid inner join driverstandings on results.driverid = driverstandings.driverid where races.name = 'Chinese Grand Prix' and races.year = 2017 order by results.points desc limit 3
select results.fastestlaptime , drivers.surname , races.name from results inner join drivers on results.driverid = drivers.driverid inner join races on results.raceid = races.raceid inner join laptimes on laptimes.raceid = races.raceid order by laptimes.time asc limit 1
select avg(laptimes.time) from races inner join laptimes on races.raceid = laptimes.raceid inner join drivers on laptimes.driverid = drivers.driverid where drivers.surname = 'Sebastian' and drivers.forename = 'Vettel' and races.name = 'Chinese Grand Prix'
sql placeholder
select drivers.nationality , avg(driverstandings.points) from drivers inner join driverstandings on drivers.driverid = driverstandings.driverid group by drivers.driverid order by count(driverstandings.wins) desc limit 1
select dob , surname from drivers where nationality = 'Japanese' order by dob desc limit 1
select circuits.name from races inner join circuits on races.circuitid = circuits.circuitid where races.year between 1990 and 2000 limit 4
select circuits.name , circuits.location , races.name from circuits inner join races on circuits.circuitid = races.circuitid where races.year = 2006 and circuits.country = 'USA'
select races.name , circuits.name , circuits.location from races inner join circuits on races.circuitid = circuits.circuitid where races.year = 2005 and races.date = 9
sql placeholder
select count(drivers.driverid) from results inner join circuits on results.driverid = circuits.circuitid inner join races on circuits.circuitid = races.circuitid inner join drivers on drivers.driverid = results.driverid where drivers.surname = 'Michael' and drivers.forename = 'Schumacher' and circuits.name = 'Sepang International Circuit' order by results.points desc limit 1
select races.name , races.year from results inner join laptimes on results.raceid = laptimes.raceid inner join drivers on results.driverid = drivers.driverid inner join races on laptimes.raceid = races.raceid where drivers.surname = 'Schumacher' order by laptimes.milliseconds asc limit 1
select avg(driverstandings.points) from races inner join driverstandings on races.raceid = driverstandings.raceid inner join drivers on driverstandings.driverid = drivers.driverid where drivers.surname = 'Eddie' and drivers.forename = 'Irvine' and races.year = 2000
select races.name , results.points from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid inner join driverstandings on results.driverid = driverstandings.driverid where drivers.surname = 'Lewis' order by races.year asc limit 1
select races.name , circuits.country from races inner join circuits on races.circuitid = circuits.circuitid where races.year = 2017 order by races.date desc limit 1
select results.laps , races.year , circuits.location from circuits inner join races on circuits.circuitid = races.circuitid inner join results on results.raceid = races.raceid order by results.laps desc limit 1
select cast(sum(case when circuits.country = 'Germany' then 1 else 0 end) as real) * 100 / count(races.name) from races inner join circuits on races.circuitid = circuits.circuitid where races.name = 'Europearn Grand Prix'
select lat , lng from circuits where name = 'Silverstone Circuit'
select circuits.name from circuits inner join races on circuits.circuitid = races.circuitid where circuits.location = 'Silverstone' or circuits.name = 'Hockenheimring' or circuits.name = 'Hungaroring' order by circuits.lat desc limit 1
select circuitref from circuits where name = 'Marina Bay Street Circuit'
select country from circuits order by alt desc limit 1
select count(driverid) from drivers where code is null
select nationality from drivers order by dob asc limit 1
select surname from drivers where nationality = 'italian'
select url from drivers where forename = 'Anthony' and surname = 'Davidson'
select driverref from drivers where forename = 'Lewis' and surname = 'Hamilton'
select circuits.name from circuits inner join races on circuits.circuitid = races.circuitid where races.name = 'Spanish Grand Prix' and races.year = 2009
select distinct races.year from circuits inner join races on circuits.circuitid = races.circuitid where circuits.name = 'Silverstone Circuit'
select distinct races.url from circuits inner join races on circuits.circuitid = races.circuitid where circuits.name = 'Silverstone Circuit'
select races.time from circuits inner join races on circuits.circuitid = races.circuitid where circuits.location = 'Abu Dhabi' and races.year = 2010
select count(races.raceid) from circuits inner join races on circuits.circuitid = races.circuitid where circuits.country = 'Italy'
select races.date from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Barcelona-Catalunya'
select circuits.url from races inner join circuits on races.circuitid = circuits.circuitid where races.year = 2009 and races.name = 'Spanish Grand Prix'
select results.fastestlaptime from results inner join drivers on results.driverid = drivers.driverid inner join laptimes on results.raceid = laptimes.raceid where drivers.surname = 'Lewis' order by results.fastestlaptime asc limit 1
select drivers.forename , drivers.surname from laptimes inner join results on laptimes.driverid = results.driverid inner join drivers on results.driverid = drivers.driverid where results.fastestlapspeed = ( select fastestlapspeed from results order by fastestlapspeed desc limit 1 )
select drivers.driverref from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and races.year = 2008 order by results.rank desc limit 1
select distinct races.name from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.surname = 'Lewis'
select races.name from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.surname = 'Lewis' order by results.rank asc limit 1
select results.fastestlapspeed from races inner join laptimes on races.raceid = laptimes.raceid inner join drivers on laptimes.driverid = drivers.driverid inner join results on results.driverid = drivers.driverid where races.name = 'Spanish Grand Prix' and races.year = 2009 order by results.fastestlapspeed desc limit 1
select races.year from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.surname = 'Lewis'
select results.rank from races inner join driverstandings on races.raceid = driverstandings.raceid inner join drivers on driverstandings.driverid = drivers.driverid inner join results on driverstandings.driverid = results.driverid where drivers.surname = 'Lewis' and races.year = 2008 and races.name = 'Australian Grand Prix'
select drivers.forename , drivers.surname from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and results.grid = 4 and races.year = 2008
select count(distinct drivers.driverid) from races inner join laptimes on races.raceid = laptimes.raceid inner join drivers on laptimes.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and races.time is not null
select laptimes.lap from drivers inner join laptimes on drivers.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid inner join results on results.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and drivers.surname = 'Lewis' order by laptimes.lap desc limit 1
select results.time from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and results.rank = 2 and races.year = 2008 order by results.rank asc limit 1
sql placeholder
select count(distinct drivers.driverid) from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where drivers.nationality = 'American' and races.name = 'Australian Grand Prix' and races.year = 2008
select count(races.raceid) from races inner join laptimes on races.raceid = laptimes.raceid where races.name = 'Australian Grand Prix' and races.year = 2008
select sum(driverstandings.points) from drivers inner join results on drivers.driverid = results.driverid inner join driverstandings on results.driverid = driverstandings.driverid where drivers.surname = 'Lewis'
select avg(results.fastestlaptime) from drivers inner join laptimes on drivers.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid inner join results on results.driverid = drivers.driverid where drivers.surname = 'Lewis'
sql placeholder
sql placeholder
select count(circuitid) from circuits where country = 'Australia' and location = 'Melbourne'
select location from circuits where country = 'USA'
select count(distinct driverref) from drivers where nationality = 'British' and dob > 1980
select avg(constructorresults.points) from constructors inner join constructorresults on constructors.constructorid = constructorresults.constructorid where constructors.nationality = 'British'
select constructors.name from constructors inner join constructorstandings on constructors.constructorid = constructorstandings.constructorid order by constructorstandings.points desc limit 1
select distinct constructors.name from constructors inner join results on constructors.constructorid = results.constructorid inner join constructorresults on results.constructorid = constructorresults.constructorid where results.raceid = 291 and constructorresults.points = 0
select count(distinct results.raceid) from constructors inner join results on constructors.constructorid = results.constructorid inner join constructorstandings on results.constructorid = constructorstandings.constructorid where constructors.nationality = 'Japanese' group by results.raceid having count(distinct results.raceid) = 2
select distinct constructors.name from constructors inner join results on constructors.constructorid = results.constructorid where results.rank = 1
select count(distinct results.constructorid) from laptimes inner join results on laptimes.raceid = results.raceid inner join constructors on results.constructorid = constructors.constructorid where results.laps > 50 and constructors.nationality = 'French'
select cast(sum(case when races.time is not null then 1 else 0 end) as real) * 100 / count(drivers.driverid) from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where drivers.nationality = 'Japanese' and races.year between 2007 and 2009
select avg(results.milliseconds) from races inner join results on races.raceid = results.raceid where races.year is not null
select drivers.forename , drivers.surname from drivers inner join results on drivers.driverid = results.driverid where results.rank = 2 and drivers.dob > 1975
select count(drivers.driverid) from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where drivers.nationality = 'Italian' and races.time is null
select drivers.forename , drivers.surname from results inner join drivers on results.driverid = drivers.driverid order by results.fastestlaptime desc limit 1
select laptimes.lap from results inner join laptimes on results.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid where races.year = 2009 order by laptimes.time desc limit 1
select avg(results.fastestlapspeed) from races inner join laptimes on races.raceid = laptimes.raceid inner join results on laptimes.raceid = results.raceid where races.name = 'Spanish Grand Prix' and races.year = 2009
select races.name , races.year from races inner join results on races.raceid = results.raceid where results.milliseconds is null order by results.milliseconds asc limit 1
sql placeholder
select count(drivers.driverid) from drivers inner join laptimes on drivers.driverid = laptimes.driverid where drivers.nationality = 'French' and laptimes.milliseconds < 120
select code from drivers where nationality = 'American'
select distinct results.raceid from races inner join results on races.raceid = results.raceid where races.year = 2009
select count(drivers.driverid) from drivers inner join results on drivers.driverid = results.driverid where results.raceid = 18
select code , number from drivers where nationality = 'Netherlandic' order by dob desc limit 3
select driverref from drivers where surname = 'Robert' and driverref = 'kubica'
select count(driverid) from drivers where nationality = 'Australian' and dob = 1980
select drivers.driverid from drivers inner join laptimes on drivers.driverid = laptimes.driverid where drivers.dob between 1980 and 1990 order by laptimes.time asc limit 3
select driverref from drivers where nationality = 'German' order by dob asc limit 1
select drivers.driverid , drivers.code from results inner join laptimes on results.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid inner join drivers on results.driverid = drivers.driverid where races.year = 1971 order by results.fastestlaptime desc limit 1
select drivers.driverid from drivers inner join laptimes on drivers.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid where drivers.dob < 1982 order by laptimes.time desc limit 10
select races.year from races inner join laptimes on races.raceid = laptimes.raceid inner join results on laptimes.raceid = results.raceid where results.fastestlaptime order by results.fastestlaptime desc limit 1
select races.year from races inner join laptimes on races.raceid = laptimes.raceid inner join results on laptimes.driverid = results.driverid order by results.fastestlapspeed desc limit 1
select results.driverid from results inner join laptimes on results.driverid = laptimes.driverid order by laptimes.time asc limit 5
select count(status.statusid) from status inner join results on status.statusid = results.statusid inner join races on results.raceid = races.raceid where races.raceid between 50 and 100 and status.status = 'Disqualified'
select count(distinct races.raceid) , circuits.location , circuits.lat from circuits inner join races on circuits.circuitid = races.circuitid where circuits.country = 'Austria'
select number from results where time is not null group by number order by count(number) desc limit 1
select drivers.driverref , drivers.nationality , drivers.dob from drivers inner join qualifying on drivers.driverid = qualifying.driverid inner join results on results.driverid = qualifying.driverid where qualifying.raceid = 23 and qualifying.q2 is not null
select races.year , races.date , races.time from races inner join qualifying on races.raceid = qualifying.raceid inner join drivers on qualifying.driverid = drivers.driverid order by drivers.dob desc limit 1
select count(distinct drivers.driverid) from drivers inner join results on drivers.driverid = results.driverid inner join status on results.statusid = status.statusid where status.status = 'Disqualified' and drivers.nationality = 'American'
select constructors.name , constructors.url from constructors inner join results on constructors.constructorid = results.constructorid inner join constructorstandings on results.constructorid = constructorstandings.constructorid where constructors.nationality = 'Italian' order by results.points desc limit 1
select constructors.url from constructors inner join constructorstandings on constructors.constructorid = constructorstandings.constructorid group by constructors.url order by sum(constructorstandings.wins) desc limit 1
select drivers.forename from races inner join laptimes on races.raceid = laptimes.raceid inner join drivers on laptimes.driverid = drivers.driverid where races.name = 'French Grand Prix' order by laptimes.time desc limit 1
select races.name , results.milliseconds from races inner join results on races.raceid = results.raceid order by results.fastestlaptime asc limit 1
select avg(results.fastestlaptime) from results inner join laptimes on results.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid inner join drivers on drivers.driverid = results.driverid where results.rank < 11
select drivers.driverid from pitstops inner join drivers on pitstops.driverid = drivers.driverid where drivers.dob between 1980 and 1985 order by pitstops.duration asc limit 5
select laptimes.time from laptimes inner join races on laptimes.raceid = races.raceid where races.name = 'Canadian Grand Prix' and races.year = 2008
select results.constructorid , races.url from results inner join races on results.raceid = races.raceid where races.name = 'Singapore Grand Prix' and races.year = 2009 order by results.time desc limit 1
select forename , surname , dob from drivers where nationality = 'Austrian' and dob between 1981 and 1991
select forename , surname , dob from drivers where nationality = 'German' and dob between '1971' and '1985' order by dob desc
select location , country , lng from circuits where name = 'Hungaroring'
sql placeholder
select avg(results.points) from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where races.name = 'Turkish Grand Prix' and drivers.surname = 'Lewis'
select cast(count(raceid) as real) / 10 from races where date between '2000-01-01' and '2010-12-31'
select nationality from drivers group by nationality order by count(nationality) desc limit 1
select sum(driverstandings.wins) from results inner join driverstandings on results.driverid = driverstandings.driverid inner join drivers on driverstandings.driverid = drivers.driverid where results.rank = 91
select races.name from results inner join laptimes on results.raceid = laptimes.raceid inner join races on laptimes.raceid = races.raceid order by results.fastestlapspeed asc limit 1
select circuits.location , circuits.country from circuits inner join races on circuits.circuitid = races.circuitid order by races.date desc limit 1
select drivers.forename , drivers.surname from qualifying inner join races on qualifying.raceid = races.raceid inner join circuits on races.circuitid = circuits.circuitid inner join drivers on drivers.driverid = qualifying.driverid where races.year = 2008 and circuits.name = 'Marina Bay Street Circuit' order by qualifying.q3 asc limit 1
sql placeholder
select count(distinct drivers.driverid) from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid inner join status on status.statusid = results.statusid where races.name = 'Canadian Grand Prix' order by status.statusid desc limit 1
select driverstandings.wins , drivers.forename , drivers.surname from drivers inner join results on drivers.driverid = results.driverid inner join driverstandings on results.driverid = driverstandings.driverid order by drivers.dob asc limit 1
select pitstops.duration from pitstops inner join drivers on pitstops.driverid = drivers.driverid order by pitstops.duration desc limit 1
sql placeholder
select max(pitstops.duration) from pitstops inner join drivers on pitstops.driverid = drivers.driverid where drivers.driverref = 'Lewis'
select pitstops.lap from pitstops inner join results on pitstops.driverid = results.driverid inner join races on pitstops.raceid = races.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and drivers.surname = 'Lewis'
select pitstops.duration from races inner join pitstops on races.raceid = pitstops.raceid inner join drivers on pitstops.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and races.year = 2011
select laptimes.lap from results inner join drivers on results.driverid = drivers.driverid inner join laptimes on results.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid where drivers.surname = 'Lewis' order by laptimes.time desc limit 1
select drivers.surname from results inner join drivers on results.driverid = drivers.driverid inner join races on results.raceid = races.raceid inner join laptimes on races.raceid = laptimes.raceid order by laptimes.time asc limit 1
select laptimes.position from results inner join laptimes on results.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid inner join drivers on drivers.driverid = laptimes.driverid where drivers.driverref = 'Lewis' order by laptimes.time asc limit 1
select laptimes.lap from races inner join laptimes on races.raceid = laptimes.raceid inner join circuits on circuits.circuitid = races.circuitid where races.name = 'Austrian Grand Prix' order by laptimes.time desc limit 1
select laptimes.lap from circuits inner join laptimes on circuits.circuitid = laptimes.raceid where circuits.country = 'Italy' order by laptimes.time desc limit 1
select races.name from circuits inner join races on circuits.circuitid = races.circuitid inner join laptimes on races.raceid = laptimes.raceid where races.name = 'Austrian Grand Prix' order by laptimes.time desc limit 1
select pitstops.duration from pitstops inner join races on pitstops.raceid = races.raceid inner join laptimes on races.raceid = laptimes.raceid inner join results on laptimes.time = results.time where races.name = 'Austrian Grand Prix' order by results.fastestlaptime desc limit 1
sql placeholder
select avg(pitstops.milliseconds) from pitstops inner join drivers on pitstops.driverid = drivers.driverid inner join results on results.driverid = drivers.driverid where drivers.surname = 'Lewis'
select avg(laptimes.milliseconds) from circuits inner join races on circuits.circuitid = races.circuitid inner join laptimes on races.raceid = laptimes.raceid where circuits.country = 'Italy'
select player.player_name , player_attributes.player_api_id from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player_attributes.overall_rating desc limit 1
select height , player_name from player order by height desc limit 1
select player_attributes.preferred_foot from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player_attributes.potential asc limit 1
select count(player.player_name) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.defensive_work_rate = 'low' and player_attributes.overall_rating between 60 and 65
select player.player_name , player_attributes.id from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player_attributes.crossing desc limit 5
select league.name from match inner join league on match.league_id = league.id where match.season = '2015/2016' order by match.home_team_goal desc limit 1
select home_team_goal from match where season = '2015/2016' and home_team_goal - away_team_goal order by away_team_goal asc limit 1
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player_attributes.penalties desc limit 10
select team.team_long_name from team inner join match on team.team_api_id = match.away_team_api_id inner join league on match.league_id = league.id where league.name = 'Scotland Premier League' and match.season = '2009/2010' order by match.away_team_goal - match.home_team_goal desc limit 1
select team_attributes.buildupplayspeed from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id order by team_attributes.buildupplayspeed desc limit 4
select league.name from match inner join league on match.league_id = league.id where match.season = '2015/2016' group by league.name order by sum(match.home_team_goal = match.away_team_goal) desc limit 1
select player.player_name , player.birthday - player_attributes.sprint_speed from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.sprint_speed >= 97 and player_attributes.date between '2013-01-01 00:00:00' and '2015-12-31 00:00:00'
select league.name , count(match.league_id) from match inner join league on match.league_id = league.id group by league.name order by count(match.league_id) desc limit 1
select avg(height) from player where birthday between '1990-01-01 00:00:00' and '1996-01-01 00:00:00'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.date like '2010%' order by player_attributes.overall_rating desc limit 1
select team_attributes.team_fifa_api_id from team_attributes inner join team on team_attributes.team_fifa_api_id = team.team_fifa_api_id where team_attributes.buildupplayspeed between 51 and 59
select team.team_long_name from team inner join team_attributes on team.team_fifa_api_id = team_attributes.team_api_id inner join player on team_attributes.team_api_id = player.player_api_id where team_attributes.buildupplaypassing = 1 and strftime('%Y' , team_attributes.date) = '2012'
sql placeholder
select league.name from match inner join league on match.league_id = league.id order by match.home_team_goal * match.away_team_goal desc limit 5
select cast(sum(player_attributes.long_shots) as real) / count(player_attributes.long_shots) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Ahmed Samir Farag'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player.height > 180 order by player_attributes.heading_accuracy desc limit 10
sql placeholder
select league.name from match inner join league on match.league_id = league.id where match.season = '2009/2010' and match.home_team_goal > ( select avg(away_team_goal) from match )
select team_short_name from team where team_long_name = 'Queens Park Rangers'
select player_name from player where substr(birthday , 1 , 4) = 1970 and substr(birthday , 6 , 2) = 'October'
select player_attributes.attacking_work_rate from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Franco Zennaro'
select team_attributes.buildupplaypositioningclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'ADO Den Haag'
select player_attributes.heading_accuracy from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Francois Affolter' and player_attributes.date = '2014-09-18 00:00:00'
select player_attributes.overall_rating from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Gabriel Tamas' and strftime('%Y' , player_attributes.date) = '2011'
select sum(case when league.name = 'Scotland Premier League' then 1 else 0 end) from match inner join league on match.league_id = league.id where match.season = '2015/2016'
select player_attributes.preferred_foot from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player.birthday asc limit 1
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player_attributes.potential desc limit 1
select count(player.player_name) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.preferred_foot = 'left' and player.weight < 130
select team.team_short_name from team_attributes inner join team on team_attributes.team_fifa_api_id = team.team_fifa_api_id where team_attributes.chancecreationpassingclass = 'Risky'
select player_attributes.defensive_work_rate from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'David Wilson'
select player.birthday from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player_attributes.overall_rating desc limit 1
select league.name from league inner join match on league.id = match.league_id inner join country on match.country_id = country.id where country.name = 'Netherlands'
select avg(match.home_team_goal) from country inner join league on country.id = league.country_id inner join match on match.country_id = league.country_id where country.name = 'Poland' and match.season = '2010/2011'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player_attributes.finishing desc limit 1
select player_name from player where height > 180
select count(*) from player where strftime('%Y' , birthday) = '1990'
select count(player.player_name) from player inner join team on player.player_api_id = team.team_long_name inner join team_attributes on team.team_api_id = team_attributes.team_api_id where player.player_name = 'Adam' and player.weight > 170 and team_attributes.buildupplayspeedclass = 'Fast'
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.overall_rating > 80 and player_attributes.date between '2008' and '2010'
select player_attributes.potential from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Aaron Doran'
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.preferred_foot = 'left'
select team.team_long_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team_attributes.buildupplayspeedclass = 'Fast'
select team_attributes.buildupplaypassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_short_name = 'CLB'
select team.team_short_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team_attributes.buildupplaypassing > 70
select avg(player_attributes.overall_rating) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.height > 170 and player_attributes.date between 2010 and 2015
select player_name from player order by height asc limit 1
select match.country_id from match inner join country on match.country_id = country.id inner join league on match.league_id = league.id where league.name = 'Italy Serie A'
select team.team_short_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team_attributes.buildupplayspeed = 31 and team_attributes.buildupplaydribbling = 53 and team_attributes.buildupplaypassing = 32
select avg(player_attributes.overall_rating) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Aaron Doran'
select count(match.lba) from match inner join league on match.league_id = league.id where league.name = 'Germany 1. Bundesliga' and match.date between '2008-08' and '2008-10'
select team.team_short_name from team inner join match on team.id = match.home_team_api_id where match.home_team_goal = 10
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.balance = 61 order by player_attributes.potential desc limit 1
select sum(case when player.player_name = 'Abdou Diallo' then player_attributes.ball_control else 0 end) - sum(case when player.player_name = 'Aaron Appindangoye' then player_attributes.ball_control else 0 end) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id
select team_long_name from team where team_short_name = 'GEN'
select player_name from player where player_name = 'Aaron Lennon' or player_name = 'Abdelaziz Barrada' order by birthday desc limit 1
select player_name from player order by height desc limit 1
select sum(case when player_attributes.attacking_work_rate = 'low' then 1 else 0 end) from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.preferred_foot = 'left'
select country.name from country inner join league on country.id = league.country_id where league.name = 'Belgium Jupiler League'
select league.name from match inner join country on match.country_id = country.id inner join league on match.league_id = league.id where country.name = 'Germany'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player_attributes.overall_rating desc limit 1
select sum(case when player_attributes.defensive_work_rate = 'high' then 1 else 0 end) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where strftime('%Y' , player.birthday) < '1986'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Alexis' or player.player_name = 'Ariel Borysiuk' or player.player_name = 'Arouna Kone' order by player_attributes.crossing desc limit 1
select player_attributes.heading_accuracy from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Ariel Borysiuk'
select count(player.player_name) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.height > 180 and player_attributes.volleys > 70
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.volleys > 70 and player_attributes.dribbling > 70
select sum(case when country.name = 'Belgium' then 1 else 0 end) from match inner join country on match.country_id = country.id where match.season = '2008/2009'
select player_attributes.long_passing from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player.birthday asc limit 1
select count(match.league_id) from match inner join league on match.league_id = league.id where league.name = 'Belgium Jupiler League' and strftime('%Y' , match.date) = '2009-04'
select league.name from match inner join league on match.league_id = league.id where match.season = '2008/2009' group by league.name order by count(match.league_id) desc limit 1
select avg(player_attributes.overall_rating) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where strftime('%Y' , player.birthday) < '1986'
select cast(sum(case when player.player_name = 'Ariel Borysiuk' then player_attributes.overall_rating else 0 end) - sum(case when player.player_name = 'Paulin Puel' then player_attributes.overall_rating else 0 end) as real) * 100 / sum(case when player.player_name = 'Paulin Puel' then player_attributes.overall_rating else 0 end) from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id
select avg(team_attributes.buildupplayspeed) from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'Heart of Midlothian'
select avg(player_attributes.overall_rating) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Pietro Marino'
select sum(player_attributes.crossing) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Aaron Lennox'
select team_attributes.chancecreationpassing , team_attributes.chancecreationpassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'Ajax' order by team_attributes.chancecreationpassing desc limit 1
select player_attributes.preferred_foot from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Abdou Diallo'
select player_attributes.overall_rating from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Dorlan Pabon' order by player_attributes.overall_rating desc limit 1
select avg(match.away_team_goal) from team inner join match on team.team_api_id = match.away_team_api_id inner join country on match.country_id = country.id where team.team_long_name = 'Parma' and country.name = 'Italy'
select player_name from player where birthday = '2016-06-23' order by birthday asc limit 1
select player_attributes.overall_rating from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Aaron Mooy' and player_attributes.date = '2016-02-04 00:00:00'
select player_attributes.potential from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.date = '2010-08-30 00:00:00' and player.player_name = 'Francesco Parravicini'
select player_attributes.attacking_work_rate from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Francesco Migliore' and player_attributes.date = '2015-05-01 00:00:00'
select player_attributes.defensive_work_rate from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.date = '2013-02-22 00:00:00' and player.player_name = 'Kevin Berigaud'
select player_attributes.date from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Kevin Constant' order by player_attributes.crossing desc limit 1
select team_attributes.buildupplayspeedclass from team_attributes inner join team on team_attributes.team_api_id = team.team_api_id where team.team_long_name = 'Willem II' and team_attributes.date = '2012-02-22 00:00:00'
select team_attributes.buildupplaydribblingclass from team_attributes inner join team on team_attributes.team_api_id = team.team_api_id where team.team_short_name = 'LEI' and team_attributes.date = '2015-09-10 00:00:00'
select team_attributes.buildupplaypassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'FC Lorient' and team_attributes.date = '2010-02-22'
sql placeholder
select team_attributes.chancecreationcrossingclass from team_attributes inner join team on team_attributes.team_api_id = team.team_api_id where team.team_long_name = 'Hull City' and team_attributes.date = '2010-02-22 00:00:00'
select team_attributes.defenceaggressionclass from team_attributes inner join team on team_attributes.team_api_id = team.team_api_id where team.team_long_name = 'Hannover 96' and team_attributes.date = '2015-09-10 00:00:00'
select avg(player_attributes.overall_rating) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Marko Arnautovic' and player_attributes.date between '2007-02-22 00:00:00' and '2016-04-21 00:00:00'
select cast(sum(case when player_name = 'Landon Donovan' then player_attributes.overall_rating else 0 end) - sum(case when player_name = 'Jordan Bowery' then player_attributes.overall_rating else 0 end) as real) * 100 / sum(case when player.player_name = 'Jordan Bowery' then player_attributes.overall_rating else 0 end) from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id
select player_name from player order by height desc limit 5
select player_api_id from player order by weight desc limit 10
select player_name from player where birthday > 35
select sum(case when player.player_name = 'Aaron Lennon' then 1 else 0 end) from player inner join match on player.player_api_id = match.home_team_goal
select sum(case when player.player_name = 'Daan Smith' then match.away_team_goal else 0 end) from player inner join match on player.player_api_id = match.away_player_11 where player.player_name = 'Filipe Ferreira'
select sum(case when player.birthday > 30 then 1 else 0 end) - sum(case when player.birthday < 31 then 1 else 0 end) from match inner join player on match.away_player_11 = player.player_api_id
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player_attributes.overall_rating desc limit 10
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player_attributes.potential desc limit 1
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.attacking_work_rate = 'high'
select player.player_name , player.birthday from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.finishing = 1 order by player.birthday - player_attributes.finishing desc limit 1
select player.player_name from player inner join match on player.player_name = match.home_player_1 inner join country on country.id = match.country_id where country.name = 'Belgium'
select player.player_name , country.name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id inner join league on player.player_api_id = player_attributes.player_api_id inner join country on league.country_id = country.id where player_attributes.vision > 89
sql placeholder
select team.team_long_name from team_attributes inner join team on team_attributes.team_api_id = team.team_api_id where team_attributes.buildupplayspeedclass = 'Slow'
select team.team_short_name from team_attributes inner join team on team_attributes.team_api_id = team.team_api_id where team_attributes.chancecreationpassingclass = 'Safe'
select avg(player.height) from player inner join country on player.player_api_id = country.id where country.name = 'Italy'
select player_name from player where height > 180 order by height desc limit 3
select count(*) from player where player_name like 'Aaron%' and birthday > '1990'
select sum(case when jumping AND id = 6 then 1 else 0 end) - sum(case when jumping AND id = 23 then 1 else 0 end) from player_attributes
select player_attributes.id from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.preferred_foot = 'right' order by player_attributes.potential asc limit 3
select count(player.player_name) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.preferred_foot = 'left' order by player_attributes.potential desc limit 1
select sum(case when player_attributes.stamina > 80 then 1 else 0 end) from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id
select country.name from match inner join country on match.country_id = country.id inner join league on match.country_id = league.country_id where league.name = 'Poland Ekstraklasa'
select home_team_goal , away_team_goal from match where date like '2008-09-24%'
select player_attributes.sprint_speed , player_attributes.agility , player_attributes.acceleration from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Alexis Blin'
select team_attributes.buildupplayspeedclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id inner join player_attributes on team.team_fifa_api_id = player_attributes.player_api_id where team.team_long_name = 'KSV Cercle Brugge' group by team_attributes.buildupplayspeedclass
select sum(case when match.season = '2015/2016' then 1 else 0 end) from match inner join league on match.league_id = league.id where league.name = 'Serie A'
select match.home_team_goal from league inner join match on match.league_id = league.id where league.name = 'Netherlands Eredivisie' order by match.home_team_goal desc limit 1
select player_attributes.finishing , player_attributes.curve from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player.weight desc limit 1
select t.team_long_name from ( select team.team_long_name , count(team.team_long_name) as num from team inner join match on team.id = match.home_team_api_id where match.season = '2015/2016' group by team.team_long_name ) as t order by t.num desc limit 1
select team.team_long_name from team inner join match on team.team_api_id = match.away_team_api_id order by match.away_team_goal desc limit 1
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player_attributes.overall_rating desc limit 1
select cast(sum(case when player.height < 180 then 1 else 0 end) as real) * 100 / count(player_attributes.strength) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.overall_rating > 70
select cast(sum(case when admission = '+' then 1 else 0 end) as real) * 100 / count(admission) from patient where sex = 'M'
select cast(sum(case when sex = 'F' then 1 else 0 end) as real) * 100 / count(sex) from patient where strftime('%Y' , birthday) > '1930'
select cast(sum(case when admission = '+' then 1 else 0 end) as real) * 100 / count(admission) from patient where birthday between '1930-01-01' and '1940-12-31'
select cast(sum(case when patient.admission = '+' then 1 else 0 end) as real) * 100 / count(patient.id) from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'SLE'
select distinct patient.diagnosis , laboratory.date from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.id = 30609
sql placeholder
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.igg > 500
select patient.id , patient.birthday - strftime('%Y' , examination.kct) from patient inner join examination on patient.id = examination.id where examination.rvvt = '+'
select patient.id , patient.sex , patient.diagnosis from patient inner join examination on patient.id = examination.id where examination.thrombosis = 2
sql placeholder
select patient.id , patient.sex , patient.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.alb < 3.5
select cast(sum(case when patient.sex = 'F' then 1 else 0 end) as real) * 100 / count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.tp < '6.0' or laboratory.tp > '8.5'
sql placeholder
select count(*) from patient where sex = 'F' and strftime('%Y' , admission) = '-' and strftime('%Y' , description) = '1997'
sql placeholder
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id where examination.thrombosis = '1' and patient.sex = 'F' and strftime('%Y' , examination.diagnosis) = '1997'
select max(patient.birthday) - min(patient.birthday) from patient inner join laboratory on patient.id = laboratory.id where laboratory.tg >= 200
select examination.symptoms , examination.diagnosis from patient inner join examination on patient.id = examination.id order by patient.birthday asc limit 1
select cast(count(patient.id) as real) / 12 from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.date between '1998-01-01' and '1998-12-31'
select laboratory.date , strftime('%Y' , patient.birthday) - strftime('%Y' , patient.admission) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.diagnosis = 'SJS' order by patient.birthday desc limit 1
select cast(sum(case when laboratory.ua < 8.0 then 1 else 0 end) as real) * 100 / sum(case when laboratory.ua < 6.5 then 1 else 0 end) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M'
sql placeholder
sql placeholder
sql placeholder
select patient.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.date between '1985-01-01' and '1995-12-31' group by patient.diagnosis order by count(patient.diagnosis) desc limit 1
select cast(sum(strftime('%Y' , patient.birthday) - strftime('%Y' , patient.birthday)) as real) / count(patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.date between '1991-10-01' and '1991-10-30'
select examination.id - patient.birthday , examination.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id order by laboratory.hgb desc limit 1
sql placeholder
select examination.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.id = 2927464 and examination.diagnosis = 'Normal' and laboratory.date = 1995-9-4
select patient.sex from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'AORTITIS' order by patient.sex desc limit 1
sql placeholder
select patient.sex from patient inner join laboratory on patient.id = laboratory.id where laboratory.date = '1992-06-12' and laboratory.gpt = 9
select strftime('%Y' , patient.birthday) - strftime('%Y' , laboratory.date) from patient inner join laboratory on patient.id = laboratory.id where laboratory.date = '1991-10-21' and laboratory.ua = '8.4'
sql placeholder
sql placeholder
select distinct examination.symptoms from patient inner join examination on patient.id = examination.id where patient.birthday = 1959/3/1
select sum(case when laboratory.date like '1981-11-%' then 'T-CHO' else 0 end) - sum(case when laboratory.date like '1981-12-%' then 'T-CHO' else 0 end) from patient inner join laboratory on patient.id = laboratory.id where patient.birthday = '1959-02-18'
sql placeholder
sql placeholder
select count(id) from patient where strftime('%Y' , birthday) = '1964' and sex = 'F' and admission = '+'
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select distinct patient.sex from patient inner join examination on patient.id = examination.diagnosis inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'PSS' and laboratory.cre = 1 and laboratory.crp > 2 and laboratory.cre = 1 and laboratory.ldh = 123
select avg(laboratory.alb) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.sex = 'F' and patient.diagnosis = 'SLE' and laboratory.plt > 400
select examination.symptoms from patient inner join examination on patient.id = examination.id where patient.diagnosis = 'SLE' group by examination.symptoms order by count(examination.symptoms) desc limit 1
select examination.diagnosis , patient.description from patient inner join examination on patient.id = examination.id where patient.id = 48473
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id where patient.sex = 'F' and examination.diagnosis = 'APS'
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where strftime('%Y' , laboratory.date) = '1997' and laboratory.tp between 6 and 8.5
select cast(sum(case when patient.diagnosis like '%ITP%' then 1 else 0 end) as real) * 100 / count(patient.diagnosis) from patient inner join examination on patient.id = examination.id where examination.symptoms = 'thrombocytopenia'
select cast(sum(case when patient.sex = 'F' then 1 else 0 end) as real) * 100 / count(patient.sex) from patient inner join examination on patient.id = examination.id where strftime('%Y' , patient.birthday) = '1980' and patient.diagnosis = 'RA'
sql placeholder
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'F' and laboratory.wbc < 3.5
select count(patient.admission) from patient inner join examination on patient.id = examination.id where patient.id = 821298
select laboratory.ua from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.id = 57266 and patient.sex = 'M' and laboratory.ua > 8.0
sql placeholder
select distinct patient.sex , patient.birthday from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where strftime('%Y' , laboratory.date) = '1994' and laboratory.got < 60
select patient.id from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.gpt >= 60
select patient.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.gpt > 60 order by patient.birthday desc limit 1
select avg(laboratory.ldh) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ldh < 500
select patient.id , patient.birthday - strftime('%Y' , laboratory.date) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ldh between 100 and 300 and patient.diagnosis = 'Normal'
select distinct patient.admission from patient inner join laboratory on patient.id = laboratory.id where laboratory.alp < 300
select patient.id , laboratory.alp from patient inner join laboratory on patient.id = laboratory.id where patient.birthday = 1982 and laboratory.alp < 300
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.tp < 6.0
select laboratory.tp - laboratory.igg from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'F' and laboratory.tp > 8.5
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.alb < 3.5 or laboratory.alb >= 5.5 and patient.sex = 'M'
select laboratory.alb from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , patient.birthday) = '1982' and laboratory.alb between 3.5 and 5.5
select cast(sum(case when patient.sex = 'F' then 1 else 0 end) as real) * 100 / count(patient.sex) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ua > 8.0
select avg(laboratory.ua) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.ua < 8.0 and patient.sex = 'M' or laboratory.ua < 6.5 and patient.sex = 'F'
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.un = 29
select patient.id , patient.sex , patient.birthday from patient inner join examination on patient.id = examination.id where patient.diagnosis = 'RA' and examination.diagnosis >= 30
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.cre >= 1.5
select sum(case when patient.sex = 'M' then 1 else 0 end) - sum(case when patient.sex = 'F' then 1 else 0 end) from patient inner join laboratory on patient.id = laboratory.id where laboratory.cre >= 1.5
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select patient.id , patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.tg > 300
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.tg > 200 and patient.birthday - strftime('%Y' , laboratory.date) > 50
select distinct patient.id from patient inner join laboratory on patient.id = laboratory.id where patient.admission = '-' and laboratory.cpk < 250
select count(patient.sex) from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , patient.birthday) between '1936' and '1956' and patient.sex = 'M' and laboratory.cpk > 250
sql placeholder
select patient.id , laboratory.glu from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , patient.description) >= '1991' and laboratory.glu < 180
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.wbc < 3.5 or laboratory.wbc >= 9.0
select patient.diagnosis , patient.id - strftime('%Y' , laboratory.date) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.rbc < 3.5
select patient.admission from patient inner join laboratory on patient.id = laboratory.id where laboratory.rbc < 3.5 or laboratory.rbc >= 6.0 and patient.sex = 'F'
select distinct patient.id , patient.sex from patient inner join laboratory on patient.id = laboratory.id where laboratory.hgb < 10 and patient.admission = '-'
select patient.id , patient.sex from patient inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SLE' order by patient.birthday asc limit 1
select patient.id , patient.birthday - strftime('%Y' , laboratory.date) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.hct >= 52 group by patient.id , patient.birthday having count(patient.id) > 2
select avg(laboratory.hct) from laboratory inner join patient on laboratory.id = patient.id where strftime('%Y' , laboratory.date) = '1991' and laboratory.hct < 29
select sum(case when laboratory.plt < 100 then 1 else 0 end) - sum(case when laboratory.plt > 400 then 1 else 0 end) from patient inner join laboratory on patient.id = laboratory.id
select distinct patient.description from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where strftime('%Y' , laboratory.date) - strftime('%Y' , patient.birthday) < 50 and laboratory.plt between 100 and 400
select cast(sum(case when patient.sex = 'F' then 1 else 0 end) as real) * 100 / count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , patient.birthday) - strftime('%Y' , patient.birthday) > 55
sql placeholder
select count(distinct examination.id) from laboratory inner join examination on laboratory.id = examination.id where laboratory.date > '1997-01-01' and laboratory.aptt < 45 and examination.diagnosis = 'Normal'
select count(distinct patient.diagnosis) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.aptt > 45 and examination.thrombosis = 3
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.wbc between 3.5 and 9.0 and laboratory.fg between 150 and 450
select count(distinct patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.birthday between '1980-01-01' and laboratory.fg between 150 and 450
sql placeholder
sql placeholder
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.igg < 900 and examination.symptoms = 'abortion'
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.igg between 900 and 2000 and examination.symptoms is not null
sql placeholder
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , laboratory.date) >= '1990' and laboratory.iga between 80 and 500
select patient.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.igg between 40 and 400 group by patient.diagnosis order by count(patient.diagnosis) desc limit 1
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.crp = '+' or laboratory.crp = '-' or laboratory.crp < 1.0 and patient.description is null
select count(distinct patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.crp >= 1.0 and strftime('%Y' , laboratory.date) - strftime('%Y' , patient.birthday) < 18
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.ra in ('-' , '+-')
select distinct patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , patient.birthday) >= '1995' and laboratory.ra in ('-' , '+-')
select patient.id from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.rf < 20 and strftime('%Y' , patient.birthday) - strftime('%Y' , patient.birthday) > 60
select count(patient.diagnosis) from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'Normal' and examination.thrombosis = '0'
sql placeholder
sql placeholder
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'APS' and laboratory.c4 > 10
select count(distinct patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.rnp = '-' or laboratory.ra = '+-' and patient.admission = '+'
select patient.id , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.rnp in ('-' , '+-') order by patient.birthday desc limit 1
select count(patient.diagnosis) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.sm in ('-' , '+-' , '1')
select patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.sm in ('-' , '+-') order by patient.birthday desc limit 3
sql placeholder
select count(distinct patient.sex) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and examination.symptoms = 'vertigo' and laboratory.sc170 in ('-' , '+-')
sql placeholder
sql placeholder
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SLE' and laboratory.ssb in ('-' , '+-')
select count(distinct examination.symptoms) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.ssb in ('-' , '+-')
select count(patient.sex) from patient inner join laboratory on patient.id = laboratory.id where laboratory.centromea in ('-' , '+-') and laboratory.ssb in ('-' , '+-') and patient.sex = 'M'
select distinct patient.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.dna >= 8
select count(distinct patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.dna < 8 and patient.description is null
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.dna < 8 and patient.admission = '+'
select cast(sum(case when laboratory.got >= 60 then 1 else 0 end) as real) * 100 / count(patient.diagnosis) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SLE'
select count(patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.got < 60
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.got >= 60 order by patient.birthday desc limit 1
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.gpt < 60 order by laboratory.gpt desc limit 3
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.got < 60 and patient.sex = 'M'
sql placeholder
sql placeholder
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.alp >= 300 and patient.admission = '+'
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.admission = '-' and laboratory.alp < 300
select distinct patient.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.tp < 6.0
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SJS' and laboratory.tp > 6.0 and laboratory.tp < 8.5
sql placeholder
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.alb > 3.5 and laboratory.alb < 5.5 and laboratory.tp > 6.0 and laboratory.tp < 8.5
sql placeholder
select examination.ana from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'ANA' and laboratory.cre < 1.5 order by examination.ana desc limit 1
select patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.cre < 1.5 order by laboratory.iga desc limit 1
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.tg < 200 and examination.symptoms is not null
select patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.tg < 200 order by laboratory.tg desc limit 1
select distinct patient.id from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.thrombosis = 0 and laboratory.cpk < 250
select count(patient.diagnosis) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.cpk < 250 and examination.kct = '+' or examination.rvvt = '+' or examination.lac = '+'
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.glu > 180 order by patient.birthday asc limit 1
select count(patient.diagnosis) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.glu < 180 and examination.thrombosis = 0
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.admission = '+' and laboratory.wbc between 3.5 and 9.0
select count(distinct patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SLE' and laboratory.wbc between 3.5 and 9.0
select patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.rbc < 3.5 or laboratory.rbc >= 6.0 and patient.admission = '-'
select count(distinct patient.diagnosis) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.plt > 100 and laboratory.plt < 400 and examination.symptoms is not null
select laboratory.plt from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'MCTD' and laboratory.plt > 100 and laboratory.plt < 400
select avg(laboratory.pt) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.pt < 14
select count(distinct patient.id) from patient inner join examination on patient.diagnosis = examination.diagnosis inner join laboratory on patient.id = laboratory.id where examination.thrombosis = 2 or 1 and laboratory.aptt < 14
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Angela' and member.last_name = 'Sanders'
select count(*) from major where college = 'College of Engineering'
select member.first_name , member.last_name from member inner join major on member.link_to_major = major.major_id where major.department = 'Art and Design Department'
select count(attendance.link_to_member) from event inner join attendance on event.event_id = attendance.link_to_event where event.event_name = 'Women%s Soccer'
select member.phone from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where event.event_name = 'Women%s Soccer'
select count(member.member_id) from member inner join event on member.t_shirt_size = member.t_shirt_size where event.event_name = 'Women%s Soccer' and member.t_shirt_size = 'Medium'
select event.event_name from event inner join attendance on event.event_id = attendance.link_to_event group by event.event_name order by count(attendance.link_to_event) desc limit 1
select major.college from major inner join member on major.major_id = member.link_to_major where member.position = 'Vice President'
select event.event_name from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where member.first_name = 'Maya' and member.last_name = 'Mclean'
select count(event.event_id) from member inner join event on member.member_id = event.event_id where member.first_name = 'Sacha' and member.last_name = 'Harrison' and strftime('%Y' , event.event_date) = '2019'
select count(*) from event inner join attendance on event.event_id = attendance.link_to_event where event.type = 'Meeting' group by event.event_id having count(attendance.link_to_member) > 10
select event.event_name from event inner join attendance on event.event_id = attendance.link_to_event where attendance.link_to_member = 'Student_Club' group by event.event_name having count(event.event_id) > 20
select cast(count(event_id) as real) / count(distinct event_name) from event where type = 'Meeting' and strftime('%Y' , event_date) = '2020'
select expense_description from expense order by cost desc limit 1
select count(member.member_id) from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Environmental Engineering'
select member.first_name , member.last_name from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where event.event_name = 'Laugh Out Loud'
select member.last_name from major inner join member on major.major_id = member.link_to_major where major.major_name = 'Law and Constitutional Studies'
select zip_code.county from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Sherri' and member.last_name = 'Ramsey'
select major.college from major inner join member on major.major_id = member.link_to_major where member.first_name = 'Tyler' and member.last_name = 'Hewitt'
select income.amount from member inner join income on member.member_id = income.link_to_member where member.position = 'Vice President'
select budget.spent from event inner join budget on event.event_id = budget.link_to_event where event.event_name = 'September Meeting' and budget.category = 'Food'
select zip_code.city , zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code where member.position = 'President'
select member.first_name , member.last_name from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.state = 'Illinois'
select budget.spent from event inner join budget on event.event_id = budget.link_to_event where event.event_name = 'September Meeting' and budget.category = 'Advertisement'
select major.department from major inner join member on major.major_id = member.link_to_major where member.first_name = 'Pierce' and member.last_name = 'Guidi'
select sum(budget.amount) from event inner join budget on event.event_id = budget.link_to_event where event.event_name = 'October Speaker'
select expense.approved from expense inner join event on expense.expense_id = event.event_id where event.event_name = 'October Meeting' and event.event_date = '2019-10-08'
sql placeholder
select sum(budget.amount) - sum(budget.spent) from budget inner join event on budget.link_to_event = event.event_id where strftime('%Y' , event.event_date) = '2020'
select location from event where event_name = 'Spring Budget Review'
select cost from expense where expense_description = 'Posters' and expense_date = '2019-09-04'
select remaining from budget where category = 'Food' and amount = ( select max(amount) from budget where category = 'Food' )
select notes from income where date_received = '2019-09-14' and source = 'Fundraising'
select count(major_id) from major where college = 'College of Humanities and Social Sciences'
select member.phone from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Carlo' and member.last_name = 'Jacobs'
select zip_code.county from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Adela' and member.last_name = 'O''Gallagher'
select count(budget.remaining) from event inner join budget on event.event_id = budget.link_to_event where event.event_name = 'November Meeting'
sql placeholder
sql placeholder
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Brent' and member.last_name = 'Thomason'
select count(member.t_shirt_size) from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Human Development and Family Studies' and member.t_shirt_size = 'Large'
select zip_code.type from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Christof' and member.last_name = 'Nielson'
select major.major_name from major inner join member on major.major_id = member.link_to_major where member.position = 'Vice President'
select zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Sacha' and member.last_name = 'Harrison'
select major.department from member inner join major on member.link_to_major = major.major_id where member.position = 'President'
select income.date_received from member inner join income on member.member_id = income.link_to_member where member.first_name = 'Connor' and member.last_name = 'Hilton' and income.source = 'Dues'
select member.first_name , member.last_name from income inner join member on income.link_to_member = member.member_id where income.source = 'Dues' order by income.date_received asc limit 1
select cast(sum(case when event.event_name = 'Yearly Kickoff' then budget.amount else 0 end) as real) * 100 / sum(case when event.event_name = 'October Meeting' then budget.amount else 0 end) from budget inner join event on budget.link_to_event = event.event_id where budget.category = 'Advertisement'
select cast(sum(case when budget.category = 'Parking' then 1 else 0 end) as real) * 100 / count(event.event_name) from budget inner join event on budget.link_to_event = event.event_id where event.event_name = 'November Speaker'
select sum(cost) from expense where expense_description = 'Pizza'
select count(city) from zip_code where state = 'Virginia' and county = 'Orange County'
select department from major where college = 'College of Humanities and Social Sciences'
select zip_code.city , zip_code.county , zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Amy' and member.last_name = 'Firth'
select expense.expense_description from budget inner join expense on budget.budget_id = expense.link_to_budget order by budget.remaining asc limit 1
select member.first_name , member.last_name from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where event.event_name = 'October Meeting'
select major.college from major inner join member on major.major_id = member.link_to_major group by major.college order by count(major.college) desc limit 1
select major.major_name from major inner join member on major.major_id = member.link_to_major where member.phone = '809-555-3360'
sql placeholder
select expense.expense_description from member inner join expense on member.member_id = expense.link_to_member where member.position = 'Vice President'
select count(attendance.link_to_member) from event inner join attendance on event.event_id = attendance.link_to_event where event.event_name = 'Women%s Soccer'
select income.date_received from income inner join member on income.link_to_member = member.member_id where member.first_name = 'Casey' and member.last_name = 'Mason'
select count(zip_code.zip_code) from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.state = 'Maryland'
select count(*) from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where member.phone = '954-555-6240'
select member.first_name , member.last_name from member inner join major on member.link_to_major = major.major_id where major.department = 'School of Applied Sciences , Technology and Education'
sql placeholder
select count(*) from member where position = 'President'
select max(budget.spent) from event inner join budget on event.event_id = budget.link_to_event order by budget.spent desc limit 1
select count(event_id) from event where type = 'Meeting' and strftime('%Y' , event_date) = '2020'
select sum(spent) from budget where category = 'Food'
select member.first_name , member.last_name from member inner join attendance on member.member_id = attendance.link_to_member group by member.first_name , member.last_name having count(attendance.link_to_event) > 7
sql placeholder
select member.first_name , member.last_name from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.city = 'Georgetown' and zip_code.state = 'South Carolina'
select count(income.amount) from member inner join income on member.member_id = income.link_to_member where member.first_name = 'Grant' and member.last_name = 'Gilmour'
select member.first_name , member.last_name from member inner join income on member.member_id = income.link_to_member where income.amount > 40
sql placeholder
sql placeholder
select member.first_name , member.last_name , income.source from income inner join member on income.link_to_member = member.member_id order by income.amount desc limit 1
select event_name from event where event_id = ( select min(cost) from expense )
sql placeholder
select cast(sum(case when major_name = 'Finance' then 1 else 0 end) as real) * 100 / sum(case when major_name = 'Physics' then 1 else 0 end) from major
select source , amount from income where date_received between '2019-09-01' and '2019-09-30' order by amount desc limit 1
select first_name , last_name , email from member where position = 'Secretary'
select count(member.member_id) from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Physics Teaching'
select count(attendance.link_to_member) from event inner join attendance on event.event_id = attendance.link_to_event where event.event_name = 'Community Theater' and strftime('%Y' , event.event_date) = '2019'
sql placeholder
select avg(budget.spent) from budget inner join event on budget.link_to_event = event.event_id where event.status = 'Closed' and budget.category = 'Food'
select event.event_name from event inner join budget on event.event_id = budget.link_to_event where budget.category = 'Advertisement' order by budget.spent desc limit 1
sql placeholder
select cast(sum(case when type = 'Community Service' then 1 else 0 end) as real) * 100 / count(event_id) from event where event_date between '2019-01-01' and '2019-12-31'
select expense.cost from event inner join expense on event.event_id = expense.expense_id where expense.expense_description = 'Posters' and event.event_name = 'September Speaker'
select t_shirt_size from member group by t_shirt_size order by count(t_shirt_size) desc limit 1
select event.event_name from event inner join budget on event.event_id = budget.link_to_event where event.status = 'Closed' order by budget.remaining asc limit 1
select event.type , expense.cost from event inner join expense on event.event_id = expense.expense_id where event.event_name = 'October Meeting'
select budget.amount , budget.category from event inner join budget on event.event_id = budget.link_to_event where event.event_name = 'April Speaker' order by budget.amount desc limit 1
sql placeholder
select event.event_name from budget inner join event on budget.link_to_event = event.event_id where budget.category = 'Advertisement' order by budget.amount desc limit 3
select sum(cost) from expense where expense_description = 'Parking'
select sum(cost) from expense where expense_date = '2019-08-20'
select member.first_name , member.last_name , expense.cost from member inner join expense on member.member_id = expense.link_to_member where member.member_id = 'rec4BLdZHS2Blfp4v'
select expense.expense_description from member inner join expense on member.member_id = expense.link_to_member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Sacha' and member.last_name = 'Harrison'
select expense.expense_description from member inner join expense on member.member_id = expense.link_to_member where member.t_shirt_size = 'X-Large'
select zip_code.zip_code from member inner join expense on member.member_id = expense.link_to_member inner join zip_code on member.zip = zip_code.zip_code where expense.cost < 50
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Phillip' and member.last_name = 'Cullen'
select member.position from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Business'
select count(member.t_shirt_size) from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Business' and member.t_shirt_size = 'Medium'
sql placeholder
sql placeholder
select budget.category from budget inner join event on budget.link_to_event = event.event_id where event.event_date = '2020-03-24T12:00:00'
select major.major_name from major inner join member on major.major_id = member.link_to_major where member.position = 'Vice President'
select cast(sum(case when major.major_name = 'Mathematics' then 1 else 0 end) as real) * 100 / count(major.major_id) from major inner join member on major.major_id = member.link_to_major
select budget.category from event inner join budget on event.event_id = budget.link_to_event where event.location = 'MU 215'
select count(income_id) from income where amount = 50
select count(*) from member where t_shirt_size = 'X-Large' and position = 'Member'
select count(major_id) from major where department = 'School of Applied Sciences , Technology and Education' and college = 'College of Agriculture and Applied Sciences'
select member.last_name , major.department , major.college from major inner join member on major.major_id = member.link_to_major where major.major_name = 'Environmental Engineering'
sql placeholder
select zip_code.city , zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code inner join major on member.link_to_major = major.major_id where major.department = 'Electrical and Computer Engineering Department' and member.position = 'Member'
select event.event_name from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where member.position = 'Vice President' and event.location = '900 E. Washington St.' and event.type = 'Social'
select member.last_name , member.position from member inner join expense on member.member_id = expense.link_to_member where expense.expense_description = 'Pizza' and expense.expense_date = '2019-09-10'
select member.last_name from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where member.position = 'Member' and event.event_name = 'Women%s Soccer'
select cast(sum(case when income.amount = 50 then 1 else 0 end) as real) * 100 / count(*) from member inner join income on member.member_id = income.link_to_member where member.t_shirt_size = 'Medium' and member.position = 'Member'
select zip_code.county from zip_code where type = 'PO Box'
select zip_code from zip_code where state = 'Puerto Rico' and type = 'PO Box'
select event_name from event where type = 'Game' and status = 'Closed' and event_date between '2019-03-15' and '2020-03-20'
select event.event_name from expense inner join attendance on expense.link_to_member = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where expense.cost > 50
select member.first_name , member.last_name , attendance.link_to_event from expense inner join attendance on expense.link_to_member = attendance.link_to_member inner join member on attendance.link_to_member = member.member_id where expense.approved = 'true' and expense.expense_date between '2019-01-10' and '2019-11-19'
select major.college from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Katy' and major.major_id = 'rec1N0upiVLy5esTO'
select member.phone from major inner join member on major.major_id = member.link_to_major where major.major_name = 'Business' and major.college = 'College of Agriculture and Applied Sciences'
select member.email from member inner join expense on member.member_id = expense.link_to_member where expense.expense_date between '2019-09-10' and '2019-11-19' and expense.cost > 20
select count(member.position) from member inner join major on member.link_to_major = major.major_id where major.college = 'College of Education & Human Services' and major.major_name = 'Education'
select cast(sum(case when budget.remaining < 0 then 1 else 0 end) as real) * 100 / count(event.event_id) from event inner join budget on event.event_id = budget.link_to_event
select event_id , location , status from event where event_date between '2019-11-01' and '2020-03-31'
select expense_description from expense group by expense_description having cast(sum(cost) as real) / count(expense_id) > 50
select first_name , last_name from member where t_shirt_size = 'X-Large'
select cast(sum(case when type = 'PO Box' then 1 else 0 end) as real) * 100 / count(zip_code) from zip_code
sql placeholder
sql placeholder
select member.first_name , member.last_name , member.link_to_major from member inner join expense on member.member_id = expense.link_to_member inner join major on member.link_to_major = major.major_id where expense.cost > 100
select zip_code.city , zip_code.county from event inner join zip_code on event.event_id = zip_code.zip_code where event.event_name > 40
select t.first_name , t.last_name from ( select member.first_name , member.last_name , count(event.event_id) as num from event inner join expense on event.event_id = expense.link_to_member inner join member on member.member_id = expense.link_to_member group by member.first_name , member.last_name ) as t order by t.num desc limit 1
sql placeholder
sql placeholder
sql placeholder
select expense.link_to_budget from expense inner join budget on expense.link_to_budget = budget.budget_id where expense.expense_description = 'Water , chips , cookies' order by expense.cost desc limit 1
select member.first_name , member.last_name from member inner join expense on member.member_id = expense.link_to_member order by expense.cost desc limit 5
select member.first_name , member.last_name , member.phone from member inner join expense on member.member_id = expense.link_to_member where expense.cost > ( select avg(cost) from expense )
select cast(sum(case when zip_code.state = 'Maine' then 1 else 0 end) as real) * 100 / count(*) from member inner join zip_code on member.zip = zip_code.zip_code
select major.major_name , major.department from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Garrett' and member.last_name = 'Gerke'
select member.first_name , member.last_name , expense.cost from member inner join expense on member.member_id = expense.link_to_member where expense.expense_description = 'Water , Veggie tray , supplies'
select member.last_name , member.phone from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Elementary Education'
select budget.category , budget.amount from event inner join budget on event.event_id = budget.link_to_event where event.event_name = 'January Speaker'
select event.event_name from budget inner join event on budget.link_to_event = event.event_id where budget.category = 'Food'
sql placeholder
select budget.category from expense inner join budget on expense.link_to_budget = budget.budget_id where expense.expense_description = 'Posters'
select member.first_name , member.last_name , major.college from member inner join zip_code on member.zip = zip_code.zip_code inner join major on member.link_to_major = major.major_id where member.position = 'Secretary'
select sum(budget.spent) , event.event_name from event inner join budget on event.event_id = budget.link_to_event where budget.category = 'Speaker Gifts'
select zip_code.city from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Garrett' and member.last_name = 'Girke'
select member.first_name , member.last_name , member.position from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.city = 'Lincolnton' and zip_code.state = 'North Carolina' and zip_code.zip_code = 28092
select count(gasstations.gasstationid) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and gasstations.segment = 'Premium'
select cast(sum(case when currency = 'EUR' then 1 else 0 end) as real) * 100 / sum(case when currency = 'CZK' then 1 else 0 end) from customers
select customers.customerid from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'LAM' and yearmonth.consumption between 201201 and 201212 order by yearmonth.consumption asc limit 1
select avg(yearmonth.consumption) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'SME' and yearmonth.date between 201301 and 201312
select customers.customerid from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'CZK' and yearmonth.consumption between 201101 and 201112 order by yearmonth.consumption desc limit 1
select count(customers.customerid) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'KAM' and yearmonth.consumption < 30000 and yearmonth.date between 201201 and 201212
select sum(yearmonth.consumption) - sum(yearmonth.consumption) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'CZK' and customers.currency = 'EUR' and yearmonth.date between 201201 and 201212
select yearmonth.consumption from customers inner join yearmonth on customers.customerid = yearmonth.customerid inner join transactions_1k on customers.customerid = transactions_1k.customerid where customers.currency = 'EUR' group by yearmonth.consumption order by sum(yearmonth.consumption) desc limit 1
select customers.segment from customers inner join yearmonth on customers.customerid = yearmonth.customerid order by yearmonth.consumption asc limit 1
select yearmonth.consumption from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'CZK' group by yearmonth.consumption order by sum(yearmonth.consumption) desc limit 4
select yearmonth.consumption from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'SME' and yearmonth.date = '2013'
select sum(yearmonth.consumption) / count(customers.customerid) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'CZK' and customers.segment = 'KAM' order by yearmonth.consumption asc limit 1
select customers.segment from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'EUR' and customers.segment = 'SME' and customers.segment = 'KAM' order by yearmonth.consumption desc limit 1
select sum(yearmonth.consumption) from yearmonth inner join customers on yearmonth.customerid = customers.customerid where customers.customerid = 6 and yearmonth.date between 201308 and 201311
select sum(case when segment = 'Discount' then 1 else 0 end) - sum(case when segment = 'Discount' then 1 else 0 end) from gasstations
select sum(consumption) from yearmonth where date like '2013-04%'
select sum(case when currency = 'Czech Koruna' then 1 else 0 end) - sum(case when currency = 'Euro' then 1 else 0 end) from customers
select customers.customerid from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'LAM' and customers.currency = 'EUR' order by yearmonth.consumption desc limit 1
select customers.customerid , yearmonth.consumption from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'KAM' order by yearmonth.consumption desc limit 1
select sum(yearmonth.consumption) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'KAM' and yearmonth.date = '2013-05'
select cast(sum(case when yearmonth.consumption > 46.73 then 1 else 0 end) as real) * 100 / count(customers.customerid) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'LAM'
select country from gasstations group by country order by count(gasstationid) desc limit 1
select cast(sum(case when customers.currency = 'EUR' then 1 else 0 end) as real) * 100 / count(customers.customerid) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where customers.segment = 'KAM'
select cast(sum(consumption) as real) * 100 / count(customerid) from yearmonth where date like '201202'
select cast(sum(case when segment = 'Premium' then 1 else 0 end) as real) * 100 / count(gasstationid) from gasstations
select customerid from yearmonth where date = '201309' group by customerid order by sum(consumption) desc limit 1
select customers.segment from customers inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.date = '201309' order by yearmonth.consumption asc limit 1
select customers.customerid from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'SME' order by yearmonth.consumption asc limit 1
select consumption from yearmonth where strftime('%Y' , date) = '2012' order by consumption desc limit 1
select sum(yearmonth.consumption) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'euro' order by yearmonth.consumption desc limit 1
sql placeholder
select distinct gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where strftime('%Y-%m-%d' , transactions_1k.date) = '2013-06'
select distinct gasstations.chainid from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.transactionid = 'euros'
select distinct products.description from products inner join transactions_1k on products.productid = transactions_1k.productid where transactions_1k.transactionid = 'EUR'
select avg(price) from transactions_1k where date like '2012-01%'
select count(customers.customerid) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'euro' and yearmonth.consumption > 1000
select distinct products.description from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid inner join products on transactions_1k.productid = products.productid where gasstations.country = 'CZE'
select distinct transactions_1k.time from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.chainid = 11
select count(transactions_1k.transactionid) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and transactions_1k.price > 1000
select count(transactions_1k.transactionid) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and transactions_1k.date = '2012-01-01'
select avg(transactions_1k.price) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE'
select avg(transactions_1k.price) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where customers.currency = 'euro'
select transactions_1k.customerid from transactions_1k inner join customers on transactions_1k.customerid = customers.customerid where transactions_1k.date = '2012-08-25' order by transactions_1k.amount desc limit 1
select gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.date = '2012-08-25'
select distinct customers.currency from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.time = '16:25:00' and transactions_1k.date = '2012-08-24'
select distinct customers.segment from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.date = '2012-08-23' and transactions_1k.time = '21:20:00'
select count(transactions_1k.transactionid) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where customers.currency = 'EUR' and transactions_1k.time > '2013-08-26'
select distinct segment from customers order by customerid asc limit 1
sql placeholder
select productid from transactions_1k where time = '21:20:00' and date = '2012-08-23'
select transactions_1k.amount , yearmonth.date , yearmonth.consumption from transactions_1k inner join yearmonth on transactions_1k.customerid = yearmonth.customerid where transactions_1k.date = '2012-08-24' and transactions_1k.amount = 124.05
select count(transactions_1k.transactionid) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and transactions_1k.time = '8:00-9:00' and transactions_1k.date = '2012-08-26'
select distinct customers.currency from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.customerid = 214582.17 and yearmonth.date = '2013-06'
select distinct gasstations.country from transactions_1k inner join gasstations on transactions_1k.customerid = gasstations.country where transactions_1k.cardid = 667467
sql placeholder
select cast(sum(case when customers.currency = 'EUR' then 1 else 0 end) as real) * 100 / count(customers.customerid) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.date = '2012-08-25'
select yearmonth.consumption - yearmonth.consumption from yearmonth inner join transactions_1k on yearmonth.customerid = transactions_1k.customerid where transactions_1k.date = '2012-08-24' and transactions_1k.amount = 634.8
select gasstations.gasstationid from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid order by transactions_1k.amount desc limit 1
select cast(sum(case when gasstations.segment = 'Premium' then 1 else 0 end) as real) * 100 / count(gasstations.segment) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'SVK'
select transactions_1k.amount , transactions_1k.date from transactions_1k inner join yearmonth on transactions_1k.customerid = yearmonth.customerid where transactions_1k.customerid = 38508
select products.description from products inner join transactions_1k on products.productid = transactions_1k.productid order by transactions_1k.transactionid desc limit 5
select customers.customerid , transactions_1k.price / transactions_1k.amount , customers.currency from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid order by transactions_1k.price / transactions_1k.amount desc limit 1
select gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.productid = '2' order by transactions_1k.price desc limit 1
select distinct yearmonth.consumption from transactions_1k inner join yearmonth on transactions_1k.customerid = yearmonth.customerid where transactions_1k.productid = 5 and transactions_1k.price > transactions_1k.amount
