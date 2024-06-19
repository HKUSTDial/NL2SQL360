sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select count(distinct schools.virtual) from satscores inner join schools on satscores.cds = schools.cdscode where satscores.avgscrmath < 400 and schools.virtual = 'F'
sql placeholder
sql placeholder
sql placeholder
select count(distinct schools.charter) from satscores inner join schools on satscores.cds = schools.cdscode where satscores.avgscrmath > 560
sql placeholder
sql placeholder
sql placeholder
select schools.phone from satscores inner join schools on satscores.cds = schools.cdscode where satscores.numge1500 = 'NumTstTakr' order by satscores.numge1500 desc limit 3
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select schools.fundingtype from satscores inner join schools on satscores.cds = schools.cdscode where satscores.cname = 'Riverside' and satscores.avgscrmath > 400
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select schools.admfname1 , schools.admlname2 from satscores inner join schools on satscores.cds = schools.cdscode where satscores.numge1500 group by schools.admfname1 , schools.admlname1 order by count(satscores.numge1500) desc limit 3
sql placeholder
select schools.website from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.county = 'Los Angeles' and schools.school between 2000 and 3000
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select avg(satscores.avgscrwrite) , schools.city from satscores inner join schools on satscores.cds = schools.cdscode where satscores.numge1500 group by schools.city order by count(satscores.numge1500) desc limit 1
sql placeholder
sql placeholder
select cast(sum(schools.opendate) as real) / 12 from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.district = 52 and schools.county = 'Alameda' and schools.doctype = 'Elementary School District'
select cast(sum(case when schools.doctype = 'Elementary School District' then 1 else 0 end) as real) * 100 / sum(case when schools.doctype = 'Unified School District' then 1 else 0 end) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.county = 'Orange'
select county name , closeddate from schools where statustype = 'Closed' group by county order by count(closeddate) desc limit 1
sql placeholder
sql placeholder
select count(satscores.avgscrread) from satscores inner join schools on satscores.cds = schools.cdscode where schools.city = 'Lakeport' and satscores.numge1500
sql placeholder
select admfname1 , mailzip from schools where admfname1 = 'Atoian' and admlname2 = 'Atoian'
select cast(sum(case when county = 'Colusa' then 1 else 0 end) as real) * 100 / sum(case when state = 'California' then 1 else 0 end) from schools
select count(*) from schools where state in ( select mailstate from schools where county = 'San Joaquin' )
sql placeholder
select schools.phone , schools.ext from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.zip = '95203-3704'
select website from schools where admfname1 = 'Mike' and admlname2 = 'Dante'
select website from schools where charter = 1 and virtual = 'P' and county = 'San Joaquin'
select count(*) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.city = 'Hickman' and schools.charter = 1 and schools.district = 52
sql placeholder
select schools.admfname1 , schools.school name , schools.city from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.charternum = '00D2'
select count(*) from schools where city = 'Hickman' and charternum = '00D4'
select cast(sum(case when schools.fundingtype = 'Locally funded' then 1 else 0 end) as real) * 100 / count(*) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.county = 'Santa Clara'
select count(schools.school) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.county = 'Stanislaus' and schools.fundingtype = 'Directly funded' and schools.opendate between '1/1/2000' and '2005-12-31'
select sum(schools.closeddate) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.city = 'S. San Francisco' and schools.doctype = 'Community College District' and schools.closeddate = '1989'
select schools.county from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.soctype = 'Youth Authority Facilities' and schools.cdscode = 11 and schools.closeddate between 1980 and 1989 group by schools.county order by count(schools.soc) desc limit 1
select schools.cdscode from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.soc = 31 and schools.soctype = 'State Special Schools'
select count(schools.cdscode) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.county = 'Alpine' and schools.soctype = 'District Community Day Schools' and schools.statustype = 'Active'
select frpm.cdscode from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.city = 'Fresno' and schools.magnet = 0
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select schools.gsserved from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.city = 'Adelanto' group by schools.gsserved order by count(schools.gsserved) desc limit 1
select county from schools where county in ('San Diego' , 'Santa Barbara') group by county order by count(virtual) desc limit 1
select school type , latitude , school name from schools where latitude = ( select max(latitude) from schools )
select city , school name from schools where state = 'CA' order by latitude asc limit 1
select schools.gsoffered from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.longitude = ( select max(longitude) from schools )
sql placeholder
select admfname1 , district from schools group by admfname1 , district order by count(district) desc limit 2
sql placeholder
select schools.admfname1 , schools.admlname2 , schools.district , schools.county , schools.school from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.charter = 40
sql placeholder
select schools.admemail1 , schools.admemail2 from satscores inner join schools on satscores.cds = schools.cdscode where satscores.numge1500 group by schools.admemail1 , schools.admemail2 order by count(satscores.numge1500) desc limit 1
select count(account.account_id) from district inner join account on district.district_id = account.district_id where district.a3 = 'east Bohemia' and account.frequency = 'POPLATEK PO OBRATU'
select count(account.account_id) from loan inner join account on loan.account_id = account.account_id inner join district on account.district_id = district.district_id where district.a3 = 'Pragma'
sql placeholder
select count(district.a11) from client inner join district on client.district_id = district.district_id where client.gender = 'F' and district.a11 > 6000 and district.a9 < 10000
select count(client.gender) from client inner join district on client.district_id = district.district_id where district.a3 = 'north Bohemia' and client.gender = 'M' and district.a11 = 8000
sql placeholder
select count(client.client_id) from client inner join account on client.client_id = account.account_id inner join district on account.district_id = district.district_id where client.birth_date < client.birth_date order by client.gender desc limit 1
select count(client.client_id) from client inner join disp on client.client_id = disp.client_id inner join account on disp.account_id = account.account_id where disp.type = 'OWNER' and account.frequency = 'POPLATEK TYDNE'
select client.client_id from client inner join disp on client.client_id = disp.client_id inner join account on account.account_id = disp.account_id where account.frequency = 'POPLATEK PO OBRATU' and disp.type = 'DISPONENT'
select account.account_id , loan.status from account inner join loan on account.account_id = loan.account_id where strftime('%Y' , loan.date) = '1997' order by loan.amount asc limit 1
select account.date from loan inner join account on loan.account_id = account.account_id where loan.duration > 12 group by account.date order by sum(loan.amount) desc limit 1
select count(client.gender) from client inner join district on client.district_id = district.district_id inner join account on account.account_id = district.district_id where client.gender = 'F' and strftime('%Y' , account.date) > '1950'
select account.account_id from account inner join trans on account.account_id = trans.account_id where strftime('%Y' , account.date) = '1995' order by trans.date asc limit 1
select distinct trans.account_id from trans inner join disp on trans.account_id = disp.account_id inner join client on disp.client_id = client.client_id where strftime('%Y' , trans.date) > '1997' and trans.amount > 3000
select client.client_id from card inner join disp on card.disp_id = disp.disp_id inner join client on disp.client_id = client.client_id where strftime('%Y' , card.issued) = '1994-03'
select account.date from account inner join trans on account.account_id = trans.account_id where trans.trans_id = 840 and account.date = '1998-10-14'
select account.district_id from loan inner join account on loan.account_id = account.account_id inner join district on account.district_id = district.district_id where loan.date = '1994-08-25'
sql placeholder
select client.gender from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where district.a11 = 'oldest' order by district.a9 desc limit 1
select loan.amount from account inner join loan on account.account_id = loan.account_id inner join client on account.district_id = client.district_id inner join trans on account.account_id = trans.account_id order by loan.amount desc limit 1
select count(client.gender) from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where district.a2 = 'Jesenik' and client.gender = 'F'
sql placeholder
select count(account.account_id) from district inner join account on district.district_id = account.district_id where district.a2 = 'Litomerice' and strftime('%Y' , account.date) = '1996'
select district.a2 from client inner join district on client.district_id = district.district_id inner join account on account.account_id = district.district_id where client.gender = 'F' and client.birth_date = '1976-1/29'
select client.birth_date from loan inner join account on loan.account_id = account.account_id inner join district on account.district_id = district.district_id inner join client on account.district_id = client.district_id where loan.amount = 98832 and loan.date = '1996-01-03'
select account.account_id from client inner join account on client.client_id = account.account_id inner join district on account.district_id = district.district_id where district.a3 = 'Pragma'
select cast(sum(case when client.gender = 'M' then 1 else 0 end) as real) * 100 / count(client.gender) from client inner join district on client.district_id = district.district_id where district.a3 = 'south Bohemia'
sql placeholder
select cast(sum(loan.amount) as real) * 100 / count(loan.status) from loan inner join account on loan.account_id = account.account_id where loan.status = 'A'
select cast(sum(iif(loan.status = 'C' , 1 , 0)) as real) * 100 / count(loan.status) from loan inner join account on loan.account_id = account.account_id where loan.amount < 100000
sql placeholder
select account.account_id , account.frequency from district inner join disp on district.district_id = disp.account_id inner join account on disp.account_id = account.account_id where district.a3 = 'east Bohemia' and district.a3 between 1995 and 2000
select account.account_id , account.date from district inner join account on district.district_id = account.district_id where district.a2 = 'Prachatice'
select district.district_id , district.a2 , district.a3 from loan inner join district on loan.loan_id = district.district_id where loan.loan_id = 4990
select account.account_id , district.a2 , district.a3 and district.a3 from loan inner join account on loan.account_id = account.account_id inner join district on account.district_id = district.district_id where loan.amount > 300000
sql placeholder
sql placeholder
select cast(sum(case when district.a2 = 'Decin' then 1 else 0 end) as real) * 100 / count(*) from district inner join account on district.district_id = account.district_id where district.a2 = 'Decin'
select account_id from account where frequency = 'POPLATEK MESICNE'
sql placeholder
sql placeholder
select count(disp.account_id) from disp inner join client on disp.client_id = client.client_id inner join district on client.district_id = district.district_id inner join card on card.card_id = card.card_id where district.a3 = 'south Bohemia'
sql placeholder
select avg(loan.amount) from loan inner join client on loan.loan_id = client.client_id where client.gender = 'M'
sql placeholder
sql placeholder
sql placeholder
select count(loan.amount) from loan inner join account on loan.account_id = account.account_id where loan.amount > 250000 and loan.date between '1995-01-01' and '1997-12-31'
select count(client.district_id) from client inner join loan on client.district_id = loan.account_id inner join account on account.account_id = loan.account_id where loan.status = 'C' and loan.loan_id = 1 and client.district_id = 1
select count(client.gender) from client inner join district on client.district_id = district.district_id inner join account on district.district_id = account.district_id where district.a15 = 1995 and client.gender = 'M' order by district.a9 desc limit 1 , 1
select count(disp.disp_id) from card inner join disp on card.disp_id = disp.disp_id where card.type = 'gold' and disp.type = 'disponent'
select count(account.account_id) from district inner join account on district.district_id = account.district_id where district.a2 = 'Pisek'
sql placeholder
sql placeholder
select account.account_id from card inner join disp on card.disp_id = disp.account_id inner join account on disp.account_id = account.account_id where card.type = 'gold' or card.type = 'junior'
select avg(trans.amount) from account inner join trans on account.account_id = trans.account_id where strftime('%Y' , account.date) = '2021' and trans.operation = 'VYBER KARTOU' and trans.amount = 0
select trans.account_id from trans inner join account on trans.account_id = account.account_id where strftime('%Y' , trans.date) = '1998' and trans.operation = 'VYBER KARTOU'
select disp.account_id from card inner join disp on card.disp_id = disp.disp_id inner join loan on disp.account_id = loan.account_id inner join client on client.client_id = disp.client_id where client.gender = 'F'
sql placeholder
select disp.account_id from disp inner join district on disp.account_id = district.district_id where district.a2 = 'Tamar' and disp.type = 'OWNER'
select account.account_id , disp.type , avg(district.a11) from loan inner join disp on loan.account_id = disp.account_id inner join account on account.account_id = disp.account_id inner join district on district.district_id = district.district_id where disp.type = 'OWNER' and loan.loan_id = 8000 and district.a9 = 9000
select count(trans.account_id) from trans inner join account on trans.account_id = account.account_id inner join district on account.district_id = district.district_id where district.a3 = 'north Bohemia' and trans.bank = 'AB'
select district.a2 , district.a9 from trans inner join account on trans.account_id = account.account_id inner join district on account.district_id = district.district_id where trans.type = 'VYDAJ'
select avg(district.a15) from district inner join account on district.district_id = account.district_id inner join trans on account.account_id = trans.account_id where strftime('%Y' , account.date) = '1995' and district.a3 = '3'
select count(disp.disp_id) from disp inner join loan on disp.account_id = loan.account_id inner join card on card.disp_id = disp.disp_id where disp.type = 'classic' and loan.loan_id = 1
select count(client.gender) from client inner join district on client.district_id = district.district_id where district.a2 = 'Hl.m. Praha' and client.gender = 'M'
select cast(sum(case when strftime('%Y' , issued) < '1998' then 1 else 0 end) as real) * 100 / count(card_id) from card
select disp.type from disp inner join account on disp.account_id = account.account_id inner join loan on account.account_id = loan.account_id order by loan.amount desc limit 1
select sum(case when district.a15 = 532 then 1 else 0 end) from district inner join account on district.district_id = account.district_id where account.account_id = 532
sql placeholder
sql placeholder
select count(account.account_id) from loan inner join account on loan.account_id = account.account_id where loan.amount < 200000 and account.frequency = 'POPLATEK TYDNE'
select card.type from card inner join client on card.disp_id = client.client_id where client.district_id = 13539
select district.a3 from client inner join district on client.district_id = district.district_id where client.district_id = 3541
select district.a9 from loan inner join account on loan.account_id = account.account_id inner join district on account.district_id = district.district_id where loan.status = 'A' group by district.a9 order by count(loan.loan_id) desc limit 1
sql placeholder
sql placeholder
select count(account.account_id) from district inner join account on district.district_id = account.district_id where district.a2 = 'Jesenik'
select client.client_id from card inner join client on card.disp_id = client.client_id where strftime('%Y' , card.issued) >= '1996' and card.type = 'junior'
sql placeholder
select sum(loan.amount) / sum(loan.amount) from loan inner join account on loan.account_id = account.account_id inner join client on account.district_id = client.district_id where client.gender = 'M' and loan.amount between 1996 and 1997
select count(*) from trans where operation = 'VYBER KARTOU' and strftime('%Y' , date) > '1995'
select sum(case when a3 = 'east Bohemia' then 1 else 0 end) - sum(case when a3 = 'north Bohemia' then 1 else 0 end) from district
select count(disp.disp_id) from disp inner join account on disp.account_id = account.account_id inner join client on account.district_id = client.district_id where account.account_id between 1 and 10 and disp.type = 'OWNER' or disp.type = 'DISPONENT'
sql placeholder
select client.birth_date from disp inner join account on disp.account_id = account.account_id inner join client on account.district_id = client.district_id where disp.account_id = 130
select count(disp.disp_id) from disp inner join account on disp.account_id = account.account_id where disp.type = 'OWNER' and account.frequency = 'POPLATEK PO OBRATU'
select loan.amount , loan.payments from loan inner join client on loan.account_id = client.client_id where client.client_id = 992
select sum(trans.amount) , client.gender from client inner join trans on client.client_id = trans.account_id inner join account on account.account_id = trans.account_id where trans.trans_id = 851 and client.client_id = 4
select card.type from client inner join disp on client.client_id = disp.client_id inner join card on disp.disp_id = card.disp_id inner join account on disp.account_id = account.account_id where client.client_id = 9
select sum(trans.amount) from client inner join trans on client.client_id = trans.account_id where client.client_id = 617 and strftime('%Y' , trans.date) = '1998'
select client.client_id , account.account_id from client inner join district on client.district_id = district.district_id inner join account on account.account_id = account.account_id where district.a3 = 'east Bohemia' and client.birth_date between 1983 and 1987
select client.client_id from loan inner join client on loan.loan_id = client.client_id where client.gender = 'F' group by client.client_id order by count(loan.loan_id) desc limit 3
sql placeholder
sql placeholder
select count(card.disp_id) from card inner join client on card.disp_id = client.client_id where client.gender = 'F' and card.type = 'junior'
select cast(sum(case when client.gender = 'F' then 1 else 0 end) as real) * 100 / count(client.gender) from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where district.a3 = 'Pragma'
select cast(sum(case when client.gender = 'M' then 1 else 0 end) as real) * 100 / count(client.gender) from client inner join disp on client.client_id = disp.client_id inner join account on disp.account_id = account.account_id where account.frequency = 'POPLATEK TYDNE'
select count(client.client_id) from client inner join disp on client.client_id = disp.client_id inner join account on disp.account_id = account.account_id where account.frequency = 'POPLATEK TYDNE'
select loan.amount from loan inner join account on loan.account_id = account.account_id where strftime('%Y' , loan.duration) > '1997' order by loan.amount asc limit 1
select count(*) from client inner join district on client.district_id = district.district_id inner join account on account.account_id = district.district_id inner join trans on account.account_id = trans.account_id where client.gender = 'F' order by district.a11 asc limit 1
select count(client.client_id) from client inner join district on client.district_id = district.district_id where district.a3 = 'east Bohemia' and strftime('%Y' , client.birth_date) = '1920'
select count(loan.account_id) from loan inner join account on loan.account_id = account.account_id where loan.duration = 24 and account.frequency = 'POPLATEK TYDNE'
select avg(loan.amount) from loan inner join account on loan.account_id = account.account_id inner join trans on account.account_id = trans.account_id where account.frequency = 'POPLATEK PO OBRATU' and loan.status = 'C'
sql placeholder
select client.client_id , client.gender from card inner join client on card.disp_id = client.client_id where card.type = 'gold'
select bond_type from bond group by bond_type order by count(bond_type) desc limit 1
select count(connected.atom_id) from atom inner join connected on atom.atom_id = connected.atom_id inner join molecule on connected.atom_id = molecule.molecule_id where molecule.label = '-' and atom.element = 'cl'
select avg(atom.element = 'o') from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where bond.bond_type = '-'
sql placeholder
select count(*) from molecule inner join atom on molecule.molecule_id = atom.molecule_id where atom.element = 'na' and molecule.label = '-'
select molecule.molecule_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '#' and molecule.label = '+'
select cast(sum(case when atom.element = 'c' then 1 else 0 end) as real) * 100 / count(connected.atom_id) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where bond.bond_type = '= '
select count(bond_type) from bond where bond_type = '#'
select count(connected.atom_id) from atom inner join connected on atom.atom_id = connected.atom_id2 where atom.element != 'br'
sql placeholder
select atom.molecule_id from atom inner join connected on atom.atom_id = connected.atom_id inner join molecule on connected.atom_id = molecule.molecule_id where atom.element = 'si'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id2 where connected.bond_id = 'TR004_8_9'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where bond.bond_type = '= 'and atom.element = 'cl' and atom.element = 'cl'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'h' group by molecule.label order by count(atom.element) desc limit 1
sql placeholder
select connected.atom_id2 from bond inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '-'
select connected.atom_id from molecule inner join connected on molecule.molecule_id = connected.atom_id inner join atom on connected.atom_id = atom.atom_id where molecule.label = '-'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '-' group by atom.element order by count(atom.element) asc limit 1
sql placeholder
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element != 'sn'
select count(connected.atom_id) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 'i' and atom.element = 's' and bond.bond_type = '-'
select connected.atom_id2 from bond inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '#'
select connected.atom_id from atom inner join connected on atom.atom_id = connected.atom_id inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR181'
select cast(sum(case when atom.element = 'f' then 1 else 0 end) as real) * 100 / count(atom.element) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+'
select cast(sum(case when bond.bond_type = '#' then 1 else 0 end) as real) * 100 / count(bond.bond_id) from bond inner join molecule on bond.molecule_id = molecule.molecule_id where molecule.label = '+'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR000' order by atom.element desc limit 3
select atom.element from molecule inner join atom on molecule.molecule_id = atom.molecule_id inner join connected on atom.atom_id = connected.atom_id inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR001' and bond.bond_id = 'TR001_2_6'
select sum(case when label = '+' then 1 else 0 end) - sum(case when label = '-' then 1 else 0 end) as diff from molecule
select connected.atom_id from atom inner join connected on atom.atom_id = connected.atom_id2 where connected.bond_id = 'TR_000_2_5'
select connected.bond_id from atom inner join connected on atom.atom_id = connected.atom_id2 where connected.atom_id = 'TR000_2'
sql placeholder
select cast(sum(case when bond.bond_type = '= 'then 1 else 0 end) as real) * 100 / count(bond.bond_type) from molecule inner join atom on molecule.molecule_id = atom.molecule_id inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where molecule.molecule_id = 'TR008'
select cast(sum(case when label = '+' then 1 else 0 end) as real) * 100 / count(molecule_id) from molecule
select cast(sum(case when atom.element = 'h' then 1 else 0 end) as real) * 100 / count(connected.atom_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where molecule.molecule_id = 'TR206'
select distinct bond.bond_type from molecule inner join atom on molecule.molecule_id = atom.molecule_id inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where molecule.molecule_id = 'TR000'
select atom.element , molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR060'
select bond.bond_type , molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id inner join connected on bond.bond_id = connected.bond_id where molecule.molecule_id = 'TR018' group by bond.bond_type order by count(bond.bond_type) desc limit 1
sql placeholder
sql placeholder
select count(bond.bond_type) from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.atom_id = 'TR009_12' and molecule.molecule_id = 'TR009'
select count(atom.molecule_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'br' and molecule.label = '+'
sql placeholder
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.atom_id = 'TR001_10'
select count(bond.molecule_id) from bond inner join molecule on bond.molecule_id = molecule.molecule_id where bond.bond_type = '#'
select count(connected.bond_id) from atom inner join connected on atom.atom_id = connected.atom_id2 where atom.atom_id = 19
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR004'
select count(label) from molecule where label = '-'
select atom.atom_id , molecule.label from atom inner join connected on atom.atom_id = connected.atom_id inner join molecule on atom.molecule_id = molecule.molecule_id where substr(atom.atom_id , 7 , 2) between 21 and 25 and molecule.label = '+'
select distinct bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 'p' and atom.element = 'n'
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '= 'and molecule.label = '+' group by molecule.molecule_id order by count(bond.bond_type) desc limit 1
select cast(count(connected.bond_id) as real) / count(distinct atom.atom_id) from atom inner join connected on atom.atom_id = connected.atom_id where atom.element = 'i'
select bond.bond_type , bond.bond_id from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on bond.bond_id = connected.bond_id where atom.atom_id = 7 and atom.atom_id + 0 = 45
sql placeholder
select atom.element from molecule inner join atom on molecule.molecule_id = atom.molecule_id inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where atom.molecule_id = 'TR447' and bond.bond_type = '#'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id2 where connected.bond_id = 'TR144_8_19'
select molecule.molecule_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '= 'group by molecule.molecule_id order by count(bond.bond_type) desc limit 1
select atom.element from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.label = '+' group by atom.element order by count(atom.element) asc limit 1
select connected.atom_id2 from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 'pb'
select atom.element from atom inner join bond on atom.atom_id = bond.bond_id where bond.bond_type = '#'
select cast(count(distinct atom.atom_id) as real) * 100 / count(distinct atom.atom_id) from atom inner join connected on atom.atom_id = connected.atom_id group by connected.atom_id order by count(distinct atom.atom_id) desc limit 1
select cast(sum(case when molecule.label = '+' then 1 else 0 end) as real) * 100 / count(bond.bond_type) from bond inner join molecule on bond.molecule_id = molecule.molecule_id where bond.bond_type = '-'
select count(atom_id) from atom where element in ('c' , 'h')
select connected.atom_id2 from atom inner join connected on atom.atom_id = connected.atom_id2 where atom.element = 's'
select bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 'sn'
select count(connected.atom_id) from bond inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '-'
sql placeholder
select bond.bond_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.label = '+'
select molecule.molecule_id from bond inner join molecule on bond.molecule_id = molecule.molecule_id where molecule.label = '-' and bond.bond_type = '-'
select cast(sum(case when atom.element = 'cl' then 1 else 0 end) as real) * 100 / count(bond.bond_type) from bond inner join connected on bond.bond_id = connected.bond_id inner join atom on connected.atom_id = atom.atom_id where bond.bond_type = '-'
select molecule.label from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.molecule_id = 'TR000 , TR001 , TR002'
select molecule_id from molecule where label = '-'
select sum(case when molecule.label = '+' then 1 else 0 end) as num from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.molecule_id = 'TR000' or atom.molecule_id = 'TR030'
sql placeholder
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id2 where connected.bond_id = 'TR001_10_11'
select count(connected.bond_id) from atom inner join connected on atom.atom_id = connected.atom_id2 where atom.element = 'i'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'ca' order by molecule.label desc limit 1
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id2 where connected.bond_id = 'TR001_1_8' and atom.element = 'cl'
sql placeholder
select cast(sum(case when atom.element = 'pb' then 1 else 0 end) as real) * 100 / count(atom.element) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR001'
sql placeholder
sql placeholder
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id2 where connected.bond_id = 'TR005_16_26'
select count(bond.bond_type) from bond inner join molecule on bond.molecule_id = molecule.molecule_id where molecule.label = '-' and bond.bond_type = '-'
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_id = 'TR001_10_11'
select bond.bond_id , molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '#'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' group by atom.element having substr(atom.atom_id , 7 , 1) = 4
select cast(sum(case when atom.element = 'h' then 1 else 0 end) as real) * 100 / count(atom.element) , molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR006'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'ca'
select bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 'te'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id2 where connected.bond_id = 'TR001_10_11'
select cast(sum(case when bond.bond_type = '#' then 1 else 0 end) as real) * 100 / count(bond.bond_type) from bond inner join connected on bond.bond_id = connected.bond_id
select cast(sum(case when bond.bond_type = '= 'then 1 else 0 end) as real) * 100 / count(bond.bond_type) from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where molecule.molecule_id = 'TR047'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.atom_id = 'TR001_1'
sql placeholder
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id2 where molecule.molecule_id = 'TR151'
select count(label) from molecule where label = '+'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where molecule.molecule_id between 'TR010' and 'TR050' and atom.element = 'c'
select count(atom.atom_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+'
sql placeholder
select count(atom.atom_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'h' and molecule.label = '+'
sql placeholder
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '-' and atom.element = 'c'
select cast(sum(case when atom.element = 'h' then 1 else 0 end) as real) * 100 / count(atom.molecule_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id
select '+' from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.label = 'TR124'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR186'
select bond.bond_type from connected inner join bond on connected.bond_id = bond.bond_id where connected.bond_id = 'TR007_4_19'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id2 where connected.bond_id = 'TR001_2_4'
sql placeholder
select molecule.label , atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+'
select atom.atom_id , atom.atom_id from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on connected.bond_id = bond.bond_id where bond.bond_type = '-'
select atom.element , molecule.label from atom inner join connected on atom.atom_id = connected.atom_id inner join molecule on connected.atom_id = molecule.molecule_id inner join bond on bond.bond_id = molecule.molecule_id where bond.bond_type = '#'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id2 where connected.bond_id = 'TR000_2_3'
select count(bond.bond_id) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 'cl'
select atom.atom_id , bond.bond_type from molecule inner join atom on molecule.molecule_id = atom.molecule_id inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.molecule_id = 'TR346'
select count(bond.bond_type) , count(distinct molecule.molecule_id) from bond inner join molecule on bond.molecule_id = molecule.molecule_id where bond.bond_type = '= 'and molecule.label = '+'
select count(connected.atom_id) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 's' and bond.bond_type != '= '
sql placeholder
select count(connected.atom_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where atom.molecule_id = 'TR005'
select count(bond_type) from bond where bond_type = '-'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'cl' and molecule.label = '+'
select molecule.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'c' and molecule.label = '-'
select cast(sum(case when atom.element = 'cl' then 1 else 0 end) as real) * 100 / count(atom.molecule_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id
select molecule.molecule_id from bond inner join molecule on bond.molecule_id = molecule.molecule_id where bond.bond_id = 'TR001_1_7'
select count(connected.atom_id) from atom inner join connected on atom.atom_id = connected.atom_id2 where connected.bond_id = 'TR001_3_4' and atom.element = 'cl'
sql placeholder
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.atom_id = 'TR000_2' and atom.atom_id = 2 = 'TR000_4'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id2 where connected.atom_id = 'TR000_1'
sql placeholder
select cast(sum(case when bond.bond_type = '-' then 1 else 0 end) as real) * 100 / count(bond.bond_type) from bond inner join connected on bond.bond_id = connected.bond_id
select count(atom.molecule_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'n' and molecule.label = '+'
sql placeholder
select molecule.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '-' group by molecule.molecule_id having count(atom.molecule_id) > 5
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join molecule on connected.atom_id = molecule.molecule_id inner join bond on bond.bond_id = molecule.molecule_id where atom.molecule_id = 'TR024' and bond.bond_type = '= '
select molecule.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' group by atom.molecule_id order by count(atom.molecule_id) desc limit 1
select cast(sum(case when molecule.label = '+' then 1 else 0 end) as real) * 100 / count(atom.element) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id inner join molecule on molecule.molecule_id = molecule.molecule_id where atom.element = 'h' and bond.bond_type = '#'
select count(label) from molecule where label = '+'
select count(connected.atom_id) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.molecule_id between 'TR004' and 'TR010' and bond.bond_type = '-'
select count(connected.atom_id) from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where atom.element = 'c' and molecule.molecule_id = 'TR008'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join molecule on connected.atom_id = molecule.molecule_id where connected.atom_id = 'TR004_7' and molecule.label = '-'
select count(connected.atom_id) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 'o' and bond.bond_type = '= '
select count(bond.bond_type) from bond inner join molecule on bond.molecule_id = molecule.molecule_id where molecule.label = '-' and bond.bond_type = '#'
select atom.element , bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.molecule_id = 'TR016'
sql placeholder
select atom.atom_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' and atom.element = 'o'
select name from cards where cardkingdomfoilid is not null
select bordercolor from cards where cardkingdomfoilid is null
select name from cards where faceconvertedmanacost = ( select max(faceconvertedmanacost) from cards )
select name from cards where frameversion = 2015 and edhrecrank < 100
select cards.name from legalities inner join cards on legalities.uuid = cards.uuid where legalities.status = 'Banned' and legalities.format = 'gladiator' and cards.rarity = 'mythic'
select distinct legalities.status from cards inner join legalities on cards.uuid = legalities.uuid where cards.type = 'Artifact' and legalities.format = 'vintage' and cards.side is null
select cards.id , cards.artist from cards inner join legalities on cards.uuid = legalities.uuid where legalities.status = 'Legal' and legalities.format = 'commander' and cards.power = '*'
select rulings.text , cards.name , rulings.date from rulings inner join cards on rulings.uuid = cards.uuid where cards.artist = 'Stephen Daniele' and cards.hascontentwarning = 1
select rulings.text from rulings inner join cards on rulings.uuid = cards.uuid where cards.number = '74s' and cards.name = 'Sublime Epiphany'
select cards.name , cards.artist , cards.ispromo from rulings inner join cards on rulings.uuid = cards.uuid where rulings.uuid = 1 group by cards.name , cards.artist order by count(rulings.uuid) desc limit 1
sql placeholder
select cards.name from foreign_data inner join cards on foreign_data.uuid = cards.uuid where foreign_data.language = 'Japanese'
select cast(sum(case when foreign_data.language = 'Chinese Simplified' then 1 else 0 end) as real) * 100 / count(cards.availability) from cards inner join foreign_data on cards.uuid = foreign_data.uuid
select cards.id , sets.totalsetsize from foreign_data inner join set_translations on foreign_data.id = set_translations.id inner join cards on foreign_data.uuid = cards.uuid inner join sets on sets.code = set_translations.setcode where foreign_data.language = 'Italian'
select count(types) from cards where artist = 'Aaron Boyd'
select keywords from cards where name = 'Angel of Mercy'
select count(id) from cards where power = '*'
select distinct promotypes from cards where name = 'Duress'
select bordercolor from cards where name = 'Ancestor''s Chosen'
select originaltype from cards where name = 'Ancestor''s Chosen'
sql placeholder
select count(cards.id) from legalities inner join cards on legalities.uuid = cards.uuid where legalities.status = 'Restricted' and cards.istextless = 0
select rulings.text from rulings inner join cards on rulings.uuid = cards.uuid where cards.name = 'Condemn'
select count(cards.id) from cards inner join legalities on cards.uuid = legalities.uuid where legalities.status = 'Restricted' and cards.isstarter = 1
select legalities.status from legalities inner join cards on legalities.uuid = cards.uuid where cards.name = 'Cloudchaser Eagle'
select type from cards where name = 'Benalish Knight'
select legalities.format from legalities inner join cards on legalities.uuid = cards.uuid where cards.name = 'Benalish Knight'
select cards.artist from cards inner join foreign_data on cards.uuid = foreign_data.uuid where foreign_data.language = 'Phyrexian'
select cast(sum(case when bordercolor = 'borderless' then 1 else 0 end) as real) * 100 / count(id) from cards
select count(cards.id) from foreign_data inner join cards on foreign_data.uuid = cards.uuid where foreign_data.language = 'German' and cards.isreprint = 1
select count(cards.id) from foreign_data inner join cards on foreign_data.uuid = cards.uuid where foreign_data.language = 'Russian' and cards.bordercolor = 'borderless'
select cast(sum(case when foreign_data.language = 'French' then 1 else 0 end) as real) * 100 / count(cards.id) from foreign_data inner join cards on foreign_data.uuid = cards.uuid where cards.isstoryspotlight = 1
select count(id) from cards where toughness = 99
select name from cards where artist = 'Aaron Boyd'
select count(id) from cards where bordercolor = 'black' and availability = 'mtgo'
select id from cards where manacost = 0
sql placeholder
select count(id) from cards where originaltype = 'Summon - Angel' and subtypes != 'Angel'
sql placeholder
select id from cards where dueldeck = 'a'
select edhrecrank from cards where frameversion = 2015
select cards.artist from foreign_data inner join cards on foreign_data.uuid = cards.uuid where foreign_data.language = 'Chinese Simplified'
select cards.name from cards inner join foreign_data on cards.uuid = foreign_data.uuid where foreign_data.language = 'Japanese' and cards.availability = 'paper'
select count(cards.id) from cards inner join legalities on cards.uuid = legalities.uuid where legalities.status = 'Banned' and cards.bordercolor = 'white'
select legalities.uuid , foreign_data.language from legalities inner join cards on legalities.uuid = cards.uuid inner join foreign_data on foreign_data.uuid = cards.uuid where legalities.format = 'legacy'
select rulings.text from rulings inner join cards on rulings.uuid = cards.uuid where cards.name = 'Beacon of Immortality'
select count(cards.id) , legalities.status from cards inner join legalities on cards.uuid = legalities.uuid where cards.frameversion = 'future' and legalities.status = 'legal'
select cards.name , cards.colors from cards inner join set_translations on cards.id = set_translations.setcode where cards.setcode = 'OGW'
select cards.name , set_translations.language from cards inner join set_translations on cards.id = set_translations.setcode where set_translations.setcode = '10E' and cards.convertedmanacost = 5
select cards.name , rulings.date from cards inner join rulings on cards.uuid = rulings.uuid where cards.originaltype = 'Creature - Elf'
select distinct cards.colors , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid where cards.id >= 1 and cards.id < 20
select cards.name , foreign_data.name from foreign_data inner join set_translations on foreign_data.id = set_translations.setcode inner join cards on cards.uuid = foreign_data.uuid where cards.originaltype = 'Artifact' and cards.colors = 'B' and foreign_data.language = 'English'
select cards.name from rulings inner join cards on rulings.uuid = cards.uuid where cards.rarity = 'uncommon' order by rulings.date asc
sql placeholder
select count(cards.id) from cards where bordercolor = 'white' and cardkingdomfoilid is not null
select count(id) from cards where artist = 'UDON' and availability = 'mtgo'
select count(id) from cards where frameversion = 1993 and availability = 'paper' and hascontentwarning = 1
select manacost from cards where layout = 'normal' and frameversion = '2003' and bordercolor = 'black' and availability = 'mtgo'
select sum(manacost) from cards where artist = 'Rob Alexander'
select subtypes , supertypes from cards where availability = 'arena'
select cards.setcode from foreign_data inner join set_translations on foreign_data.id = set_translations.setcode inner join cards on foreign_data.uuid = cards.uuid where foreign_data.language = 'Spanish'
select cast(sum(case when hand = +3 then 1 else 0 end) as real) * 100 / count(id) from cards where frameeffects = 'legendary'
select cast(sum(case when isstoryspotlight = 1 then 1 else 0 end) as real) * 100 / count(id) from cards
select cast(sum(case when foreign_data.language = 'Spanish' then 1 else 0 end) as real) * 100 / count(cards.name) from foreign_data inner join cards on foreign_data.uuid = cards.uuid
select distinct set_translations.language from sets inner join set_translations on sets.code = set_translations.setcode where sets.basesetsize = 309
select count(sets.code) from set_translations inner join sets on set_translations.setcode = sets.code where set_translations.language = 'Portuguese (Brasil)' and sets.block = 'Commander'
select cards.id from legalities inner join cards on legalities.uuid = cards.uuid where legalities.status = 'Legal' and cards.types = 'Creature'
select cards.types from cards inner join foreign_data on cards.uuid = foreign_data.uuid where foreign_data.language = 'German' and foreign_data.name = 'Union' and cards.subtypes is not null and cards.supertypes is not null
select count(id) from cards where power is null or power = '*'
select count(cards.id) from rulings inner join cards on rulings.uuid = cards.uuid where rulings.text = 'This is a triggered mana ability.'
select distinct cards.id from legalities inner join cards on legalities.uuid = cards.uuid where cards.artist = 'Erica Yang' and legalities.format = 'pauper' and cards.availability = 'paper'
select cards.artist from rulings inner join cards on rulings.uuid = cards.uuid where rulings.text = 'Das perfekte Gegenmittel zu einer dichten Formation.'
select foreign_data.name from cards inner join foreign_data on cards.uuid = foreign_data.uuid where cards.artist = 'Matthew D. Wilson' and foreign_data.language = 'French' and cards.layout = 'normal' and cards.bordercolor = 'black' and cards.type = 'Creature'
select count(id) from rulings where date = '2009-01-10' and text = 'rare'
select foreign_data.language from sets inner join set_translations on sets.code = set_translations.setcode inner join foreign_data on set_translations.id = foreign_data.uuid where sets.basesetsize = 180 and sets.block = 'Ravennica'
select cast(sum(case when cards.hascontentwarning = 0 then 1 else 0 end) as real) * 100 / count(cards.uuid) from legalities inner join cards on legalities.uuid = cards.uuid where legalities.format = 'commander' and legalities.status = 'legal'
select cast(sum(case when cards.power = '*' then 1 else 0 end) as real) * 100 / count(cards.id) from foreign_data inner join cards on foreign_data.uuid = cards.uuid where foreign_data.language = 'French'
sql placeholder
select printings from cards where artist = 'Daren Bader'
select count(id) from cards where bordercolor = 'borderless' and edhrecrank > 12000
select count(id) from cards where isreprint = 1 and isoversized = 1
select id from cards where promotypes = 'arenaleague' and power is null or power like '*' order by power desc limit 3
select foreign_data.language from foreign_data inner join cards on foreign_data.uuid = cards.uuid where cards.multiverseid = 149934
select id from cards order by power desc limit 3
select cast(sum(case when layout = 'normal' then 1 else 0 end) as real) * 100 / count(istextless) from cards
select uuid from cards where subtypes = 'Angel' or subtypes = 'Wizard' and side is null
select name from sets where mtgocode is null or mtgocode = '' order by name desc limit 3
select distinct set_translations.language from sets inner join set_translations on sets.code = set_translations.setcode where sets.name = 'Archenemy' and set_translations.setcode = 'ARC'
select sets.name , set_translations.translation from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.id = 5
select foreign_data.language , foreign_data.type from foreign_data inner join set_translations on foreign_data.id = set_translations.setcode where foreign_data.id = 206
sql placeholder
sql placeholder
sql placeholder
select cast(sum(case when cards.isonlineonly = 1 then 1 else 0 end) as real) * 100 / count(cards.id) from cards inner join set_translations on cards.id = set_translations.setcode inner join foreign_data on foreign_data.uuid = cards.uuid where foreign_data.language = 'Chinese Simplified'
select count(sets.code) from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Japanese' and sets.mtgocode is null or sets.mtgocode = ''
select count(id) from cards where bordercolor = 'black'
select count(id) from cards where frameeffects = 'extendedart'
select name from cards where bordercolor = 'black' and isfullart = 1
select foreign_data.language from foreign_data inner join set_translations on foreign_data.id = set_translations.id where set_translations.id = 174
select name from sets where code = 'ALL'
select language from foreign_data where name = 'A Pedra Fellwar'
select code from sets where releasedate = '2007-01-13'
select sets.basesetsize , sets.code from sets inner join set_translations on sets.code = set_translations.setcode where sets.block = 'Masques' and sets.name = 'Mirage'
select code from sets where type = 'expansion'
select foreign_data.name , cards.type from cards inner join foreign_data on cards.uuid = foreign_data.uuid where cards.watermark = 'boros'
select distinct foreign_data.language , foreign_data.flavortext , cards.type from rulings inner join cards on rulings.uuid = cards.uuid inner join foreign_data on cards.uuid = foreign_data.uuid where cards.watermark = 'colorpie'
select cast(sum(case when cards.convertedmanacost = 16 then 1 else 0 end) as real) * 100 / count(cards.id) from cards inner join sets on cards.id = sets.code where cards.name = 'Abyssal Horror'
select code from sets where type = 'expansion commander'
select foreign_data.name , cards.type from cards inner join foreign_data on cards.uuid = foreign_data.uuid inner join sets on sets.name = foreign_data.uuid where cards.watermark = 'abzan'
select distinct set_translations.language , cards.type from cards inner join set_translations on cards.id = set_translations.id inner join sets on set_translations.setcode = sets.code where cards.watermark = 'azorius'
select count(cards.cardkingdomfoilid) from cards where artist = 'Aaron Miller' and cardkingdomfoilid is not null
select count(id) from cards where availability like '%paper%' and hand = '+%'
select name from cards where istextless = 0
select convertedmanacost from cards where name = 'Ancestor''s Chosen'
select count(id) from cards where bordercolor = 'white' and power = '*'
select name from cards where ispromo = 1 and side is null
select subtypes , supertypes from cards where name = 'Molimo , Maro-Sorcerer'
select purchaseurls from cards where promotypes = 'bundle'
select count(artist) from cards where bordercolor = 'black' and availability in ('arena' ,'mtgo')
select name from cards where name in ('Serra Angel' , 'Shrine Keeper') group by name order by sum(convertedmanacost) desc limit 1
select artist from cards where flavorname = 'Battra , Dark Destroyer'
select name from cards where frameversion = '2003' order by convertedmanacost desc limit 3
select foreign_data.name from foreign_data inner join set_translations on foreign_data.id = set_translations.setcode inner join cards on foreign_data.uuid = cards.uuid where foreign_data.language = 'Italian' and cards.name = 'Ancestor''s Chosen'
select count(set_translations.translation) from cards inner join set_translations on cards.id = set_translations.setcode where cards.name = 'Angel of Mercy'
select cards.name from sets inner join set_translations on sets.code = set_translations.setcode inner join cards on sets.id = cards.uuid where set_translations.translation = 'Hauptset Zehnte Edition'
select set_translations.translation from foreign_data inner join set_translations on foreign_data.id = set_translations.setcode inner join cards on foreign_data.uuid = cards.uuid where foreign_data.name = 'Ancestor''s Chosen' and set_translations.language = 'Korean'
select count(cards.name) from cards inner join set_translations on cards.id = set_translations.setcode where set_translations.translation = 'Hauptset Zehnte Edition' and cards.artist = 'Adam Rex'
select sets.basesetsize from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Hauptset Zehnte Edition'
select set_translations.translation from cards inner join set_translations on cards.uuid = set_translations.setcode where cards.name = 'Eighth Edition'
select case when cards.name = 'Angel of Mercy' then 'NO' else 'NO' end from sets inner join cards on sets.code = cards.setcode where sets.mtgocode is not null
select sets.releasedate from sets inner join cards on sets.id = cards.uuid where cards.name = 'Ancestor''s Chosen'
select sets.type from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Hauptset Zehnte Edition'
sql placeholder
select cards.availability from cards inner join sets on cards.id = sets.id where cards.name = 'Adarkar Valkyrie' and sets.isforeignonly = 1
sql placeholder
select count(cards.id) from cards inner join sets on cards.uuid = sets.id where cards.name = 'Coldsnap' and cards.bordercolor = 'black'
select cards.name from cards inner join sets on cards.uuid = sets.id where sets.name = 'Coldsnap' order by cards.convertedmanacost desc limit 1
select cards.artist from cards inner join sets on cards.id = sets.id where cards.name = 'Coldsnap' and cards.name in ('Jeremy Jarvis' , 'Aaron Miller' , 'Chippy')
select cards.number from cards inner join sets on cards.uuid = sets.id where cards.name = 'Coldsnap' and cards.number = 4
select count(cards.name) from cards inner join sets on cards.uuid = sets.id where cards.name = 'Coldsnap' and cards.convertedmanacost > 5 and cards.power = '*'
select foreign_data.flavortext from foreign_data inner join cards on foreign_data.uuid = cards.uuid where foreign_data.name = 'Ancestor''s Chosen' and foreign_data.language = 'Italian'
select foreign_data.language from foreign_data inner join cards on foreign_data.uuid = cards.uuid where cards.name = 'Ancestor''s Chosen' and foreign_data.flavortext is not null
select foreign_data.type from foreign_data inner join cards on foreign_data.uuid = cards.uuid where foreign_data.language = 'German' and cards.name = 'Ancestor''s Chosen'
select rulings.text from foreign_data inner join rulings on foreign_data.id = rulings.uuid inner join cards on foreign_data.uuid = cards.uuid where foreign_data.language = 'Italian' and foreign_data.name = 'Coldsnap'
select foreign_data.name from foreign_data inner join set_translations on foreign_data.id = set_translations.setcode inner join cards on foreign_data.uuid = cards.uuid where foreign_data.language = 'Italian' and set_translations.translation = 'Coldsnap' order by cards.convertedmanacost desc limit 1
select rulings.date from rulings inner join cards on rulings.uuid = cards.uuid where cards.name = 'Reminisce'
select cast(sum(case when cards.convertedmanacost = 7 then 1 else 0 end) as real) * 100 / count(cards.name) from cards inner join set_translations on cards.uuid = set_translations.setcode where cards.name = 'Coldsnap'
sql placeholder
select code from sets where releasedate = '2017-07-14'
select keyrunecode from sets where code = 'PKHC'
sql placeholder
select sets.mcmname from cards inner join sets on cards.mcmid = sets.mcmid where sets.releasedate = '2017-06-09'
select type from sets where name = 'From the Vault: Lore'
select code from sets where name = 'Commander 2014 Oversized'
select rulings.text , cards.name , rulings.date from cards inner join rulings on cards.uuid = rulings.uuid where cards.artist = 'Jim Pavelec' and cards.hascontentwarning = 1
select sets.releasedate from sets inner join cards on sets.code = cards.uuid where cards.name = 'Evacuation'
select sets.basesetsize from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Rinascita di Alara'
select sets.type from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Huitième édition'
sql placeholder
select count(set_translations.translation) from sets inner join set_translations on sets.code = set_translations.setcode where sets.name = 'Salvat 2011' and set_translations.language is not null
select cards.name from foreign_data inner join sets on foreign_data.uuid = sets.code inner join set_translations on sets.code = set_translations.setcode inner join cards on cards.uuid = foreign_data.uuid where foreign_data.language = 'Japanese' and cards.name = 'Fellwar Stone'
select cards.name from cards inner join sets on cards.id = sets.code where sets.name = 'Journey into Nyx Hero''s Path' order by cards.convertedmanacost desc limit 1
select sets.releasedate from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Ola de fro'
select sets.type from cards inner join sets on cards.setcode = sets.code where cards.name = 'Samite Pilgrim' and sets.type = 'expansion'
select count(id) from cards where name = 'World Championship Decks 2004' and manacost = 3
sql placeholder
select cast(sum(case when cards.hasnonfoil = 1 then 1 else 0 end) as real) * 100 / count(cards.availability) from cards inner join set_translations on cards.id = set_translations.setcode inner join foreign_data on foreign_data.uuid = cards.uuid where foreign_data.language = 'Japanese'
select cast(sum(case when cards.isonlineonly = 1 then 1 else 0 end) as real) * 100 / count(cards.id) from cards inner join set_translations on cards.id = set_translations.setcode inner join foreign_data on cards.uuid = foreign_data.uuid where foreign_data.language = 'Portuguese (Brazil)'
select distinct printings from cards where artist = 'Aleksi Briclot' and istextless = 1
select id from sets order by basesetsize desc limit 1
select artist from cards where side is null order by convertedmanacost desc limit 1
select frameeffects from cards where cardkingdomfoilid is not null group by cardkingdomfoilid order by count(frameeffects) desc limit 1
select count(id) from cards where hasfoil = 0 and dueldeck = 'a' and power = '*'
select cards.id from sets inner join cards on sets.id = cards.uuid where sets.type = 'commander' order by sets.totalsetsize desc limit 1
select cards.name from legalities inner join cards on legalities.uuid = cards.uuid where legalities.format = 'duel' order by cards.manacost desc limit 10
select cards.originalreleasedate , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid where cards.rarity = 'mythic' and legalities.status = 'legal' order by cards.originalreleasedate asc limit 1
select count(cards.id) from foreign_data inner join cards on foreign_data.uuid = cards.uuid where cards.artist = 'Volkan Baga' and foreign_data.language = 'French'
select count(cards.uuid) from cards inner join legalities on cards.uuid = legalities.uuid where cards.name = 'Abundance' and legalities.status = 'Legal' and cards.types = 'Enchantment' and cards.rarity = 'rare'
select legalities.format , cards.name from legalities inner join cards on legalities.uuid = cards.uuid where legalities.status = 'Banned' group by legalities.format order by count(legalities.status) desc limit 1
select set_translations.language from foreign_data inner join set_translations on foreign_data.id = set_translations.setcode where foreign_data.name = 'Battlebond'
select cards.artist , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid order by cards.artist asc limit 1
select legalities.status from legalities inner join cards on legalities.uuid = cards.uuid where cards.artist = 'D. Alexander Gregory' and cards.frameversion = 1997 and legalities.format = 'legacy' and cards.hascontentwarning = 1
select cards.name , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid where cards.edhrecrank = 1 and legalities.status = 'Banned'
select cast(count(cards.id) as real) / count(distinct cards.id) , set_translations.language from cards inner join set_translations on cards.uuid = set_translations.setcode inner join sets on sets.code = set_translations.id where sets.releasedate between '2012-01-01' and '2015-12-31'
select artist from cards where bordercolor = 'black' and availability = 'arena'
select cards.uuid from legalities inner join cards on legalities.uuid = cards.uuid where legalities.format = 'oldschool' and legalities.status = 'Banned' or legalities.status = 'Restricted'
select count(id) from cards where artist = 'Matthew D. Wilson' and availability = 'paper'
select rulings.text , rulings.date from rulings inner join cards on rulings.uuid = cards.uuid where cards.artist = 'Kev Walker' order by rulings.date desc limit 1
select cards.name , legalities.format from legalities inner join cards on legalities.uuid = cards.uuid where cards.name = 'Hour of Devastation' and legalities.status = 'legal'
sql placeholder
select cards.frameversion , cards.id from cards inner join legalities on cards.uuid = legalities.uuid where cards.artist = 'Allen Williams' and legalities.status = 'Banned'
select displayname from users where displayname in ('Harlan' , 'Jarrod Dixon') order by reputation desc limit 1
select distinct displayname from users where strftime('%Y' , creationdate) = '2014'
select count(id) from users where lastaccessdate > '2014-09-01 00:00:00'
select displayname from users order by views desc limit 1
select count(id) from users where upvotes > 100 and downvotes > 1
select count(id) from users where strftime('%Y' , creationdate) > '2013' and views > 10
select count(posts.id) from posts inner join posthistory on posts.owneruserid = posthistory.userid inner join users on posts.id = posts.id where users.displayname = 'csgillespie'
select posts.title from posts inner join posthistory on posts.id = posthistory.postid inner join users on posts.owneruserid = posts.owneruserid where users.displayname = 'csgillespie'
select posts.ownerdisplayname from posts inner join posthistory on posts.id = posthistory.postid where posts.title = 'Eliciting priors from experts'
select posts.title from users inner join posts on users.id = posts.owneruserid inner join posthistory on posts.id = posthistory.postid where users.displayname = 'csgillespie' order by posts.viewcount desc limit 1
select posts.ownerdisplayname from posts inner join posthistory on posts.id = posthistory.postid order by posts.favoritecount desc limit 1
sql placeholder
select count(posts.answercount) from posts inner join posthistory on posts.id = posthistory.userid inner join users on posts.id = posts.id where users.displayname = 'csgillespie' order by posts.answercount desc limit 1
select users.displayname from posts inner join posthistory on posts.id = posthistory.postid inner join users on posthistory.userid = users.id where posts.title = 'Examples for teaching: Correlation does not mean causation'
select count(posts.parentid) from posts inner join posthistory on posts.id = posthistory.postid inner join users on posts.owneruserid = posts.owneruserid where users.displayname = 'csgillespie' and posts.parentid is null
select distinct users.displayname from posts inner join posthistory on posts.id = posthistory.postid inner join users on posthistory.userid = users.id where posts.closeddate is not null
sql placeholder
select users.location from posts inner join posthistory on posts.id = posthistory.postid inner join users on posts.owneruserid = posts.owneruserid where posts.title = 'Eliciting priors from experts'
select posts.body from posts inner join tags on posts.id = tags.excerptpostid where tags.tagname = 'bayesian'
select posts.body from tags inner join posts on tags.excerptpostid = posts.id order by tags.count desc limit 1
select count(userid) from badges inner join users on badges.userid = users.id where users.displayname = 'csgillespie'
select badges.name from badges inner join users on badges.userid = users.id where users.displayname = 'csgillespie'
select count(userid) from badges inner join users on badges.userid = users.id where strftime('%Y' , badges.date) = '2011' and users.displayname = 'csgillespie'
sql placeholder
sql placeholder
select cast(count(users.id) as real) / count(distinct users.displayname) from users inner join badges on users.id = badges.userid where users.views > 200
sql placeholder
select count(id) from votes where creationdate = '2010-07-19' and userid = 58
select creationdate from votes group by creationdate order by count(id) desc limit 1
select count(id) from badges where name = 'Revival'
select posts.title from comments inner join posts on comments.postid = posts.id order by comments.score desc limit 1
select count(posts.commentcount) from posts inner join comments on posts.id = comments.postid inner join posthistory on comments.postid = posthistory.postid where posts.viewcount = 1910
select count(posts.favoritecount) from comments inner join posts on comments.postid = posts.id inner join posthistory on comments.postid = posthistory.postid where comments.creationdate = '2014-04-23 20:29:39.0' and posthistory.userid = '3025'
select comments.text from comments inner join posts on comments.postid = posts.id where posts.parentid = 107829
select case when posts.closeddate is null then 'Yes' else 'No' end from comments inner join posts on comments.postid = posts.id where comments.userid = 23853 and comments.creationdate = '2013-07-12 09:08:18.0'
select users.reputation from users inner join posts on users.id = posts.owneruserid where posts.id = 65041
select count(posts.id) from posts inner join posthistory on posts.owneruserid = posthistory.userid inner join users on posts.id = posts.id where users.displayname = 'Tiago Pasqualini'
select distinct users.displayname from votes inner join posthistory on votes.userid = posthistory.userid inner join users on votes.userid = users.id where votes.id = 6347
select count(votes.userid) from votes inner join posts on votes.postid = posts.id where posts.title = 'Data Visualization'
select badges.name from users inner join badges on users.id = badges.userid where users.displayname = 'DatEpicCoderGuyWhoPrograms'
select cast(count(posts.id) as real) / count(distinct votes.id) from votes inner join posts on votes.postid = posts.id where posts.owneruserid = 24
select count(posts.viewcount) from posts inner join posthistory on posts.id = posthistory.postid where posts.title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
select comments.text from posts inner join comments on posts.id = comments.id where posts.score = 17
select displayname from users where websiteurl = 'http://stackoverflow.com'
select badges.name from badges inner join users on badges.userid = users.id where users.displayname = 'SilentGhost'
select distinct posthistory.userdisplayname from comments inner join posthistory on comments.userid = posthistory.userid where comments.text = 'thank you user93'
select distinct comments.text from comments inner join posthistory on comments.userid = posthistory.userid where comments.userdisplayname = 'A Lion'
select users.displayname , users.reputation from posts inner join posthistory on posts.id = posthistory.postid inner join users on posts.id = posthistory.userid where posts.title = 'Understanding what Dassault iSight is doing?'
select posthistory.comment from posts inner join posthistory on posts.id = posthistory.postid where posts.title = 'How does gentle boosting differ from AdaBoost?'
select users.displayname from badges inner join users on badges.userid = users.id where badges.name = 'Necromancer' limit 10
select posthistory.userdisplayname from posts inner join posthistory on posts.id = posthistory.postid where posts.title = 'Open source tools for visualizing multi-dimensional data?'
select posts.title from posts inner join posthistory on posts.id = posthistory.postid inner join users on posthistory.userid = users.id where users.displayname = 'Vebjorn Ljosa'
sql placeholder
select distinct posthistory.comment from comments inner join posts on comments.postid = posts.id inner join posthistory on posts.id = posthistory.postid where posts.title = 'Why square the difference instead of taking the absolute value in standard deviation?'
select sum(votes.bountyamount) from votes inner join posts on votes.postid = posts.id where posts.title = 'Data'
sql placeholder
select avg(posts.viewcount) , posts.title , comments.score from comments inner join posts on comments.postid = posts.id inner join tags on posts.id = tags.id where tags.tagname = 'humor'
select count(comments.userid) from comments inner join posthistory on comments.userid = posthistory.userid where comments.userid = 13
select id from users order by reputation desc limit 1
select id from users order by views asc limit 1
select count(id) from badges where strftime('%Y' , date) = '2011' and name = 'Supporter'
select count(id) from badges group by userid having count(distinct name) > 5
select count(users.id) from users inner join badges on users.id = badges.userid where users.location = 'New York' and badges.name = 'Supporter' and badges.name = 'Teacher'
select users.id , users.reputation from posts inner join posthistory on posts.id = posthistory.postid inner join users on posthistory.userid = users.id where posts.id = 1
select users.id from users inner join posthistory on users.id = posthistory.userid where users.views >= 1000
select badges.name from comments inner join badges on comments.userid = badges.userid group by badges.name order by count(comments.id) desc limit 1
select count(users.location) from users inner join badges on users.id = badges.userid where badges.name = 'Teacher' and users.location = 'India'
select cast((sum(case when strftime('%Y' , date) = '2010' then 1 else 0 end) - sum(case when strftime('%Y' , date) = '2011' then 1 else 0 end)) as real) * 100 / sum(case when strftime('%Y' , date) = '2011' then 1 else 0 end) from badges where name = 'Students'
sql placeholder
select posts.viewcount from posts inner join postlinks on posts.id = postlinks.relatedpostid where postlinks.postid = 61217
select posts.score , postlinks.linktypeid from posts inner join postlinks on posts.id = postlinks.postid where posts.id = 395
select distinct posts.id , posthistory.userid from comments inner join posts on comments.postid = posts.id inner join posthistory on posts.id = posthistory.postid where comments.score > 60
sql placeholder
sql placeholder
select count(id) from badges where name = 'Announcer'
select name from badges where date = '2010-07-19 19:39:08'
select count(postid) from comments where score > 60
select text from comments where creationdate = '2010-07-19 19:16:14.0'
select count(id) from comments where score = 10
select badges.name from users inner join badges on users.id = badges.userid order by users.reputation desc limit 1
select users.reputation from badges inner join users on badges.userid = users.id where badges.date = '2010-07-19 19:39:08.0'
select badges.name from badges inner join users on badges.userid = users.id where users.displayname = 'Pierre'
select distinct badges.date from badges inner join users on badges.userid = users.id where users.location = 'Rochester , NY'
select cast(sum(case when badges.name = 'Teacher' then 1 else 0 end) as real) * 100 / count(*) from badges inner join users on badges.userid = users.id
select cast(sum(case when users.age between 13 and 18 then 1 else 0 end) as real) * 100 / count(users.id) from badges inner join users on badges.userid = users.id where badges.name = 'Organizer'
select posts.score from comments inner join posts on comments.postid = posts.id where comments.creationdate = '2010-07-19 19:19:56.0'
select distinct posthistory.text from comments inner join posthistory on comments.postid = posthistory.postid where comments.creationdate = '2010-07-19 19:37:33.0'
select users.age from badges inner join users on badges.userid = users.id where users.location = 'Vienna , Austria'
select count(users.age) from badges inner join users on badges.userid = users.id where badges.name = 'Supporter' and users.age between 19 and 65
select users.views from badges inner join users on badges.userid = users.id where badges.date = '2010-07-19 19:39:08.0'
select badges.name from users inner join badges on users.id = badges.userid order by users.reputation asc limit 1
select distinct badges.name from users inner join badges on users.id = badges.userid where users.displayname = 'Sharpie'
select count(users.id) from badges inner join users on badges.userid = users.id where badges.name = 'Supporter' and users.age > 65
select displayname from users where id = 30
select count(id) from users where location = 'New York'
select count(id) from votes where strftime('%Y' , creationdate) = '2010'
select count(id) from users where age between 19 and 65
select displayname from users order by views desc limit 1
select cast(count(case when strftime('%Y' , creationdate) = '2010' then votes.id else null end) as real) / count(case when strftime('%Y' , creationdate) = '2011' then votes.id else null end) from votes
sql placeholder
select count(posts.id) from posts inner join posthistory on posts.id = posthistory.postid where posts.ownerdisplayname = 'Daniel Vassallo'
select count(votes.userid) from votes inner join users on votes.userid = users.id where users.displayname = 'Harlan'
select posts.id from posts inner join posthistory on posts.id = posthistory.postid inner join users on posthistory.userid = users.id where users.displayname = 'slashnick' order by posts.answercount desc limit 1
select posts.viewcount from users inner join posts on users.id = posts.id inner join posthistory on posts.id = posthistory.postid where users.displayname = 'Harvey Motulsky' or users.displayname = 'Noah Snyder' group by posts.viewcount order by sum(posts.viewcount) desc limit 1
select count(posts.id) from votes inner join posts on votes.postid = posts.id inner join posthistory on posts.id = posthistory.postid where posts.ownerdisplayname = 'Matt Parker' and votes.postid > 4
sql placeholder
select distinct tags.tagname from posts inner join posthistory on posts.id = posthistory.postid inner join users on posts.id = posthistory.userid inner join tags on posts.id = tags.id where users.displayname = 'Mark Meckes' and posthistory.comment = 0
select distinct users.displayname from badges inner join users on badges.userid = users.id where badges.name = 'Organizer'
select cast(sum(case when tags.tagname = 'r' then 1 else 0 end) as real) * 100 / count(tags.tagname) from posts inner join tags on posts.id = tags.id
select ( select count(posts.viewcount) from users inner join posts on users.id = posts.id where users.displayname = 'Mornington' ) - ( select count(posts.viewcount) from users inner join posts on users.id = posts.id where users.displayname = 'Amos' ) as difference
select count(id) from badges where strftime('%Y' , date) = '2014' and name = 'Commentator'
select count(id) from posthistory where creationdate between '2010-07-21 00:00:00' and '2012-07-21 23:59:59'
select displayname , age from users order by views desc limit 1
select posts.lasteditdate , posthistory.userid from posts inner join posthistory on posts.id = posthistory.postid where posts.title = 'Detecting a given face in a database of facial images'
select count(score) from comments where userid = 13
select distinct posts.title , users.displayname from comments inner join posts on comments.postid = posts.id inner join posthistory on posts.id = posthistory.postid inner join users on posts.id = users.id where comments.score > 60
select badges.name from badges inner join users on badges.userid = users.id where strftime('%Y' , badges.date) = '2011' and users.location = 'North Pole'
select users.displayname , users.websiteurl from posts inner join users on posts.id = posts.id where posts.favoritecount > 150
select count(posts.id) , posts.lasteditdate from posts inner join posthistory on posts.id = posthistory.postid where posts.title = 'What is the best introductory Bayesian statistics textbook?'
select users.lastaccessdate , users.location from badges inner join users on badges.userid = users.id where badges.name = 'outliers'
select posts.title from posts inner join posthistory on posts.id = posthistory.postid where posthistory.text = 'How to tell if something happened in a data set which monitors a value over time'
sql placeholder
select posts.ownerdisplayname from posts inner join posthistory on posts.id = posthistory.postid where posts.viewcount = ( select max(viewcount) from posts )
select distinct posts.ownerdisplayname , users.location from posts inner join tags on posts.id = tags.excerptpostid inner join users on posts.owneruserid = users.id where tags.tagname = 'hypothesis-testing'
select posts.title , postlinks.linktypeid from posts inner join posthistory on posts.id = posthistory.postid inner join postlinks on posts.id = postlinks.relatedpostid where posts.title = 'What are principal component scores?'
select parentid from posts where parentid is not null order by score desc limit 1
select users.displayname , users.websiteurl from votes inner join users on votes.userid = users.id where votes.votetypeid = 8 order by votes.bountyamount desc limit 1
select posts.title from posts inner join posthistory on posts.id = posthistory.postid order by posts.viewcount desc limit 5
select count(tagname) from tags where count between 5000 and 7000
select posts.owneruserid from posts inner join posthistory on posts.id = posthistory.postid order by posts.favoritecount desc limit 1
select age from users where reputation = ( select max(reputation) from users )
select count(id) from votes where strftime('%Y' , creationdate) = '2011' and bountyamount = 50
select id from users where age = ( select min(age) from users )
select score from posts order by viewcount desc limit 1
select cast(count(posts.id) as real) / count(distinct posts.id) from posts inner join postlinks on posts.id = postlinks.postid where strftime('%Y' , postlinks.creationdate) = '2010' and posts.answercount < 2
select posts.id from votes inner join posts on votes.postid = posts.id inner join posthistory on posts.id = posthistory.postid where votes.userid = 1465 order by posts.favoritecount desc limit 1
select title from posts order by creaiondate asc limit 1
sql placeholder
select votes.creationdate from users inner join votes on users.id = votes.userid where users.displayname = 'chl' order by votes.creationdate asc limit 1
sql placeholder
select users.displayname from badges inner join users on badges.userid = users.id where badges.name = 'Autobiographer' order by badges.date asc limit 1
select count(posts.id) from posts inner join users on posts.id = users.id where posts.favoritecount >= 4 and users.location = 'United Kingdom'
select avg(votes.postid) from votes inner join posts on votes.postid = posts.id where votes.userid = ( select max(age) from users )
select displayname from users order by reputation desc limit 1
select count(id) from users where reputation > 2000 and views > 1000
select distinct displayname from users where age between 19 and 65
sql placeholder
select posts.id , posts.title from users inner join posthistory on users.id = posthistory.userid inner join posts on posts.id = posthistory.postid where users.displayname = 'Harvey Motulsky' order by posts.viewcount desc limit 1
select posts.id , posts.title from comments inner join posts on comments.postid = posts.id where comments.score = ( select max(score) from comments )
select avg(posts.score) from comments inner join posts on comments.postid = posts.id where comments.userdisplayname = 'Stephen Turner'
sql placeholder
select posts.id , posts.ownerdisplayname from posts inner join posthistory on posts.id = posthistory.postid where strftime('%Y' , posts.creaiondate) = '2010' order by posts.favoritecount desc limit 1
sql placeholder
select cast(count(case when age between 13 and 18 then id else null end) as real) * 100 / count(id) from users
select count(posts.viewcount) , users.displayname from posts inner join posthistory on posts.id = posthistory.userid inner join users on posts.id = posthistory.userid where posthistory.text = 'Computer Game Datasets'
select count(id) from posts where viewcount > ( select avg(viewcount) from posts )
select count(comments.id) from comments inner join posts on comments.postid = posts.id order by comments.score desc limit 1
select count(posts.id) from posts inner join comments on posts.id = comments.postid where posts.viewcount > 35000 and posts.commentcount = 0
sql placeholder
select badges.name from badges inner join users on badges.userid = users.id where users.displayname = 'Emmett' order by badges.date desc limit 1
select count(id) from users where upvotes > 5000 and age between 19 and 65
select strftime('%J' , users.creationdate) - strftime('%J' , users.creationdate) from badges inner join users on badges.userid = users.id where users.displayname = 'Zolomon'
sql placeholder
sql placeholder
select count(users.id) from badges inner join users on badges.userid = users.id where badges.name = 'Citizen Patrol'
select count(posts.id) from posts inner join tags on posts.id = tags.id where tags.tagname = 'careers'
select reputation , views from users where displayname = 'Jarrod Dixon'
select count(posts.id) , posts.answercount from posts inner join comments on posts.id = comments.postid inner join posthistory on comments.postid = posthistory.postid where posts.title = 'Clustering 1D data'
select creationdate from users where displayname = 'IrishStat'
select count(postid) from votes where bountyamount >= 30
select cast(sum(case when comments.score >= 50 then 1 else 0 end) as real) * 100 / count(posts.id) from comments inner join posts on comments.postid = posts.id inner join posthistory on posts.id = posthistory.postid where posts.score = 50
select count(posts.id) from comments inner join posts on comments.postid = posts.id where comments.score < 20
select count(id) from tags where id < 15 and count < 20
select tags.excerptpostid , tags.wikipostid from posts inner join tags on posts.id = tags.excerptpostid where tags.tagname = 'sample'
select users.reputation , users.upvotes from comments inner join users on comments.userid = users.id inner join posthistory on comments.userid = posthistory.userid where comments.text = 'fine , you win :)'
select comments.text from posts inner join comments on posts.id = comments.postid where posts.title = 'How can I adapt ANOVA for binary data?'
select comments.text from posts inner join comments on posts.id = comments.id where posts.viewcount between 100 and 150 order by comments.score desc limit 1
sql placeholder
select count(posts.id) from comments inner join posts on comments.postid = posts.id where comments.score = 0 and posts.viewcount < 5
select count(posts.id) from posts inner join comments on posts.id = comments.postid where posts.commentcount = 0
select count(comments.userid) from comments inner join users on comments.userid = users.id where comments.score = 0 and users.age = 40
select posts.id , comments.userid from posts inner join comments on posts.id = comments.postid where posts.title = 'Group differences on a five point Likert item'
select users.upvotes from comments inner join users on comments.userid = users.id inner join posthistory on comments.userid = posthistory.userid where comments.text = 'R is also lazy evaluated.'
select posthistory.comment from users inner join comments on users.id = comments.userid inner join posthistory on comments.userid = posthistory.userid where users.displayname = 'Harvey Motulsky'
select distinct comments.userdisplayname from comments inner join users on comments.userid = users.id where comments.score between 1 and 5 and users.downvotes = 0
select cast(sum(case when users.upvotes between 5 and 10 then 1 else 0 end) as real) * 100 / count(comments.userid) from comments inner join users on comments.userid = users.id where comments.score between 5 and 10
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on superpower.id = hero_power.power_id where superhero.superhero_name = '3-D Man'
select count(hero_power.hero_id) from hero_power inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Super Strength'
select count(hero_power.hero_id) from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Super Strength' and superhero.height_cm > 200
select superhero.full_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id group by superhero.full_name having count(hero_power.power_id) > 15
select count(*) from superhero inner join colour on superhero.eye_colour_id = colour.id where colour.colour = 'Blue'
select colour.colour from superhero inner join colour on superhero.skin_colour_id = colour.id where superhero.superhero_name = 'Apocalypse'
sql placeholder
sql placeholder
select count(*) from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics'
select superhero.full_name from superhero inner join publisher on superhero.publisher_id = publisher.id inner join hero_power on superhero.id = hero_power.hero_id where publisher.publisher_name = 'Marvel Comics' order by superhero.height_cm desc limit 1
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.superhero_name = 'Sauron'
select count(*) from superhero inner join colour on superhero.eye_colour_id = colour.id inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics' and colour.colour = 'Blue'
select avg(height_cm) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join hero_power on superhero.id = hero_power.hero_id where publisher.publisher_name = 'Marvel Comics'
select cast(count(case when superpower.power_name = 'Super Strength' then 1 else null end) as real) * 100 / count(*) from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join publisher on superhero.publisher_id = publisher.id inner join superpower on superpower.id = superhero.id where publisher.publisher_name = 'Marvel Comics'
select count(*) from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'DC Comics'
select publisher.publisher_name from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on superhero.publisher_id = superhero.publisher_id inner join publisher on superhero.publisher_id = publisher.id where attribute.attribute_name = 'Speed' order by hero_attribute.attribute_value asc limit 1
select count(*) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join colour on superhero.eye_colour_id = colour.id where publisher.publisher_name = 'Marvel Comics' and colour.colour = 'Gold'
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.superhero_name = 'Blue Beetle II'
select count(*) from superhero inner join colour on superhero.hair_colour_id = colour.id where colour.colour = 'Blond'
select superhero.superhero_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Intelligence' order by hero_attribute.attribute_value asc limit 1
select race.race from superhero inner join race on superhero.race_id = race.id where superhero.superhero_name = 'Copycat'
select count(hero_attribute.hero_id) from hero_attribute inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Durability' and hero_attribute.attribute_value < 50
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Death Touch'
select count(hero_attribute.hero_id) from superhero inner join gender on superhero.id = gender.id inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where gender.gender = 'Female' and attribute.attribute_name = 'Strength' and hero_attribute.attribute_value = 100
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on superpower.id = superhero.id group by superhero.superhero_name order by count(superpower.power_name) desc limit 1
select count(*) from superhero inner join race on superhero.race_id = race.id where race.race = 'Vampire'
select cast(sum(case when alignment.alignment = 'Bad' then 1 else 0 end) as real) * 100 / count(*) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join alignment on superhero.alignment_id = alignment.id where publisher.publisher_name = 'Marvel Comics'
select sum(case when publisher.publisher_name = 'DC Comics' then 1 else 0 end) - sum(case when publisher.publisher_name = 'Marvel Comics' then 1 else 0 end) as diff from superhero inner join publisher on superhero.publisher_id = publisher.id
select publisher.id from publisher inner join superhero on publisher.id = superhero.publisher_id where publisher.publisher_name = 'Star Trek'
sql placeholder
select count(full_name) from superhero where full_name is null
select superhero.eye_colour_id from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.id = 75
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on superpower.id = hero_power.power_id where superhero.superhero_name = 'Deathlok'
select avg(superhero.weight_kg) from superhero inner join gender on superhero.gender_id = gender.id where gender.gender = 'Female'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.power_id inner join gender on superhero.gender_id = gender.id inner join superpower on hero_power.power_id = superpower.id where gender.gender = 'Male' limit 5
select superhero.superhero_name from superhero inner join race on superhero.race_id = race.id where race.race = 'Alien'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id where superhero.eye_colour_id = 1 and superhero.height_cm between 170 and 190
select superpower.power_name from hero_power inner join superpower on hero_power.power_id = superpower.id where hero_power.hero_id = 56
select superhero.full_name from superhero inner join race on superhero.race_id = race.id where race.race = 'Demi-God' limit 5
select count(*) from superhero inner join alignment on superhero.alignment_id = alignment.id where alignment.alignment = 'Bad'
select race.race from superhero inner join race on superhero.race_id = race.id where superhero.weight_kg = 169
select colour.colour from superhero inner join colour on superhero.hair_colour_id = colour.id inner join race on superhero.race_id = race.id where race.race = 'Human' and superhero.height_cm = 185
select superhero.eye_colour_id from superhero inner join colour on superhero.eye_colour_id = colour.id order by superhero.weight_kg desc limit 1
select cast(count(case when superhero.publisher_id = 13 then 1 else null end) as real) * 100 / count(hero_power.hero_id) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join hero_power on superhero.id = hero_power.hero_id where superhero.height_cm between 150 and 180 and publisher.publisher_name = 'Marvel Comics'
select superhero.full_name from superhero inner join gender on superhero.gender_id = gender.id inner join hero_power on superhero.id = hero_power.hero_id where gender.gender = 'Male' and superhero.weight_kg * 100 > ( select avg(weight_kg) * 0.9 from superhero )
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.power_id inner join superpower on superpower.id = hero_power.power_id group by superpower.power_name order by count(superpower.power_name) desc limit 1
select hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where superhero.superhero_name = 'Abomination'
select superpower.power_name from hero_power inner join superpower on hero_power.power_id = superpower.id where hero_power.hero_id = 1
select count(hero_power.hero_id) from hero_power inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Stealth'
select superhero.full_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Strength' order by hero_attribute.attribute_value desc limit 1
select cast(count(superhero.id) as real) / count(distinct superhero.skin_colour_id) from superhero inner join colour on superhero.skin_colour_id = colour.id where colour.id = 1
select count(*) from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Dark Horse Comics'
select superhero.superhero_name from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on hero_attribute.hero_id = superhero.id inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Dark Horse Comics' and attribute.attribute_name = 'durability' order by hero_attribute.attribute_value desc limit 1
select colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.full_name = 'Abraham Sapien'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Flight'
select superhero.eye_colour_id , superhero.hair_colour_id , superhero.skin_colour_id from superhero inner join publisher on superhero.publisher_id = publisher.id inner join colour on superhero.skin_colour_id = colour.id inner join gender on superhero.gender_id = gender.id where gender.gender = 'Female' and publisher.publisher_name = 'Dark Horse Comics'
select superhero.superhero_name , publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id inner join hero_power on superhero.id = hero_power.hero_id where superhero.eye_colour_id = superhero.eye_colour_id and superhero.hair_colour_id = superhero.skin_colour_id
select race.race from superhero inner join race on superhero.race_id = race.id where superhero.superhero_name = 'A-Bomb'
select cast(sum(case when gender.gender = 'Female' then 1 else 0 end) as real) * 100 / count(*) from superhero inner join gender on superhero.gender_id = gender.id
select superhero.superhero_name , race.race from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join race on race.id = superhero.race_id where superhero.full_name = 'Charles Chandler'
select gender.gender from superhero inner join gender on superhero.gender_id = gender.id where superhero.superhero_name = 'Agent 13'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on superpower.id = hero_power.power_id where superpower.power_name = 'Adaptation'
select count(hero_power.power_id) from hero_power inner join superhero on hero_power.hero_id = superhero.id where superhero.superhero_name = 'Amazo'
sql placeholder
select superhero.height_cm from superhero inner join colour on superhero.eye_colour_id = colour.id where colour.colour = 'Amber'
select superhero.superhero_name from superhero inner join colour on superhero.eye_colour_id = colour.id inner join hero_power on superhero.id = hero_power.hero_id where colour.colour = 'Black'
select superhero.eye_colour_id from superhero inner join colour on superhero.eye_colour_id = colour.id where colour.colour = 'Gold'
select superhero.full_name from superhero inner join race on superhero.race_id = race.id where race.race = 'Vampire'
select superhero.superhero_name from superhero inner join alignment on superhero.alignment_id = alignment.id where alignment.alignment = 'Neutral'
select count(hero_attribute.hero_id) from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on hero_attribute.hero_id = superhero.id where attribute.attribute_name = 'Strength' order by hero_attribute.attribute_value desc limit 1
select race.race , alignment.alignment from superhero inner join race on superhero.race_id = race.id inner join alignment on superhero.alignment_id = alignment.id where superhero.superhero_name = 'Cameron Hicks'
select cast(sum(case when gender.gender = 'Female' then 1 else 0 end) as real) * 100 / count(*) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join gender on superhero.gender_id = gender.id where publisher.publisher_name = 'Marvel Comics'
select avg(superhero.weight_kg) from superhero inner join race on superhero.race_id = race.id where race.race = 'Alien'
select sum(iif(full_name = 'Emil Blonsky' , weight_kg , 0)) - sum(iif(full_name = 'Charles Chandler' , weight_kg , 0)) as diff from superhero
sql placeholder
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = 'Abomination'
select count(*) from superhero inner join gender on superhero.gender_id = gender.id inner join race on race.id = superhero.race_id where gender.gender = 'Male' and race.race = 'god/eternal' and superhero.id = 21
select superhero.superhero_name from hero_attribute inner join superhero on hero_attribute.hero_id = superhero.id inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Speed' order by hero_attribute.attribute_value desc limit 1
select count(*) from superhero inner join alignment on superhero.alignment_id = alignment.id where alignment.alignment = 'Neutral'
select attribute.attribute_name , hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on attribute.id = hero_attribute.attribute_id where superhero.superhero_name = '3-D Man'
select superhero.superhero_name from superhero inner join colour on superhero.eye_colour_id = colour.id inner join hero_power on superhero.id = hero_power.hero_id where colour.colour = 'Brown' and superhero.eye_colour_id = 7
sql placeholder
select count(*) from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.publisher_id = 1
sql placeholder
select cast(sum(case when gender.gender = 'Male' then 1 else 0 end) as real) / sum(case when gender.gender = 'Female' then 1 else 0 end) from superhero inner join gender on superhero.gender_id = gender.id
select superhero_name from superhero order by height_cm desc limit 1
select id from superpower where power_name = 'Cryokinesis'
select superhero_name from superhero where id = 294
select full_name from superhero where weight_kg is null or weight_kg = 0
select colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.full_name = 'Karen Beecher-Duncan'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.full_name = 'Hillary Parr'
select race.race from superhero inner join race on superhero.race_id = race.id inner join gender on race.id = gender.id where superhero.weight_kg = 108 and superhero.height_cm = 188
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.id = 38
select race.race from hero_attribute inner join superhero on hero_attribute.hero_id = superhero.id inner join race on superhero.race_id = race.id inner join attribute on hero_attribute.attribute_id = attribute.id order by hero_attribute.attribute_value desc limit 1
select alignment.alignment , superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join alignment on alignment.id = superhero.alignment_id inner join superpower on superhero.id = superpower.id where superhero.superhero_name = 'Atom IV'
select superhero.full_name from superhero inner join colour on superhero.eye_colour_id = colour.id where colour.colour = 'Blue' limit 5
sql placeholder
select superhero.skin_colour_id from superhero inner join hero_attribute on superhero.id = hero_attribute.attribute_id inner join colour on superhero.skin_colour_id = colour.id where hero_attribute.attribute_value = 100
sql placeholder
select superhero.superhero_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where hero_attribute.attribute_value between 75 and 80
select race.race from superhero inner join colour on superhero.hair_colour_id = colour.id inner join race on race.id = superhero.race_id inner join gender on superhero.gender_id = gender.id where gender.gender = 'Male' and colour.colour = 'blue'
select cast(count(case when gender.id = 2 then 1 else null end) as real) * 100 / count(*) from superhero inner join gender on superhero.gender_id = gender.id inner join alignment on superhero.alignment_id = alignment.id where gender.gender = 'Female'
select sum(case when colour.id = 7 then 1 else 0 end) - sum(case when colour.id = 1 then 1 else 0 end) as diff from superhero inner join colour on superhero.eye_colour_id = colour.id
select hero_attribute.attribute_value from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on hero_attribute.hero_id = superhero.id where superhero.superhero_name = 'Hulk' and attribute.attribute_name = 'Strength'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on superpower.id = hero_power.power_id where superhero.superhero_name = 'Ajax'
select count(*) from superhero inner join colour on superhero.skin_colour_id = colour.id where superhero.alignment_id = 'Bad' and colour.colour = 'Green'
select count(*) from superhero inner join gender on superhero.gender_id = gender.id inner join publisher on superhero.publisher_id = publisher.id where gender.gender = 'Female' and publisher.publisher_name = 'Marvel Comics'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Wind Control' order by superhero.superhero_name asc
select gender.gender from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join gender on superhero.gender_id = gender.id inner join superpower on superhero.id = superpower.id where superpower.power_name = 'Phoenix Force'
select superhero.superhero_name from superhero inner join publisher on superhero.publisher_id = publisher.id inner join hero_power on superhero.id = hero_power.hero_id where publisher.publisher_name = 'DC Comics' order by superhero.weight_kg desc limit 1
sql placeholder
select count(hero_attribute.hero_id) from hero_attribute inner join attribute on hero_attribute.attribute_id = attribute.id inner join superhero on superhero.id = hero_attribute.hero_id where attribute.attribute_name = 'Speed' and hero_attribute.attribute_value = 100
select sum(case when publisher.publisher_name = 'DC Comics' then 1 else 0 end) - sum(case when publisher.publisher_name = 'Marvel Comics' then 1 else 0 end) as diff from superhero inner join publisher on superhero.publisher_id = publisher.id
select attribute.attribute_name from superhero inner join hero_attribute on superhero.id = hero_attribute.attribute_id inner join attribute on attribute.id = hero_attribute.attribute_id where superhero.superhero_name = 'Black Panther' order by hero_attribute.attribute_value asc limit 1
select colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.superhero_name = 'Abomination'
select full_name from superhero order by height_cm desc limit 1
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id where superhero.full_name = 'Charles Chandler'
select cast(count(case when gender.gender = 'Female' then 1 else null end) as real) * 100 / count(*) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join gender on superhero.gender_id = gender.id where publisher.publisher_name = 'George Lucas'
select cast(count(case when alignment.alignment = 'Good' then 1 else null end) as real) * 100 / count(*) from superhero inner join alignment on superhero.alignment_id = alignment.id inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics'
select count(*) from superhero where full_name like 'John%'
select hero_attribute.hero_id from hero_attribute inner join superhero on hero_attribute.hero_id = superhero.id inner join attribute on hero_attribute.attribute_id = attribute.id order by hero_attribute.attribute_value asc limit 1
select superhero.full_name from superhero inner join race on superhero.race_id = race.id inner join hero_power on superhero.id = hero_power.hero_id where superhero.superhero_name = 'Alien'
select superhero.full_name from superhero inner join colour on superhero.eye_colour_id = colour.id inner join superpower on superhero.id = superpower.id where superhero.weight_kg < 100 and colour.colour = 'Brown'
select hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where superhero.superhero_name = 'Aquababy'
select superhero.weight_kg , race.race from superhero inner join race on superhero.race_id = race.id where superhero.id = 40
sql placeholder
select superhero.id from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Intelligence'
select colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.superhero_name = 'Blackwulf'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.power_id inner join superpower on superpower.id = hero_power.power_id where superhero.height_cm > ( select avg(height_cm) * 0.8 from superhero )
select drivers.driverref from qualifying inner join drivers on qualifying.driverid = drivers.driverid where qualifying.raceid = 18 order by qualifying.q1 desc limit 5
select drivers.surname from laptimes inner join qualifying on laptimes.driverid = qualifying.driverid inner join drivers on drivers.driverid = qualifying.driverid where laptimes.raceid = 19 order by qualifying.q2 asc limit 1
select distinct races.year from races inner join circuits on races.circuitid = circuits.circuitid inner join seasons on races.year = seasons.year where circuits.location = 'Shanghai'
select races.url from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Circuit de Barcelona-Catalunya'
select races.name from circuits inner join races on circuits.circuitid = races.circuitid where circuits.country = 'Germany'
sql placeholder
select count(races.name) from races inner join circuits on races.circuitid = circuits.circuitid where races.year = 2010 and circuits.country in ('Asia' , 'Europe')
select races.name from circuits inner join races on circuits.circuitid = races.circuitid where circuits.country = 'Spain'
select circuits.location from circuits inner join races on circuits.circuitid = races.circuitid where races.name = 'Australian Grand Prix'
select races.url from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Sepang International Circuit'
select races.time from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Sepang International Circuit'
select results.position from races inner join circuits on races.circuitid = circuits.circuitid inner join results on races.raceid = results.raceid where races.name = 'Abu Dhabi Grand Prix'
sql placeholder
select results.resultid from drivers inner join qualifying on drivers.driverid = qualifying.driverid inner join results on results.driverid = qualifying.driverid where drivers.forename = 'Bruno' and drivers.surname = 'Senna' and qualifying.raceid = 354
sql placeholder
sql placeholder
select count(drivers.driverid) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Bahrain Grand Prix' and races.year = 2007
select seasons.year from races inner join seasons on races.raceid = seasons.year where races.raceid = 901
select count(drivers.driverid) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.date = '2015-11-29'
select drivers.dob from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.raceid = 592 order by races.time asc limit 1
select drivers.surname , drivers.url from laptimes inner join drivers on laptimes.driverid = drivers.driverid inner join results on laptimes.raceid = results.raceid where laptimes.raceid = '161' and laptimes.time = '0:01:27'
select drivers.surname from laptimes inner join drivers on laptimes.driverid = drivers.driverid inner join results on results.driverid = drivers.driverid where results.raceid = 933 order by results.fastestlapspeed desc limit 1
select circuits.location from circuits inner join races on circuits.circuitid = races.circuitid where races.name = 'Malaysian Grand Prix'
sql placeholder
select distinct results.resultid from drivers inner join qualifying on drivers.driverid = qualifying.driverid inner join results on results.raceid = qualifying.raceid where drivers.surname = 'Lucas' and drivers.forename = 'di Grassi' and results.raceid = 345 and qualifying.q1 = 1
sql placeholder
sql placeholder
select laptimes.time from laptimes inner join drivers on laptimes.driverid = drivers.driverid inner join results on laptimes.raceid = results.raceid where drivers.forename = 'Bruce' and drivers.surname = 'McLaren' and laptimes.raceid = 743
sql placeholder
select seasons.year from races inner join seasons on races.raceid = seasons.year where races.raceid = 901
select count(drivers.driverid) from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where races.year = '2015-11-29'
select drivers.driverid from laptimes inner join drivers on laptimes.driverid = drivers.driverid inner join races on laptimes.raceid = races.raceid where laptimes.raceid = 872 order by drivers.dob desc limit 1
select drivers.surname from laptimes inner join drivers on laptimes.driverid = drivers.driverid inner join results on laptimes.raceid = results.raceid where results.raceid = 348 order by laptimes.time asc limit 1
select drivers.nationality from laptimes inner join drivers on laptimes.driverid = drivers.driverid inner join results on laptimes.raceid = results.raceid where results.fastestlapspeed = '348' order by results.fastestlapspeed desc limit 1
select cast((strftime('%J' , results.fastestlapspeed) - strftime('%J' , results.raceid)) as real) * 100 / strftime('%J' , results.raceid) from results inner join races on results.raceid = races.raceid inner join drivers on results.driverid = drivers.driverid where drivers.forename = 'Paul' and drivers.surname = 'Di Resta' and drivers.surname = 'Paul'
select cast(sum(case when races.time = '1983-07-16' then 1 else 0 end) as real) * 100 / count(races.raceid) from races inner join results on races.raceid = results.raceid inner join laptimes on races.raceid = laptimes.raceid where races.date = '1983-07-16'
select year from races where name = 'Singapore Grand Prix' order by year asc limit 1
select count(name) from races where strftime('%Y' , date) = '2005' order by name desc
select name , name from races where year = ( select min(date) from races ) and year = ( select min(date) from races )
select name , date from races where year = 1999 order by round desc limit 1
select strftime('%Y' , round) from races group by strftime('%Y' , round) order by count(raceid) desc limit 1
select name from races where substr(year , 1 , 4) = '2017' and substr(year , 1 , 4) = '2017'
select circuits.country , circuits.location from races inner join circuits on races.circuitid = circuits.circuitid where races.name = 'European Grand Prix' order by races.year asc limit 1
select seasons.year from races inner join circuits on races.circuitid = circuits.circuitid inner join seasons on races.year = seasons.year where circuits.name = 'Brands Hatch' order by seasons.year desc limit 1
select count(seasons.year) from races inner join circuits on races.circuitid = circuits.circuitid inner join seasons on races.year = seasons.year where circuits.name = 'Silverstone Circuit' and races.name = 'United Kindom'
select distinct drivers.forename from races inner join driverstandings on races.raceid = driverstandings.raceid inner join results on driverstandings.driverid = results.driverid inner join drivers on drivers.driverid = results.driverid where races.name = 'Singapore Grand Prix' and results.positionorder = '%2010'
select drivers.forename , drivers.surname from results inner join drivers on results.driverid = drivers.driverid where results.points = ( select max(points) from driverstandings )
sql placeholder
select laptimes.time , drivers.driverid , races.name from laptimes inner join races on laptimes.raceid = races.raceid inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid order by laptimes.time asc limit 1
select avg(laptimes.time) from races inner join laptimes on races.raceid = laptimes.raceid inner join drivers on drivers.driverid = laptimes.driverid where drivers.forename = 'Sebastian' and drivers.surname = 'Vettel' and races.name = 'Chinese Grand Prix' and races.year = 2009
sql placeholder
sql placeholder
select 2022 , surname from drivers where nationality = 'Japanese' order by dob desc limit 1
select circuits.name from races inner join circuits on races.circuitid = circuits.circuitid where strftime('%Y' , races.date) between '1990' and '2000' limit 4
select circuits.name , circuits.location , races.name from races inner join circuits on races.circuitid = circuits.circuitid where races.year = 2006 and circuits.country = 'USA'
select races.name , circuits.name , circuits.location from circuits inner join races on circuits.circuitid = races.circuitid where strftime('%Y' , races.date) = '2005'
select races.name from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.surname = 'Alex' and drivers.driverref = 'yoong' and results.position < 10
sql placeholder
select races.name , races.year from laptimes inner join races on laptimes.raceid = races.raceid inner join drivers on drivers.driverid = laptimes.driverid inner join results on races.raceid = results.raceid where drivers.forename = 'Michael' order by laptimes.milliseconds asc limit 1
select avg(driverstandings.points) from races inner join driverstandings on races.raceid = driverstandings.raceid inner join drivers on driverstandings.driverid = drivers.driverid where drivers.forename = 'Edward' and races.year = 2000
select races.name , results.points from drivers inner join results on drivers.driverid = results.driverid inner join races on races.raceid = results.raceid where drivers.surname = 'Lewis' and drivers.driverref = 'hamilton' order by races.year asc limit 1
select races.name , circuits.country from races inner join circuits on races.circuitid = circuits.circuitid where strftime('%Y' , races.year) = '2017' order by races.date desc
select races.name , races.year , circuits.location from results inner join races on results.raceid = races.raceid inner join circuits on races.circuitid = circuits.circuitid group by races.name , races.year , circuits.location order by results.laps desc limit 1
select cast(sum(case when circuits.country = 'Europearn Grand Prix' then 1 else 0 end) as real) * 100 / count(races.name) from races inner join circuits on races.circuitid = circuits.circuitid where races.name = 'Europearn Grand Prix'
select lat , lng from circuits where name = 'Silverstone'
sql placeholder
select circuitref from circuits where name = 'Marina Bay Street Circuit'
select country from circuits where alt = ( select max(alt) from circuits )
select count(driverid) from drivers where code is null
select nationality from drivers order by dob asc limit 1
select surname from drivers where nationality = 'italian'
select url from drivers where surname = 'Davidson'
select driverref from drivers where surname = 'Hamilton' and forename = 'Lewis'
select circuits.name from races inner join circuits on races.circuitid = circuits.circuitid where races.name = 'Spanish Grand Prix' and races.year = 2009
select distinct races.year from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Silverstone Circuit'
select races.url from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Silverstone Circuit' and circuits.location = 'Silverstone'
select races.time from races inner join circuits on races.circuitid = circuits.circuitid where circuits.location = 'Abu Dhabi' and races.year = 2010
select count(races.raceid) from races inner join circuits on races.circuitid = circuits.circuitid where circuits.country = 'Italy'
select races.date from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Barcelona-Catalunya'
select circuits.url from circuits inner join races on circuits.circuitid = races.circuitid where races.name = 'Spanish Grand Prix' and races.year = 2009
select min(results.fastestlaptime) from results inner join drivers on results.driverid = drivers.driverid inner join laptimes on results.raceid = laptimes.raceid where drivers.surname = 'Lewis' and drivers.forename = 'Hamilton'
select drivers.forename , drivers.surname from laptimes inner join drivers on laptimes.driverid = drivers.driverid inner join results on laptimes.raceid = results.raceid where results.fastestlapspeed = 0 order by laptimes.lap desc limit 1
select drivers.driverref from races inner join results on races.raceid = results.raceid inner join drivers on drivers.driverid = results.driverid where races.name = 'Australian Grand Prix' and races.year = '2008' order by results.rank desc limit 1
select races.name from races inner join driverstandings on races.raceid = driverstandings.raceid inner join drivers on driverstandings.driverid = drivers.driverid where drivers.surname = 'Lewis' and drivers.forename = 'Hamilton'
select races.name from results inner join races on results.raceid = races.raceid inner join drivers on drivers.driverid = results.driverid where drivers.surname = 'Hamilton' and drivers.forename = 'Lewis' order by results.rank asc limit 1
select max(results.fastestlapspeed) from races inner join laptimes on races.raceid = laptimes.raceid inner join results on races.raceid = results.raceid inner join drivers on drivers.driverid = results.driverid where races.name = 'Spanish Grand Prix' and races.year = 2009
select distinct races.year from races inner join drivers on races.raceid = drivers.driverid where drivers.surname = 'Hamilton' and drivers.forename = 'Lewis'
sql placeholder
select drivers.forename , drivers.surname from results inner join drivers on results.driverid = drivers.driverid inner join races on results.raceid = races.raceid where races.name = 'Australian Grand Prix' and results.grid = 4
select count(drivers.number) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and races.year = 2008 and results.time is not null
select results.fastestlap from races inner join laptimes on races.raceid = laptimes.raceid inner join drivers on drivers.driverid = laptimes.driverid inner join results on races.raceid = results.raceid where races.name = 'Australian Grand Prix' and drivers.surname = 'Lewis' and drivers.forename = 'Hamilton'
select results.time from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and results.rank = 2 and races.year = '2008'
sql placeholder
select count(drivers.driverid) from races inner join driverstandings on races.raceid = driverstandings.raceid inner join drivers on driverstandings.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and drivers.nationality = 'American'
select count(distinct laptimes.driverid) from laptimes inner join races on laptimes.raceid = races.raceid inner join results on races.raceid = results.raceid where races.name = 'Australian Grand Prix' and laptimes.time > 0
select sum(driverstandings.points) from results inner join drivers on results.driverid = drivers.driverid inner join driverstandings on results.driverid = driverstandings.driverid where drivers.surname = 'Lewis' and drivers.forename = 'Hamilton'
select avg(results.fastestlaptime) from results inner join drivers on results.driverid = drivers.driverid inner join laptimes on results.raceid = laptimes.raceid where drivers.surname = 'Lewis' and drivers.driverref = 'hamilton'
select cast(sum(case when laptimes.time is not null then 1 else 0 end) as real) * 100 / count(races.raceid) from laptimes inner join races on laptimes.raceid = races.raceid inner join drivers on laptimes.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and races.year = 2008
select cast((sum(case when races.name = 'Australian Grand Prix' then results.time else 0 end) - sum(case when races.name = 'Australian Grand Prix' then results.time else 0 end)) as real) * 100 / sum(case when races.name = 'Australian Grand Prix' then results.time else 0 end) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.year = '2008'
select count(name) from circuits where location = 'Melbourne' and country = 'Australia'
select location from circuits where country = 'USA'
select count(driverid) from drivers where strftime('%Y' , dob) > '1980' and nationality = 'British'
select avg(constructorstandings.points) from results inner join constructorstandings on results.constructorid = constructorstandings.constructorid inner join constructors on constructors.constructorid = constructors.constructorid where constructors.nationality = 'British'
select constructors.name from results inner join constructorstandings on results.constructorid = constructorstandings.constructorid inner join constructors on constructorstandings.constructorid = constructors.constructorid order by results.points desc limit 1
sql placeholder
sql placeholder
select constructors.name from results inner join constructors on results.constructorid = constructors.constructorid where results.rank = 1
select count(constructors.name) from results inner join constructors on results.constructorid = constructors.constructorid where constructors.nationality = 'France' and results.laps > 50
select cast(sum(case when races.time is not null then 1 else 0 end) as real) * 100 / count(races.raceid) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.nationality = 'Japanese' and races.year between 2007 and 2009
select cast(sum(races.time) as real) / count(races.raceid) from races inner join results on races.raceid = results.raceid where races.year = 2000 and races.raceid is not null
select drivers.forename , drivers.surname from results inner join drivers on results.driverid = drivers.driverid where results.rank = 2 and strftime('%Y' , drivers.dob) > '1975'
select count(distinct drivers.driverid) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.nationality = 'Italian' and races.time is null
select drivers.forename , drivers.surname from laptimes inner join results on laptimes.driverid = results.driverid inner join drivers on drivers.driverid = results.driverid order by laptimes.lap desc limit 1
select laptimes.lap from laptimes inner join races on laptimes.raceid = races.raceid where races.year = 2009 order by laptimes.time desc limit 1
select avg(results.fastestlapspeed) from races inner join results on races.raceid = results.raceid where races.name = 'Spanish Grand Prix' and races.year = 2009
select races.name , races.year from results inner join races on results.raceid = races.raceid order by results.milliseconds asc limit 1
sql placeholder
select count(drivers.driverid) from laptimes inner join drivers on laptimes.driverid = drivers.driverid where drivers.nationality = 'France' and laptimes.milliseconds < 120
select code from drivers where nationality = 'America'
select count(raceid) from races where strftime('%Y' , date) = '2009'
select count(drivers.number) from results inner join drivers on results.driverid = drivers.driverid where results.raceid = 18
select drivers.code , drivers.dob from drivers inner join results on drivers.driverid = results.driverid order by drivers.dob desc limit 3
select driverref from drivers where surname = 'Kubica'
select count(driverid) from drivers where strftime('%Y' , dob) = '1980' and nationality = 'Australian'
select drivers.driverid from laptimes inner join drivers on laptimes.driverid = drivers.driverid where strftime('%Y' , laptimes.time) between '1980' and '1990' order by laptimes.time asc limit 3
select driverref from drivers where nationality = 'German' order by dob asc limit 1
select drivers.driverid , drivers.code from laptimes inner join drivers on laptimes.driverid = drivers.driverid inner join races on laptimes.raceid = races.raceid where strftime('%Y' , drivers.dob) = '1971' order by laptimes.time desc limit 1
select drivers.driverid from laptimes inner join drivers on laptimes.driverid = drivers.driverid where drivers.nationality = 'Spanish' and drivers.dob < 1982 order by laptimes.time desc limit 10
sql placeholder
select races.year from races inner join laptimes on races.raceid = laptimes.raceid order by laptimes.time desc limit 1
select drivers.driverid from laptimes inner join drivers on laptimes.driverid = drivers.driverid order by laptimes.time asc limit 5
select count(distinct results.statusid) from laptimes inner join races on laptimes.raceid = races.raceid inner join results on races.raceid = results.raceid where races.raceid between 50 and 100 and results.statusid = 2 and laptimes.time != null
select count(circuitid) , location , lng from circuits where country = 'Austria'
select races.raceid from races inner join results on races.raceid = results.raceid where results.time is not null group by races.raceid order by count(races.raceid) desc limit 1
select drivers.driverref , drivers.nationality , drivers.dob from qualifying inner join drivers on qualifying.driverid = drivers.driverid where qualifying.raceid = 23 and qualifying.q2 is not null
select races.year , races.date , races.time from races inner join qualifying on races.raceid = qualifying.raceid inner join drivers on drivers.driverid = qualifying.driverid order by drivers.dob desc limit 1
select count(drivers.driverid) from results inner join drivers on results.driverid = drivers.driverid inner join status on results.statusid = status.statusid where status.status = 2 and drivers.nationality = 'American'
select constructors.name , constructors.url from results inner join constructorstandings on results.constructorid = constructorstandings.constructorid inner join constructors on constructorstandings.constructorid = constructors.constructorid where constructors.nationality = 'Italian' order by results.points desc limit 1
select constructors.url from results inner join constructorstandings on results.constructorid = constructorstandings.constructorid inner join constructors on constructors.constructorid = constructorstandings.constructorid order by constructorstandings.wins desc limit 1
select drivers.forename from laptimes inner join drivers on laptimes.driverid = drivers.driverid inner join races on laptimes.raceid = races.raceid where races.name = 'French Grand Prix' order by laptimes.time desc limit 1
select races.name , laptimes.milliseconds from laptimes inner join races on laptimes.raceid = races.raceid where laptimes.time = ( select min(time) from laptimes )
sql placeholder
select drivers.driverid from pitstops inner join drivers on pitstops.driverid = drivers.driverid where drivers.nationality = 'German' and drivers.dob >= 1980 group by drivers.driverid order by avg(pitstops.duration) desc limit 5
select laptimes.time , laptimes.milliseconds from laptimes inner join races on laptimes.raceid = races.raceid where races.name = 'Canadian Grand Prix' and races.year = '2008'
select results.constructorid , races.url from races inner join results on races.raceid = results.raceid where races.name = 'Singapore Grand Prix' and results.time = 'minutes: seconds.millionsecond' order by results.time desc limit 1
select forename , surname , dob from drivers where strftime('%Y' , dob) between '1981' and '1991' and nationality = 'Austrianian'
select forename , surname , dob from drivers where strftime('%Y' , dob) between '1971' and '1985' and nationality = 'German' order by dob desc
select location , lat , lng from circuits where name = 'Hungaroring'
select distinct results.points , constructors.name , constructors.nationality from races inner join results on races.raceid = results.raceid inner join constructorresults on results.constructorid = constructorresults.raceid inner join constructors on constructorresults.constructorid = constructorresults.constructorid where races.year between 1980 and 2010 and races.name = 'Monegassa Grand Prix'
sql placeholder
select cast(sum(case when date between '2000-01-01' and '2010-12-31' then 1 else 0 end) as real) / count(raceid) from races
select nationality from drivers group by nationality order by count(nationality) desc limit 1
select driverstandings.wins from results inner join driverstandings on results.driverid = driverstandings.driverid where results.rank = '91' order by driverstandings.points asc limit 1
sql placeholder
select circuits.location , circuits.country from races inner join circuits on races.circuitid = circuits.circuitid where races.date = ( select max(date) from races )
sql placeholder
select forename , surname , nationality from drivers where dob = ( select max(dob) from drivers )
select count(status.statusid) from races inner join results on races.raceid = results.raceid inner join drivers on drivers.driverid = results.driverid inner join status on results.statusid = status.statusid where races.name = 'Canadian Grand Prix' and races.name = 'Canadian Grand Prix' group by drivers.driverid , drivers.number order by count(status.statusid) desc limit 1
select driverstandings.wins , drivers.forename , drivers.surname from results inner join drivers on results.driverid = drivers.driverid inner join driverstandings on results.driverid = drivers.driverid order by drivers.dob asc limit 1
select max(pitstops.duration) from pitstops inner join drivers on pitstops.driverid = drivers.driverid where drivers.forename = 'Driver'
select time from results where fastestlap = ( select max(fastestlaptime) from results )
select pitstops.time from pitstops inner join drivers on pitstops.driverid = drivers.driverid where drivers.surname = 'Hamilton' and drivers.forename = 'Lewis' order by pitstops.duration desc limit 1
select pitstops.lap from races inner join pitstops on races.raceid = pitstops.raceid inner join drivers on drivers.driverid = pitstops.driverid where races.name = 'Australian Grand Prix' and drivers.surname = 'Lewis'
select pitstops.duration from races inner join pitstops on races.raceid = pitstops.raceid inner join drivers on drivers.driverid = pitstops.driverid where races.name = 'Australian Grand Prix' and races.year = 2011
select laptimes.lap from laptimes inner join drivers on laptimes.driverid = drivers.driverid where drivers.surname = 'Lewis' and drivers.forename = 'Hamilton'
select drivers.surname from laptimes inner join drivers on laptimes.driverid = drivers.driverid where laptimes.time = ( select min(time) from laptimes )
select laptimes.position from races inner join laptimes on races.raceid = laptimes.raceid inner join drivers on drivers.driverid = laptimes.driverid where drivers.surname = 'Hamilton' and drivers.forename = 'Lewis' order by laptimes.time asc limit 1
select laptimes.lap from laptimes inner join races on laptimes.raceid = races.raceid inner join circuits on circuits.circuitid = races.circuitid where races.name = 'Austria Grand Prix'
sql placeholder
select laptimes.time from laptimes inner join races on laptimes.raceid = races.raceid inner join circuits on races.circuitid = circuits.circuitid where races.name = 'Austria Grand Prix'
select pitstops.duration from laptimes inner join races on laptimes.raceid = races.raceid inner join pitstops on races.raceid = pitstops.raceid where races.name = 'Austrian Grand Prix' and laptimes.time = 'fastest laptime'
sql placeholder
select avg(pitstops.milliseconds) from pitstops inner join drivers on pitstops.driverid = drivers.driverid inner join results on pitstops.raceid = results.raceid where drivers.surname = 'Lewis' and drivers.driverref = 'hamilton'
sql placeholder
select player.player_api_id from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id order by player_attributes.overall_rating desc limit 1
select max(height) , player_name from player order by height desc limit 1
select player_attributes.preferred_foot from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id order by player_attributes.potential asc limit 1
select count(player_attributes.id) from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.defensive_work_rate = 'low' and player_attributes.overall_rating between 60 and 65
select player.player_name , player_attributes.id from player inner join player_attributes on player.id = player_attributes.player_api_id order by player_attributes.crossing desc limit 5
select league.name from match inner join league on match.league_id = league.id where match.season = '2016' group by league.name order by sum(match.home_team_goal / match.away_team_goal) desc limit 1
select home_team_goal from match where season = '2016' group by home_team_goal order by count(home_team_goal) desc limit 1
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id order by player_attributes.penalties desc limit 10
select team.team_api_id from match inner join team on team.team_api_id = match.away_team_api_id inner join league on match.league_id = league.id where league.name = 'Scotland Premier League' and match.season = '2009/2010' group by team.team_api_id order by sum(match.away_team_goal - match.away_team_goal) > 0
select team_attributes.buildupplayspeed from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id inner join match on team.team_api_id = match.home_team_api_id order by team_attributes.buildupplayspeed desc limit 4
select league.name from match inner join league on match.lbd = league.id where match.season = '2016' group by league.name order by sum(match.home_team_goal = match.away_team_goal) desc limit 1
select player.birthday - strftime('%Y' , date) as age from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.sprint_speed >= 97 and player_attributes.date between '2013-01-01 00:00:00' and '2015-12-31 00:00:00'
select league.name , count(match.league_id) from match inner join league on match.league_id = league.id group by league.name order by count(match.league_id) desc limit 1
select avg(height) from player where birthday between '1990-01-01 00:00:00' and '1996-01-01 00:00:00'
select player.id from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where substr(player_attributes.date , 1 ,4) = '2010' order by player_attributes.overall_rating desc limit 1
select team.team_fifa_api_id from team_attributes inner join team on team_attributes.team_api_id = team.team_api_id where team_attributes.buildupplayspeed between 51 and 59
sql placeholder
select cast(sum(case when player_attributes.preferred_foot = 'left' then 1 else 0 end) as real) * 100 / count(player.player_api_id) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.birthday between '1987-01-01 00:00:00' and '1992-12-31 00:00:00'
select league.name from match inner join league on match.league_id = league.id order by match.home_team_goal / match.away_team_goal desc limit 5
select cast(sum(player_attributes.long_shots) as real) / count(player_attributes.player_api_id) from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player.player_name = 'Ahmed Samir Farag'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player.height > 180 order by player_attributes.heading_accuracy desc limit 10
select distinct team.team_long_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team_attributes.chancecreationpassing > 0 and team_attributes.date between '2014-01-01 00:00:00' and '2014-01-31 00:00:00' and team_attributes.buildupplaydribblingclass = 'Normal'
sql placeholder
select team_short_name from team where team_long_name = 'Queens Park Rangers'
select player_name from player where substr(birthday ,1 ,4) = '1970' and substr(birthday ,6 ,2) = '10'
select player_attributes.attacking_work_rate from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player.player_name = 'Franco Zennaro'
select team_attributes.buildupplaypositioningclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'ADO Den Haag'
select player_attributes.heading_accuracy from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player.player_name = 'Francois Affolter' and player_attributes.date = '2014-09-18 00:00:00'
select player_attributes.overall_rating from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Gabriel Tamas' and strftime('%Y' , player_attributes.date) = '2011'
select sum(case when league.name = 'Scotland Premier League' then 1 else 0 end) from match inner join league on match.league_id = league.id where match.season = '2015/2016'
select player_attributes.preferred_foot from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player.birthday asc limit 1
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id order by player_attributes.potential desc limit 1
select sum(case when player.weight < 130 then 1 else 0 end) from player inner join player_attributes on player.id = player_attributes.player_api_id where player_attributes.preferred_foot = 'left'
select team.team_short_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id inner join match on team_attributes.team_api_id = match.home_team_api_id where team_attributes.chancecreationpassingclass = 'Risky'
select player_attributes.defensive_work_rate from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'David Wilson'
select player.birthday from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player_attributes.overall_rating desc limit 1
select league.name from match inner join country on match.country_id = country.id inner join league on match.league_id = league.country_id where country.name = 'Netherlands'
select avg(match.home_team_goal) from match inner join league on match.country_id = league.country_id inner join country on country.id = league.country_id where country.name = 'Poland' and match.season = '2010/2011'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id group by player.player_name order by player_attributes.finishing desc limit 1
select player_name from player where height > 180
select count(id) from player where strftime('%Y' , birthday) = '1990'
sql placeholder
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where strftime('%Y' , player_attributes.date) between '2008' and '2010' and player_attributes.overall_rating > 80
select player_attributes.potential from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Aaron Doran'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player_attributes.preferred_foot = 'left'
sql placeholder
select team_attributes.buildupplaypassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_short_name = 'CLB'
select team.team_short_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team_attributes.buildupplaypassing > 70
select avg(overall_rating) from player_attributes where strftime('%Y' , date) between '2010' and '2015'
select player_name from player order by height asc limit 1
select country.name from match inner join country on country.id = match.country_id inner join league on match.league_id = league.country_id where league.name = 'Italy Serie A'
select team.team_short_name from team_attributes inner join team on team_attributes.team_api_id = team.team_api_id where team_attributes.buildupplayspeed = 31 and team_attributes.buildupplaydribbling = 53 and team_attributes.buildupplaypassing = 32
select avg(player_attributes.overall_rating) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Aaron Doran'
select count(match.league_id) from match inner join league on match.lba = league.id where league.name = 'Germany 1. Bundesliga' and strftime('%Y-%m' , match.date) between '2008-08' and '2008-10'
select team.team_short_name from team inner join match on team.team_short_name = match.home_team_goal where match.home_team_goal = 10
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id inner join match on player_attributes.player_api_id = match.home_player_8 where player_attributes.balance = 61 order by player_attributes.balance desc limit 1
select avg(player_attributes.ball_control) - avg(player_attributes.ball_control) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Abdou Diallo' or player.player_name = 'Aaron Appindangoye'
select team_long_name from team where team_short_name = 'GEN'
select player_name from player where player_name in ('Aaron Lennon' , 'Abdelaziz Barrada') order by birthday asc limit 1
select player_name from player order by height desc limit 1
select sum(case when player_attributes.attacking_work_rate = 'low' then 1 else 0 end) from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.preferred_foot = 'left'
select country.name from match inner join country on country.id = match.country_id inner join league on match.league_id = league.country_id where league.name = 'Belgium Jupiler League'
select league.name from country inner join match on country.id = match.country_id inner join league on match.league_id = league.country_id where country.name = 'Germany'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player_attributes.overall_rating desc limit 1
select count(player.id) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where strftime('%Y' , player.birthday) < '1986' and player_attributes.defensive_work_rate = 'high'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Alexis' or player.player_name = 'Ariel Borysiuk' or player.player_name = 'Arouna Kone' order by player_attributes.crossing desc limit 1
select player_attributes.heading_accuracy from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Ariel Borysiuk'
select count(player.player_api_id) from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player.height > 180 and player_attributes.volleys > 70
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.volleys > 70 and player_attributes.dribbling > 70
select count(match.country_id) from match inner join country on country.id = match.country_id where match.season = '2008/2009' and country.name = 'Belgium'
select player_attributes.long_passing from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player.birthday asc limit 1
select count(match.lbd) from match inner join league on match.league_id = league.id where league.name = 'Belgium Jupiler League' and strftime('%Y' , match.date) = '2009' and strftime('%m' , match.date) = '04'
select league.name from match inner join league on match.league_id = league.id where match.season = '2008/2009' group by league.name order by count(league.name) desc limit 1
select avg(player_attributes.overall_rating) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where strftime('%Y' , player.birthday) < '1986'
select cast((sum(case when player.player_name = 'Ariel Borysiuk' then 1 else 0 end) - sum(case when player.player_name = 'Paulin Puel' then 1 else 0 end)) as real) * 100 / sum(case when player.player_name = 'Paulin Puel' then 1 else 0 end) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id
select avg(team_attributes.buildupplayspeed) from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'Heart of Midlothian'
select cast(sum(player_attributes.overall_rating) as real) / count(player_attributes.id) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Pietro Marino'
select sum(player_attributes.crossing) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Aaron Lennox'
select team_attributes.chancecreationpassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'Ajax' order by team_attributes.chancecreationpassing desc limit 1
select player_attributes.preferred_foot from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Abdou Diallo'
select max(player_attributes.overall_rating) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Dorlan Pabon'
select avg(match.away_team_goal) from match inner join team on team.team_api_id = match.away_team_api_id inner join country on country.id = match.country_id where team.team_long_name = 'Parma' and country.name = 'Italy'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.overall_rating = 77 and player.birthday = '2016-06-23' order by player.birthday asc limit 1
select player_attributes.overall_rating from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Aaron Mooy' and player_attributes.date = '2016-02-04 00:00:00'
select player_attributes.potential from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.date = '2010-08-30 00:00:00' and player.player_name = 'Francesco Parravicini'
select player_attributes.attacking_work_rate from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.date = '2015-05-01 00:00:00' and player.player_name = 'Francesco Migliore'
select player_attributes.defensive_work_rate from player inner join player_attributes on player.id = player_attributes.player_api_id where player.player_name = 'Kevin Berigaud' and player_attributes.date = '2013-02-22 00:00:00'
sql placeholder
select team_attributes.buildupplayspeedclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id inner join match on team.team_api_id = match.home_team_api_id where team.team_long_name = 'Willem II' and match.date = '2012-02-22 00:00:00'
select team_attributes.buildupplaydribblingclass from team_attributes inner join team on team_attributes.team_api_id = team.team_api_id where team.team_short_name = 'LEI' and team_attributes.date = '2015-09-10 00:00:00'
select team_attributes.buildupplaypassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'FC Lorient' and team_attributes.date = '2010-02-22'
select team_attributes.chancecreationpassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'PEC Zwolle' and team_attributes.date = '2013-09-20 00:00:00'
select team_attributes.chancecreationcrossing from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id inner join match on team_attributes.team_api_id = match.home_team_api_id where team.team_long_name = 'Hull City' and match.date = '2010-02-22 00:00:00'
select team_attributes.defenceaggressionclass from team inner join team_attributes on team.id = team_attributes.team_api_id where team.team_long_name = 'Hannover 96' and team_attributes.date = '2015-09-10 00:00:00'
select avg(player_attributes.overall_rating) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Marko Arnautovic' and player_attributes.date between '2007-02-22 00:00:00' and '2016-04-21 00:00:00'
select cast(sum(case when player.player_name = 'Landon Donovan' then 1 else 0 end) as real) * 100 / sum(case when player.player_name = 'Jordan Bowery' then 1 else 0 end) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.date = '2013-07-12'
select player_name from player order by height desc limit 5
select player.player_api_id from player inner join match on player.player_api_id = match.match_api_id order by player.weight desc limit 10
select player_name from player where strftime('%Y' , current_timestamp) - strftime('%Y' , birthday) > 34
select sum(match.home_team_goal) from match inner join player on match.home_player_1 = player.player_api_id where player.player_name = 'Aaron Lennon'
select sum(match.away_team_goal) from match inner join player on player.player_api_id = match.away_player_11 inner join team on team.team_api_id = match.away_player_10 where player.player_name = 'Daan Smith' and player.player_name = 'Filipe Ferreira'
sql placeholder
select player.player_name from player inner join player_attributes on player.id = player_attributes.player_api_id order by player_attributes.overall_rating desc limit 10
select player.player_name from player inner join player_attributes on player.id = player_attributes.player_api_id order by player_attributes.potential desc limit 1
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.attacking_work_rate = 'high'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.finishing = 1 order by player.birthday - player_attributes.finishing desc limit 1
select player.player_name from player inner join match on player.player_api_id = match.home_player_5 inner join country on country.id = match.country_id where country.name = 'Belgium'
select player.player_name , country.name from player inner join player_attributes on player.id = player_attributes.player_fifa_api_id inner join league on player_attributes.player_api_id = league.country_id inner join country on league.country_id = country.id where player_attributes.vision > 89
select country.name from player inner join match on player.id = match.home_player_1 inner join country on country.id = match.country_id group by country.name order by sum(player.weight) desc limit 1
select team.team_long_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team_attributes.buildupplayspeedclass = 'Slow'
select team.team_short_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team_attributes.chancecreationpassingclass = 'Safe'
select avg(player.height) from player inner join league on player.player_api_id = league.country_id inner join country on country.id = league.country_id where country.name = 'Italy'
select player_name from player where height > 180 order by height desc limit 3
select count(*) from player where birthday > '1990' and player_name like 'Aaron%'
select sum(case when player_attributes.jumping = 6 then 1 else 0 end) - sum(case when player_attributes.jumping = 23 then 1 else 0 end) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id
select player.id from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id order by player_attributes.potential asc limit 3
select count(id) from player_attributes where preferred_foot = 'left' and potential = ( select max(potential) from player_attributes )
select cast(sum(case when player_attributes.stamina > 80 then 1 else 0 end) as real) * 100 / count(*) from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id
select country.name from league inner join match on league.country_id = match.country_id inner join country on country.id = league.country_id where league.name = 'Poland Ekstraklasa'
select home_team_goal from match where date like '2008-09-24%'
select player_attributes.sprint_speed , player_attributes.agility , player_attributes.acceleration from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Alexis Blin'
select team_attributes.buildupplayspeedclass from team inner join team_attributes on team.id = team_attributes.team_api_id where team.team_long_name = 'KSV Cercle Brugge' and team_attributes.buildupplayspeedclass = 'Slow , Balanced , Fast'
select sum(case when match.season = '2015/2016' then 1 else 0 end) from match inner join league on match.league_id = league.id inner join country on country.id = league.country_id where league.name = 'Serie A'
select match.home_team_goal from match inner join country on country.id = match.country_id inner join league on match.league_id = league.id where league.name = 'Netherlands Eredivisie' order by match.home_team_goal desc limit 1
select player_attributes.finishing , player_attributes.curve from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id order by player.weight desc limit 1
select league.name from match inner join league on match.league_id = league.id where match.season = '2015/2016' group by league.name order by count(league.name) desc limit 1
select team.team_long_name from match inner join team on team.team_api_id = match.away_team_api_id group by team.team_long_name order by sum(match.away_team_goal) desc limit 1
select player.player_name from player inner join player_attributes on player.id = player_attributes.player_api_id order by player_attributes.overall_rating desc limit 1
select cast(sum(case when player_attributes.overall_rating > 70 then 1 else 0 end) as real) * 100 / count(player.id) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.height < 180
select sum(case when sex = 'M' then 1 else 0 end) - sum(case when sex = '+' then 1 else 0 end) as diff from patient where admission = '-'
select cast(sum(case when sex = 'F' then 1 else 0 end) as real) * 100 / count(id) from patient where strftime('%Y' , birthday) > '1930'
select cast(sum(case when admission = '+' then 1 else 0 end) as real) * 100 / count(id) from patient where strftime('%Y' , birthday) between '1930-01-01' and '1940-12-31'
select cast(sum(case when patient.admission = '+' then 1 else 0 end) as real) / sum(case when patient.diagnosis = 'SLE' then 1 else 0 end) from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'SLE'
select examination.diagnosis , laboratory.date from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.id = 30609
sql placeholder
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.igg > 500
select patient.id , patient.birthday - strftime('%Y' , examination.kct) from patient inner join examination on patient.id = examination.id where examination.rvvt = '+'
select patient.id , patient.sex , patient.description , examination.diagnosis from patient inner join examination on patient.id = examination.id where examination.diagnosis = 2
sql placeholder
select patient.id , patient.sex , patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.alb < 3.5
select cast(sum(case when patient.sex = 'F' then 1 else 0 end) as real) * 100 / count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.tp < '6.0' or laboratory.tp > '8.5'
sql placeholder
select count(id) from patient where strftime('%Y' , description) = '1997' and sex = 'F' and admission = '-'
sql placeholder
select count(patient.id) from patient inner join examination on patient.id = examination.id where strftime('%Y' , examination.diagnosis) = '1997' and patient.sex = 'F' and examination.thrombosis = '1'
select max(patient.birthday) - min(patient.birthday) from patient inner join laboratory on patient.id = laboratory.id where laboratory.tg > 200
select examination.symptoms , examination.diagnosis from patient inner join examination on patient.id = examination.id order by patient.birthday asc limit 1
select cast(count(patient.id) as real) / 12 from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.date between '1998-01-01' and '1998-12-31'
sql placeholder
select cast(sum(case when patient.sex = 'M' then 1 else 0 end) as real) / sum(case when patient.sex = 'F' then 1 else 0 end) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ua < 8.0
sql placeholder
sql placeholder
sql placeholder
select examination.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.date between '1985-01-01' and '1995-12-31' group by examination.diagnosis order by count(patient.diagnosis) desc limit 1
select avg(strftime('%Y' , laboratory.date) - strftime('%Y' , patient.birthday)) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.date between '1991-10-01' and '1991-10-30'
sql placeholder
sql placeholder
select examination.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.id = 2927464 and examination.diagnosis = 'Normal' and laboratory.date = 1995-9-4 and patient.id = 2927464
select patient.sex from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'AORTITIS' order by patient.sex asc limit 1
sql placeholder
select patient.sex , patient.sex from patient inner join laboratory on patient.id = laboratory.id where laboratory.date = '1992-06-12' and laboratory.gpt = 9
select 1992 - strftime('%Y' , patient.birthday) from patient inner join laboratory on patient.id = laboratory.id where laboratory.date = '1991-10-21' and laboratory.ua = '8.4'
sql placeholder
sql placeholder
select examination.symptoms from patient inner join examination on patient.id = examination.id where patient.birthday = 1959 and patient.birthday = '1959-03-27'
select cast(sum(case when laboratory.date like '1981-11-%' then 1 else 0 end) as real) * 100 / sum(case when laboratory.date like '1981-12-%' then 1 else 0 end) from patient inner join laboratory on patient.id = laboratory.id where patient.birthday = '1959-02-18'
sql placeholder
select patient.id from patient inner join laboratory on patient.id = laboratory.id inner join examination on patient.id = examination.id where laboratory.date between '1987-07-06' and '1996-01-31' and laboratory.gpt > 30 and laboratory.igm < 4
select id from patient where strftime('%Y' , birthday) = '1964' and sex = 'F' and admission = '+'
sql placeholder
select cast(sum(case when laboratory.ua < 6.5 then 1 else 0 end) as real) * 100 / count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ua != 6.5
sql placeholder
sql placeholder
sql placeholder
select patient.sex from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.diagnosis = 'PSS' and laboratory.crp > 2 and laboratory.cre = 1 and laboratory.ldh = 123
select avg(laboratory.alb) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.diagnosis = 'SLE' and patient.sex = 'F' and laboratory.alb > 400
select examination.symptoms from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'SLE' order by examination.symptoms desc limit 1
select patient.description , patient.diagnosis from patient inner join examination on patient.id = examination.id where patient.id = 48473
select count(patient.id) from patient inner join examination on patient.id = examination.id where patient.sex = 'F' and examination.diagnosis = 'APS'
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where strftime('%Y' , examination.diagnosis) = 'Normal' and laboratory.tp > 6 and laboratory.tp < 8.5
select cast(sum(case when examination.symptoms = 'thrombocytopenia' then 1 else 0 end) as real) * 100 / count(patient.id) from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'SLE'
select cast(sum(case when patient.sex = 'F' then 1 else 0 end) as real) * 100 / count(patient.id) from patient inner join examination on patient.id = examination.id where strftime('%Y' , patient.birthday) = '1980' and examination.diagnosis = 'RA'
sql placeholder
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'F' and laboratory.wbc < 3.5
sql placeholder
select laboratory.ua from patient inner join laboratory on patient.id = laboratory.id where patient.id = 57266 and laboratory.ua > 8.0 and laboratory.igm = 'M' or laboratory.ua > 6.5 and laboratory.igm = 'F'
sql placeholder
select patient.sex , patient.birthday from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where strftime('%Y' , laboratory.date) = '1994' and laboratory.got < 60 and patient.sex = 'M'
select patient.id from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.gpt >= 60
select patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.gpt > 60 order by patient.birthday desc limit 1
select avg(laboratory.ldh) from laboratory inner join patient on laboratory.id = patient.id where laboratory.ldh < 500
select patient.id , laboratory.id - strftime('%J' , laboratory.date) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ldh between 600 and 800
select case when sum(case when patient.admission = '+' then 1 else 0 end) > sum(case when patient.admission = '-' then 1 else 0 end) then 'inpatient' else 'outpatient' end from patient inner join laboratory on patient.id = laboratory.id where laboratory.alp < 300
select patient.id from patient inner join laboratory on patient.id = laboratory.id where patient.birthday = '1982-04-01' and laboratory.alp < 300
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.tp < 6.0
select laboratory.tp - laboratory.id from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'F' and laboratory.tp > 8.5
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.alb < 3.5 or laboratory.alb >= 5.5 and patient.sex = 'M' order by patient.birthday desc
select laboratory.alb from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , patient.birthday) = '1982' and laboratory.alb between 3.5 and 5.5
select cast(sum(case when laboratory.ua > 8.0 then 1 else 0 end) as real) * 100 / count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'F'
sql placeholder
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.un = 29
select patient.id , patient.sex , patient.birthday from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'RA' and strftime('%Y' , examination.diagnosis) < 30
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.cre >= 1.5
select cast(sum(case when patient.sex = 'M' then 1 else 0 end) as real) / sum(case when patient.sex = 'F' then 1 else 0 end) from patient inner join laboratory on patient.id = laboratory.id where laboratory.cre >= 1.5
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select patient.id , patient.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.tg > 300
sql placeholder
select distinct patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.cpk < 250 and patient.admission = '-'
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , patient.birthday) between '1936' and '1956' and patient.sex = 'M' and laboratory.cpk > 250
sql placeholder
select patient.id , laboratory.glu from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , patient.description) >= '1991' and laboratory.glu < 180
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.wbc < 3.5 or laboratory.wbc > 9.0 order by patient.sex asc
select patient.diagnosis , strftime('%Y' , current_timestamp) - strftime('%Y' , birthday) as age from patient inner join laboratory on patient.id = laboratory.id where laboratory.rbc < 3.5
select patient.id , admission from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'F' and (strftime('%Y' , current_timestamp) - strftime('%Y' , patient.birthday) > 50 )
select distinct patient.id , patient.sex from patient inner join laboratory on patient.id = laboratory.id where laboratory.hgb < 10 and patient.admission = '-'
select patient.id , patient.sex from patient inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SLE' and laboratory.hgb < 17 order by patient.birthday asc limit 1
select patient.id , patient.birthday - strftime('%Y' , laboratory.date) as age from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.diagnosis = 'Normal' and laboratory.hct > 52 group by patient.id , patient.birthday having count(patient.id) > 2
select avg(hct) from laboratory where strftime('%Y' , date) = '1991' and hct < 29
select sum(case when laboratory.plt < 100 then 1 else 0 end) - sum(case when laboratory.plt > 400 then 1 else 0 end) from patient inner join laboratory on patient.id = laboratory.id
select distinct patient.id from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , laboratory.date) - strftime('%Y' , patient.birthday) < 50 and laboratory.plt between 100 and 400
select cast(sum(case when patient.sex = 'F' then 1 else 0 end) as real) * 100 / count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.pt >= 14
select distinct patient.id from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , laboratory.date) > '1992' and laboratory.pt < 14
sql placeholder
select count(distinct laboratory.id) from examination inner join patient on examination.id = patient.id inner join laboratory on patient.id = laboratory.id where laboratory.aptt > 45 and examination.diagnosis = 'thrombosis'
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.wbc between 3.5 and 9.0 and fg < 150 or fg >= 450
select count(distinct patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.birthday > '1980-01-01' and laboratory.fg between 150 and 450
sql placeholder
sql placeholder
sql placeholder
select count(patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.diagnosis = laboratory.id where laboratory.igg >= 900 and laboratory.igm < 2000 and examination.symptoms is not null
select patient.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.igg > 80 and laboratory.igg < 500 order by examination.diagnosis desc limit 1
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where strftime('%Y' , laboratory.date) >= '1990' and laboratory.iga between 80 and 500
select patient.description from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.igm < 40 and laboratory.igg < 400 group by patient.diagnosis order by count(patient.diagnosis) desc limit 1
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.crp like '+' or laboratory.crp like '-' or laboratory.crp < 1.0
select count(distinct patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.crp >= 1.0 and laboratory.date in ('+-' , '-')
sql placeholder
sql placeholder
sql placeholder
select count(patient.id) from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'Normal' and examination.thrombosis = 0
sql placeholder
sql placeholder
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.c4 > 10 and examination.diagnosis = 'APS'
select count(distinct patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.rnp = '-' or laboratory.ra = '+-' and patient.admission = '+'
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.rnp is not null order by patient.birthday desc limit 1
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.sm in ('-' , '+-') and examination.thrombosis = '1' and examination.diagnosis in ('Normal' , '+')
select patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.sm not in ('-' , '+-') order by patient.birthday desc limit 3
select patient.id from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.sc170 in ('-' , '+-')
select count(distinct examination.id) from patient inner join examination on patient.id = examination.id where patient.sex = 'M' and examination.symptoms = 'vertigo' and examination.diagnosis in ('-' , '+-')
sql placeholder
sql placeholder
sql placeholder
select count(distinct examination.id) from examination inner join patient on examination.id = patient.id inner join laboratory on patient.id = laboratory.id where laboratory.ssb in ('-' , '+-')
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.centromea in ('-' , '+-') and laboratory.ssb in ('-' , '+-')
select distinct patient.description from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.dna > 8
select count(distinct patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.dna = 8 and patient.description is null
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.dna < 8 and patient.admission = '+'
sql placeholder
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.got < 60
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.got > 60 order by patient.birthday desc limit 1
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.gpt < 60 order by laboratory.gpt desc limit 3
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.got < 60 and patient.sex = 'M'
sql placeholder
sql placeholder
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where laboratory.alp > 300 and patient.admission = '+'
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.admission = '-' and laboratory.alp < 300
select distinct patient.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.tp < 6.0
sql placeholder
sql placeholder
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.alb > 3.5 and laboratory.alb < 5.5 and laboratory.tp between 6.0 and 8.5
select laboratory.ua from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.sex = 'F' and laboratory.ua > 6.50 order by laboratory.ua desc limit 1
select max(examination.ana) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.cre < 1.5 and examination.diagnosis = 'Normal'
select patient.id from laboratory inner join patient on laboratory.id = patient.id where laboratory.cre < 1.5 order by laboratory.iga desc limit 1
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select count(distinct examination.symptoms) from laboratory inner join examination on laboratory.id = examination.id inner join patient on examination.id = patient.id where laboratory.tg < 200 and examination.diagnosis is not null
select patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.tg < 200 order by laboratory.tg desc limit 1
select patient.id from examination inner join patient on examination.id = patient.id inner join laboratory on patient.id = laboratory.id where laboratory.cpk < 250 and examination.diagnosis = 'thrombosis' and examination.diagnosis = 'thrombosis'
select count(distinct laboratory.id) from laboratory inner join examination on laboratory.id = examination.id inner join patient on examination.id = patient.id where laboratory.cpk < 250 and examination.kct = '+' or examination.rvvt = '+' or examination.lac = '+'
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.glu > 180 order by patient.birthday asc limit 1
select count(distinct patient.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.glu < 180 and examination.thrombosis = 0
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.admission = '+' and laboratory.wbc between 3.5 and 9.0
select count(patient.id) from patient inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SLE' and laboratory.wbc between 3.5 and 9.0
select patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.rbc < 6.0 or laboratory.rbc < 3.5
select count(distinct examination.id) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.plt > 100 and laboratory.plt < 400 and examination.diagnosis is not null
select examination.id , patient.description from patient inner join examination on patient.id = examination.id where patient.diagnosis = 'MCTD' and examination.diagnosis = 'Normal' and examination.diagnosis = 'MCTD'
select avg(laboratory.pt) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.pt < 14
sql placeholder
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Angela' and member.last_name = 'Sanders'
select count(*) from major where college = 'College of Engineering'
select member.first_name , member.last_name from member inner join major on member.link_to_major = major.major_id where major.department = 'Art and Design Department'
select count(event_name) from event where event_name = 'Women''s Soccer'
select member.phone from member inner join event on member.phone = event.event_id where event.event_name = 'Women''s Soccer'
sql placeholder
select event.event_name from attendance inner join event on attendance.link_to_event = event.event_id group by event.event_name order by count(attendance.link_to_event) desc limit 1
select major.college from member inner join major on member.link_to_major = major.major_id where member.position = 'Vice President'
select event.event_name from member inner join event on member.zip = event.event_id where member.first_name = 'Maya' and member.last_name = 'Mclean'
select count(event.event_name) from member inner join event on member.zip = event.event_id where strftime('%Y' , event.event_date) = '2019' and member.first_name = 'Sacha' and member.last_name = 'Harrison'
select count(event_id) from event where type = 'Meeting'
select event_name from event group by event_name having count(event_id) > 20
select cast(count(event_id) as real) / count(distinct event_name) from event where strftime('%Y' , event_date) = '2020' and type = 'Meeting'
select expense_description from expense order by cost desc limit 1
select count(member.member_id) from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Environmental Engineering'
select member.first_name , member.last_name from member inner join event on member.member_id = event.event_id where event.event_name = 'Laugh Out Loud'
select member.last_name from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Law and Constitutional Studies'
select zip_code.county from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Sherri' and member.last_name = 'Ramsey'
select major.college from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Tyler' and member.last_name = 'Hewitt'
select income.amount from member inner join zip_code on member.zip = zip_code.zip_code inner join income on zip_code.zip_code = income.link_to_member where member.position = 'Vice President'
sql placeholder
select zip_code.city , zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code where member.position = 'President'
select member.first_name , member.last_name from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.state = 'Illinois'
sql placeholder
select major.department from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Pierce' and member.last_name = 'Guidi'
sql placeholder
select expense.approved from event inner join expense on event.event_id = expense.expense_id where event.event_name = 'October Meeting' and event.event_date = '2019-10-08'
sql placeholder
sql placeholder
select location from event where event_name = 'Spring Budget Review'
sql placeholder
select remaining from budget where category = 'Food' and budget_id = ( select max(amount) from budget where category = 'Food' )
select notes from income where date_received = '2019-09-14' and source = 'Fundraising'
select count(major_id) from major where college = 'College of Humanities and Social Sciences'
select member.phone from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Carlo' and member.last_name = 'Jacobs'
select zip_code.county from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Adela' and member.last_name = 'O''Gallagher'
select count(budget.remaining) from event inner join budget on event.event_id = budget.link_to_event where event.event_name = 'November Meeting' and budget.remaining < 0
select sum(budget.amount) from budget inner join event on budget.link_to_event = event.event_id where event.event_name = 'September Speaker'
sql placeholder
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Brent' and member.last_name = 'Thomason'
select count(member.member_id) from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Human Development and Family Studies' and member.t_shirt_size = 'Large'
select zip_code.type from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Christof' and member.last_name = 'Nielsson'
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.position = 'Vice President'
select zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Sacha' and member.last_name = 'Harrison'
select major.department from member inner join major on member.link_to_major = major.major_id where member.position = 'President'
select income.date_received from income inner join member on income.link_to_member = member.member_id where member.first_name = 'Connor' and member.last_name = 'Hilton' and income.source = 'Dues'
select member.first_name , member.last_name from income inner join member on income.income_id = member.member_id where income.source = 'Dues' order by income.date_received asc limit 1
select sum(case when budget.category = 'Advertisement' then budget.amount else 0 end) - sum(case when budget.category = 'Advertisement' then budget.amount else 0 end) from budget inner join event on budget.link_to_event = event.event_id
select cast(sum(case when budget.category = 'Parking' then budget.amount else 0 end) as real) * 100 / count(event.event_name) from budget inner join event on budget.link_to_event = event.event_id where event.event_name = 'November Speaker'
select sum(expense.cost) from expense inner join event on expense.expense_id = event.event_id where expense.expense_description = 'Pizza'
select count(city) from zip_code where state = 'Virginia' and county = 'Orange County'
select department from major where college = 'College of Humanities and Social Sciences'
select zip_code.city , zip_code.county , zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Amy' and member.last_name = 'Firth'
select expense.expense_description from budget inner join expense on budget.budget_id = expense.link_to_budget order by budget.remaining asc limit 1
select member.first_name , member.last_name from event inner join member on event.event_id = member.member_id where event.event_name = 'October Meeting'
select major.college from member inner join major on member.link_to_major = major.major_id group by major.college order by count(member.link_to_major) desc limit 1
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.phone = '809-555-3360'
select event.event_name from budget inner join event on budget.link_to_event = event.event_id order by budget.amount desc limit 1
select expense.expense_description from member inner join expense on member.member_id = expense.link_to_member where member.position = 'Vice President'
select count(member.member_id) from event inner join member on event.event_id = member.member_id where event.event_name = 'Women''s Soccer'
select income.date_received from member inner join income on member.member_id = income.link_to_member where member.first_name = 'Casey' and member.last_name = 'Mason'
select count(*) from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.state = 'Maryland'
select count(event.event_name) from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where member.phone = '954-555-6240'
select member.first_name , member.last_name from member inner join major on member.link_to_major = major.major_id where major.department = 'School of Applied Sciences , Technology and Education'
sql placeholder
select count(*) from member where position = 'President'
select budget.spent from budget inner join event on budget.link_to_event = event.event_id order by budget.spent desc limit 1
select count(event_id) from event where strftime('%Y' , event_date) = '2020' and type = 'Meeting'
select sum(spent) from budget where category = 'Food'
select t.first_name , t.last_name from ( select member.first_name , member.last_name , count(attendance.link_to_event) as num from attendance inner join member on attendance.link_to_member = member.member_id group by member.first_name , member.last_name ) as t where t.num > 7
sql placeholder
select member.first_name , member.last_name from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.city = 'Georgetown' and zip_code.state = 'South Carolina'
select count(income.amount) from member inner join income on member.member_id = income.income_id where member.first_name = 'Grant' and member.last_name = 'Gilmour'
select member.first_name , member.last_name from member inner join income on member.first_name = income.income_id where income.amount > 40
select sum(expense.cost) from event inner join expense on event.event_id = expense.expense_id where event.event_name = 'Baseball game'
select budget.budget_id from budget inner join event on budget.link_to_event = event.event_id where event.event_name = 'Yearly Kickoff'
sql placeholder
sql placeholder
sql placeholder
select cast(sum(case when major_name = 'Finance' then 1 else 0 end) as real) / sum(case when major_name = 'Physics' then 1 else 0 end) from major
select source , amount from income where date_received >= '2019-09-01' and date_received < '2019-09-30' order by amount desc limit 1
select first_name , last_name , email from member where position = 'Secretary'
select count(member.link_to_major) from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Physics Teaching'
select count(member.member_id) from event inner join member on event.event_id = member.member_id where strftime('%Y' , event.event_date) = '2019' and event.event_name = 'Community Theater'
select count(event.event_id) , major.major_name from member inner join major on member.link_to_major = major.major_id inner join event on event.event_id = event.event_id where member.first_name = 'Luisa' and member.last_name = 'Guidi'
sql placeholder
sql placeholder
select member.first_name , member.last_name from member inner join event on member.member_id = event.event_id where event.event_name = 'Women''s Soccer' and member.first_name = 'Maya' and member.last_name = 'Mclean'
select cast(sum(case when type = 'Community Service' then 1 else 0 end) as real) * 100 / count(event_name) from event
sql placeholder
select member.t_shirt_size from member inner join zip_code on member.zip = zip_code.zip_code group by member.t_shirt_size order by count(member.t_shirt_size) desc limit 1
select event.event_name from budget inner join event on budget.link_to_event = event.event_id where event.status = 'Closed' and budget.remaining < 0 order by budget.remaining asc limit 1
select event.type , expense.cost from event inner join expense on event.event_id = expense.expense_id where event.event_name = 'October Meeting'
sql placeholder
select budget_id from budget where category = 'Food' order by amount desc limit 1
select budget_id from budget where category = 'Advertisement' order by amount desc limit 3
select sum(cost) from expense where expense_description = 'Parking'
select sum(cost) from expense where expense_date = '2019-08-20'
select member.first_name , member.last_name , expense.cost from member inner join expense on member.zip = expense.link_to_member where member.member_id = 'rec4BLdZHS2Blfp4v'
sql placeholder
select expense.expense_description from member inner join expense on member.member_id = expense.link_to_member where member.t_shirt_size = 'X-Large'
select zip_code.zip_code from member inner join zip_code on member.zip = zip_code.zip_code inner join expense on member.member_id = expense.link_to_member where member.position = 'Member' and expense.cost < 50
select major.major_name from member inner join major on member.link_to_major = major.major_id inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Phillip' and member.last_name = 'Cullen'
select member.position from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Business'
select count(member.member_id) from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Business' and member.t_shirt_size = 'Medium'
select distinct event.type from budget inner join event on budget.link_to_event = event.event_id where budget.remaining > 30
select budget.category from event inner join budget on budget.budget_id = event.event_id where event.location = 'MU 215'
select budget.category from budget inner join event on budget.link_to_event = event.event_id where substr(event.event_date , 1 , 4) = '2020-03-24T12:00:00'
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.position = 'Vice President'
select cast(sum(case when major.major_name = 'Mathematics' then 1 else 0 end) as real) * 100 / count(member.member_id) from member inner join major on member.link_to_major = major.major_id
sql placeholder
select count(income_id) from income where amount = 50
select count(*) from member where position = 'Member' and t_shirt_size = 'X-Large'
select count(major_name) from major where department = 'School of Applied Sciences , Technology and Education' and college = 'College of Agriculture and Applied Sciences'
select member.last_name , major.department , major.college from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Environmental Engineering'
select budget.category from budget inner join event on budget.link_to_event = event.event_id where event.location = 'MU 215' and event.type = 'Guest Speaker' and budget.spent = 0
sql placeholder
select event.event_name from event inner join member on event.event_id = member.member_id where member.position = 'Vice President' and event.location = '900 E. Washington St.' and event.type = 'Social'
sql placeholder
select member.last_name from event inner join member on event.event_id = member.member_id where event.event_name = 'Women''s Soccer' and member.position = 'Member'
select cast(sum(iif(position = 'Member' , 1 , 0)) as real) * 100 / count(*) from member where t_shirt_size = 'Medium'
select distinct county from zip_code where type = 'PO Box'
select zip_code.zip_code from zip_code where state = 'Puerto Rico' and type = 'PO Box'
select event_name from event where substr(event_date , 1 , 4) = '2020-03-20' and type = 'Game' and status = 'Closed'
sql placeholder
sql placeholder
select major.college from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Kathy' and member.link_to_major = 'rec1N0upiVLy5esTO'
select member.phone from member inner join major on member.link_to_major = major.major_id where major.college = 'College of Agriculture and Applied Sciences' and major.major_name = 'Business'
sql placeholder
select count(member.member_id) from member inner join major on member.link_to_major = major.major_id where member.position = 'Member' and major.college = 'College of Education & Human Services'
select cast(sum(case when budget.remaining < 0 then 1 else 0 end) as real) * 100 / count(event.event_id) from budget inner join event on budget.link_to_event = event.event_id
select event_id , event.location , event.status from event where substr(event_date , 1 , 4) = '2019'
select expense_description from expense group by expense_description having cast(sum(cost) as real) / count(expense_id) > 50
select first_name , last_name from member where t_shirt_size = 'X-Large'
select cast(sum(case when type = 'PO Box' then 1 else 0 end) as real) * 100 / count(zip_code) from zip_code
sql placeholder
select event.event_name , event.event_date from expense inner join event on expense.expense_id = event.event_id where expense.expense_description = 'Pizza' and expense.cost > 50 and expense.cost < 100
select member.first_name , member.last_name , major.major_name from member inner join expense on member.zip = expense.expense_id inner join major on member.link_to_major = major.major_id where expense.cost > 100
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select budget.budget_id from budget inner join expense on budget.budget_id = expense.link_to_budget where expense.expense_description = 'Water , chips , cookies' order by expense.cost desc limit 1
select member.first_name , member.last_name from member inner join expense on member.member_id = expense.link_to_member order by expense.cost desc limit 5
select member.first_name , member.last_name , member.phone from member inner join expense on member.zip = expense.link_to_member group by member.first_name , member.last_name , member.phone having expense.cost > ( select avg(cost) from expense )
select cast(sum(case when zip_code.state = 'Maine' then 1 else 0 end) - sum(case when zip_code.state = 'Vermont' then 1 else 0 end) as real) * 100 / count(member.position) from member inner join zip_code on member.zip = zip_code.zip_code
select major.major_name , major.department from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Garrett' and member.last_name = 'Gerke'
select member.first_name , member.last_name , expense.cost from member inner join expense on member.member_id = expense.link_to_member where expense.expense_description = 'Water , Veggie tray , supplies'
select member.last_name , member.phone from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Elementary Education'
select budget.category , budget.amount from budget inner join event on budget.link_to_event = event.event_id where event.event_name = 'January Speaker'
select event.event_name from budget inner join event on budget.link_to_event = event.event_id where budget.category = 'Food'
sql placeholder
select budget.category from expense inner join budget on expense.link_to_budget = budget.budget_id where expense.expense_description = 'Posters'
select member.first_name , member.last_name , major.college from member inner join major on member.link_to_major = major.major_id where member.position = 'Secretary'
select sum(budget.spent) , event.event_name from budget inner join event on budget.link_to_event = event.event_id where budget.category = 'Speaker Gifts'
select zip_code.city from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Garrett' and member.last_name = 'Grieke'
select member.first_name , member.last_name , member.position from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.city = 'Lincolnton' and zip_code.state = 'North Carolina' and zip_code.zip_code = 28092
select count(gasstations.gasstationid) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and gasstations.segment = 'Premium'
select cast(sum(case when customers.currency = 'EUR' then 1 else 0 end) as real) * 100 / sum(case when customers.currency = 'CZK' then 1 else 0 end) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid
select customers.customerid from customers inner join yearmonth on customers.customerid = yearmonth.customerid where strftime('%Y' , yearmonth.consumption) = '2012' group by customers.customerid order by sum(yearmonth.consumption) asc limit 1
select avg(yearmonth.consumption) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where strftime('%Y' , yearmonth.date) = '2013' and customers.segment = 'SME'
select customers.customerid from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where strftime('%Y' , transactions_1k.date) = '2011' and customers.currency = 'CZK' group by customers.customerid order by sum(yearmonth.consumption) desc limit 1
select count(customers.customerid) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where strftime('%Y' , yearmonth.consumption) = '2012' and customers.segment = 'KAM' and yearmonth.consumption < 30000
select sum(yearmonth.consumption) - sum(yearmonth.consumption) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where strftime('%Y' , yearmonth.date) = '2012'
select yearmonth.customerid from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'EUR' group by yearmonth.customerid order by count(transactions_1k.transactionid) desc limit 1
select customers.segment from customers inner join yearmonth on customers.customerid = yearmonth.customerid group by customers.segment order by sum(yearmonth.consumption) asc limit 1
select yearmonth.consumption from customers inner join yearmonth on customers.customerid = yearmonth.customerid inner join transactions_1k on transactions_1k.customerid = yearmonth.customerid where customers.currency = 'CZK' group by yearmonth.consumption order by count(transactions_1k.date) desc limit 4
select yearmonth.consumption from customers inner join yearmonth on customers.customerid = yearmonth.customerid where strftime('%Y' , yearmonth.date) = '2013' and customers.segment = 'SME'
select sum(yearmonth.consumption) / count(customers.segment) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on transactions_1k.customerid = yearmonth.customerid where customers.segment between 2013 and 2013 and customers.currency = 'CZK' order by yearmonth.consumption asc limit 1
select customers.segment from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on transactions_1k.customerid = yearmonth.customerid where customers.segment = 'SME' and customers.segment = 'LAM' and yearmonth.date between 2012 and 2013 group by customers.segment order by sum(yearmonth.date) desc limit 1
select sum(yearmonth.consumption) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.customerid = 6 and yearmonth.date between 'August' and 'November'
select sum(case when country = 'Czech Republic' then 1 else 0 end) - sum(case when country = 'Slovakia' then 1 else 0 end) from gasstations
sql placeholder
select case when sum(transactions_1k.amount) > sum(transactions_1k.amount) then 'Yes' else 'No' end from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid
select customers.segment from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'LAM' and yearmonth.date = '2013-10' order by yearmonth.consumption desc limit 1
select customers.customerid , yearmonth.consumption from customers inner join yearmonth on customers.customerid = yearmonth.customerid inner join transactions_1k on transactions_1k.customerid = transactions_1k.customerid where customers.segment = 'KAM' group by customers.customerid , yearmonth.consumption order by sum(transactions_1k.amount) desc limit 1
select sum(yearmonth.consumption) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where strftime('%Y' , yearmonth.date) = '2013-05' and customers.segment = 'KAM'
select cast(sum(iif(customers.segment = 'LAM' , 1 , 0)) as real) * 100 / count(customers.customerid) from customers inner join yearmonth on customers.customerid = yearmonth.customerid
select country from gasstations group by country order by count(gasstationid) desc limit 1
select cast(sum(case when customers.currency = 'Euro' then 1 else 0 end) as real) * 100 / sum(transactions_1k.transactionid) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid
select cast(sum(yearmonth.consumption) as real) * 100 / count(transactions_1k.customerid) from yearmonth inner join transactions_1k on yearmonth.customerid = transactions_1k.customerid where strftime('%Y' , yearmonth.date) = '2012'
select cast(sum(gasstations.segment = 'Premium') as real) * 100 / count(gasstations.gasstationid) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'Slovak'
select yearmonth.customerid from yearmonth inner join transactions_1k on yearmonth.customerid = transactions_1k.customerid where strftime('%Y' , transactions_1k.date) = '2013-09' group by yearmonth.customerid order by sum(yearmonth.consumption) desc limit 1
select customers.segment from customers inner join yearmonth on customers.customerid = yearmonth.customerid inner join transactions_1k on transactions_1k.customerid = transactions_1k.customerid where strftime('%Y' , transactions_1k.date) = '2013' group by customers.segment order by sum(yearmonth.consumption) asc limit 1
select customers.segment from customers inner join yearmonth on customers.customerid = yearmonth.customerid inner join transactions_1k on customers.customerid = transactions_1k.customerid where strftime('%Y-%m-%d' , transactions_1k.date) = '2012-06' group by customers.segment order by sum(yearmonth.consumption) asc limit 1
select consumption from yearmonth where strftime('%Y' , date) = '2012' order by consumption desc limit 4
select sum(yearmonth.consumption) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'euro' order by yearmonth.consumption desc limit 1
sql placeholder
select distinct gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where strftime('%Y-%m' , transactions_1k.date) = '2013-06'
select distinct gasstations.chainid from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.transactionid = 'EUR'
select distinct products.description from products inner join transactions_1k on products.productid = transactions_1k.productid where transactions_1k.transactionid = 1
select sum(price) / count(transactionid) from transactions_1k where date like '2012-01%'
select count(customers.customerid) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'euro' and yearmonth.consumption > 1000
select distinct products.description from products inner join transactions_1k on products.productid = transactions_1k.productid inner join gasstations on transactions_1k.gasstationid = gasstations.gasstationid where gasstations.country = 'CZE'
select distinct transactions_1k.time from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.chainid = 11
select count(transactions_1k.transactionid) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and transactions_1k.price > 1000
select count(transactions_1k.transactionid) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and strftime('%Y' , transactions_1k.date) > '2012-01-01'
select avg(transactions_1k.price) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE'
select avg(transactions_1k.price) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where customers.currency = 'euro'
select transactions_1k.customerid from transactions_1k inner join customers on transactions_1k.customerid = customers.customerid where transactions_1k.date like '2012-08-25%' group by transactions_1k.customerid order by sum(transactions_1k.amount) desc limit 1
select distinct gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.date = '2012-08-25' and transactions_1k.customerid = 1
select distinct customers.currency from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.date = '2012-08-24' and transactions_1k.time = '16:25:00'
select distinct customers.segment from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.date = '2012-08-23 21:20:00'
select count(transactions_1k.transactionid) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.date like '2012-08-26%' and customers.currency = 'EUR'
select customers.segment from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid order by transactions_1k.transactionid asc limit 1
sql placeholder
select distinct productid from transactions_1k where date = '2012-08-23 21:20:00' and time = '21:20:00'
select transactions_1k.amount , yearmonth.date , yearmonth.consumption from transactions_1k inner join yearmonth on transactions_1k.customerid = yearmonth.customerid where transactions_1k.date like '2012-08-24%' and transactions_1k.amount = 124.05
select count(transactions_1k.transactionid) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and transactions_1k.date = '2012-08-26' and transactions_1k.time = '8:00-9:00'
select customers.currency from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = transactions_1k.customerid where transactions_1k.date like '2013-06%' and customers.customerid = 214582.17
sql placeholder
sql placeholder
select cast(sum(case when customers.currency = 'EUR' then 1 else 0 end) as real) * 100 / count(customers.customerid) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.date = '2012-08-25'
sql placeholder
select gasstations.gasstationid from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid order by transactions_1k.amount desc limit 1
select cast(sum(case when segment = 'Premium' then 1 else 0 end) as real) * 100 / count(segment) from gasstations where country = 'SVK'
select transactions_1k.amount , transactions_1k.amount from transactions_1k inner join customers on transactions_1k.customerid = customers.customerid where customers.customerid = 38508 and transactions_1k.date = '2012-01'
select products.description from products inner join transactions_1k on products.productid = transactions_1k.productid order by transactions_1k.transactionid desc limit 5
select transactions_1k.price , avg(transactions_1k.amount) , customers.currency from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid group by transactions_1k.customerid order by sum(transactions_1k.price) desc limit 1
select distinct gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.productid = ( select max(productid) from transactions_1k )
select distinct yearmonth.consumption from transactions_1k inner join yearmonth on transactions_1k.customerid = yearmonth.customerid inner join products on products.productid = transactions_1k.productid where transactions_1k.productid = 5 and strftime('%Y' , yearmonth.date) = '2012'
