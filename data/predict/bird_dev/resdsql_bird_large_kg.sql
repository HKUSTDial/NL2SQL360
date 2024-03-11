sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select count ( satscores.cds ) from satscores inner join schools on satscores.cds = schools.cdscode where satscores.avgscrmath < 400 and schools.virtual = 'F'
select schools.school from schools inner join satscores on schools.cdscode = satscores.cds where satscores.numge1500 > 500 and schools.magnet = 1
select schools.phone from schools inner join satscores on schools.cdscode = satscores.cds where satscores.numge1500 group by schools.school order by count ( schools.phone ) desc limit 1
sql placeholder
select count ( schools.cdscode ) from schools inner join satscores on schools.cdscode = satscores.cds where satscores.avgscrmath > 560 and schools.charter = 'directly'
sql placeholder
sql placeholder
sql placeholder
select schools.phone from satscores inner join schools on satscores.cds = schools.cdscode order by satscores.numge1500 desc limit 3
sql placeholder
select schools.district from satscores inner join schools on satscores.cds = schools.cdscode where schools.district = 'A' group by schools.district order by avg ( satscores.avgscrread ) desc limit 1
sql placeholder
select schools.charter from schools inner join satscores on schools.cdscode = satscores.cds where satscores.avgscrwrite = 499
sql placeholder
select schools.phone from schools inner join satscores on schools.cdscode = satscores.cds order by satscores.avgscrmath desc limit 1
sql placeholder
sql placeholder
select schools.school from satscores inner join schools on satscores.cds = schools.cdscode where satscores.cname = 'Contra Costa' group by schools.school order by count ( satscores.cds ) desc limit 1
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
sql placeholder
sql placeholder
select schools.admfname1 , schools.admlname2 from schools inner join satscores on schools.cdscode = satscores.cds where satscores.numge1500 group by schools.school order by count ( satscores.numge1500 ) desc limit 3
select schools.streetabr , schools.city , schools.state , schools.zip from satscores inner join schools on satscores.cds = schools.cdscode order by satscores.numge1500 asc limit 1
sql placeholder
sql placeholder
select schools.phone from schools inner join frpm on schools.cdscode = frpm.cdscode inner join satscores on frpm.cdscode = satscores.cds where satscores.dname = 'Fresno Unif' order by satscores.avgscrread asc limit 1
select schools.cdscode from satscores inner join schools on satscores.cds = schools.cdscode where schools.virtual = 'F' group by schools.cdscode order by avg ( satscores.avgscrread ) desc limit 5
sql placeholder
select satscores.avgscrmath , schools.county from satscores inner join schools on satscores.cds = schools.cdscode inner join frpm on schools.cdscode = frpm.cdscode order by satscores.avgscrmath asc limit 1
select satscores.avgscrwrite , schools.city from satscores inner join schools on satscores.cds = schools.cdscode where satscores.numge1500 group by schools.city order by count ( satscores.numge1500 ) desc limit 1
sql placeholder
sql placeholder
sql placeholder
select cast ( sum ( case when schools.district = 'Unified School District' then 1 else 0 end ) as real ) * 100 / sum ( case when schools.district = 'Elementary School District' then 1 else 0 end ) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.county = 'Orange'
select county , school name , closeddate from schools group by county order by count ( closeddate ) desc limit 1
select schools.mailstreet , schools.school from satscores inner join schools on satscores.cds = schools.cdscode order by satscores.avgscrmath desc limit 5 , 1
select schools.street , sname from satscores inner join schools on satscores.cds = schools.cdscode order by satscores.avgscrread asc limit 1
select count ( satscores.cds ) from satscores inner join schools on satscores.cds = schools.cdscode where schools.mailcity = 'Lakeport' and satscores.numge1500
select count ( * ) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.mailcity = 'Fresno'
select schools.mailzip , schools.admfname1 , schools.admfname2 from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.admfname1 = 'Avetik' and schools.admfname2 = 'Admfname3'
select cast ( sum ( case when county = 'Colusa' then 1 else 0 end ) as real ) * 100 / sum ( case when county = 'Humboldt' then 1 else 0 end ) from schools where mailstate = 'CA'
select count ( mailstate ) from schools where mailstate = 'California' and school = 'San Joaquin'
select schools.phone , schools.ext from schools inner join satscores on schools.cdscode = satscores.cds where satscores.avgscrwrite = ( select max ( avgscrwrite ) from satscores )
select phone , ext , school from schools where zip = 95203-3704
select website from schools where ( website = 'Mike Larson' and website = 'Dante Alvarez' ) or ( website = 'Dante Alvarez' and website = 'Mike Larson' )
sql placeholder
select count ( schools.charter ) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.city = 'Hickman' and schools.district = 'Elementary School District' and schools.doc = 52
sql placeholder
select schools.admfname1 , schools.city from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.charter = '00D2' group by schools.admfname1 , schools.city
select count ( cdscode ) from schools where charter = '00D4' and mailcity = 'Hickman'
select cast ( sum ( case when schools.fundingtype = 'Locally funded' then 1 else 0 end ) as real ) * 100 / count ( schools.cdscode ) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.county = 'Santa Clara'
select count ( schools.cdscode ) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.county = 'Stanislaus' and schools.fundingtype = 'Directly funded' and schools.county between '2001-01-01' and '2005-12-31'
select count ( cdscode ) from schools where city like 'San Francisco' and closeddate like '1989%'
sql placeholder
select schools.ncesdist from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.soc = 31 group by schools.ncesdist
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select schools.gsserved from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.city = 'Adolanto' group by schools.gsserved order by count ( schools.city ) desc limit 1
sql placeholder
sql placeholder
sql placeholder
select gsoffered from schools where longitude = ( select max ( longitude ) from schools )
sql placeholder
sql placeholder
sql placeholder
select district , county , school from schools where charter = 40
sql placeholder
select schools.admemail1 , schools.admemail2 , schools.school from satscores inner join schools on satscores.cds = schools.cdscode where satscores.numge1500 group by schools.school order by count ( sname ) desc limit 1
select count ( account.account_id ) from account inner join district on account.district_id = district.district_id inner join trans on account.account_id = trans.account_id where district.a3 = 'East Bohemia' and account.frequency = 'POPLATEK PO OBRATU'
select count ( account.account_id ) from account inner join district on account.district_id = district.district_id inner join loan on account.account_id = loan.account_id where district.a3 = 'Prague'
select avg ( 1996 ) from district where a12 = a13
select count ( * ) from client inner join district on client.district_id = district.district_id where district.a11 = 10000 and client.gender = 'F'
select count ( client.gender ) from client inner join district on client.district_id = district.district_id where district.a3 = 'North Bohemia' and district.a11 = 'North Bohemia' and client.gender = 'M'
select account.account_id , max ( trans.account_id ) - min ( trans.account_id ) from account inner join trans on account.account_id = trans.account_id inner join client on client.client_id = account.account_id where client.gender = 'F' order by client.birth_date asc limit 1
select account.account_id from client inner join account on client.client_id = account.account_id inner join district on account.district_id = district.district_id where district.a11 < client.birth_date order by district.a11 desc , client.gender desc limit 1
select count ( client.client_id ) from client inner join disp on client.client_id = disp.account_id inner join account on account.account_id = disp.account_id inner join card on disp.disp_id = card.disp_id where card.type = 'OWNER' and account.frequency = 'POPLATEK TYDNE'
select client.client_id from client inner join disp on client.client_id = disp.client_id where disp.type = 'DISPONENT'
select account.account_id , trans.amount from trans inner join account on trans.account_id = account.account_id inner join loan on account.account_id = loan.account_id where strftime ( '%Y' , loan.date ) = '1997' order by loan.amount asc limit 1
select account.account_id from loan inner join account on loan.account_id = account.account_id where loan.duration > 12 and account.date like '1993-06-23%' order by loan.amount desc limit 1
select count ( client.client_id ) from client inner join account on client.district_id = account.district_id inner join district on district.district_id = client.district_id where district.a2 = 'Slokolov' and strftime ( '%Y' , client.birth_date ) > '1950' and client.gender = 'F'
select account_id from account where date in ( select date from trans where strftime ( '%Y' , date ) = '1995' ) order by date asc limit 1
select distinct account.account_id from account inner join trans on account.account_id = trans.account_id where trans.amount > 3000 and strftime ( '%Y' , account.date ) < '1997'
select client.client_id from client inner join disp on client.client_id = disp.client_id inner join card on card.disp_id = disp.disp_id where card.issued = '1994-03'
select account.date from trans inner join account on trans.account_id = account.account_id where trans.amount = 840 and trans.date = '1998-10-14'
select account.account_id , district.district_id from account inner join district on account.district_id = district.district_id inner join loan on account.account_id = loan.account_id where loan.date = '1994-05-25'
select max ( trans.amount ) from card inner join client on card.card_id = client.client_id inner join disp on client.client_id = disp.client_id inner join trans on trans.trans_id = card.disp_id where card.issued = 1996-10-21
sql placeholder
select trans.amount from loan inner join trans on loan.account_id = trans.account_id inner join account on account.account_id = loan.account_id order by loan.amount desc limit 1
select count ( client.gender ) from client inner join account on client.district_id = account.district_id inner join district on district.district_id = client.district_id where district.a2 = 'Jesenik' and client.gender = 'F'
sql placeholder
select count ( account.account_id ) from district inner join account on district.district_id = account.district_id where district.a2 = 'Litomerice' and district.a3 = 'District' and district.a9 = 'District'
select district.a2 from client inner join account on client.client_id = account.account_id inner join district on district.district_id = account.district_id where client.gender = 'F' and client.birth_date = '1976-02-09'
sql placeholder
select account.account_id from client inner join account on client.client_id = account.account_id inner join district on client.district_id = district.district_id where district.a3 = 'Prague' order by client.client_id asc limit 1
select cast ( sum ( case when client.gender = 'M' then 1 else 0 end ) as real ) * 100 / count ( client.gender ) from client inner join district on client.district_id = district.district_id where district.a3 = 'South Bohemia' group by district.a4 order by count ( client.gender ) desc limit 1
select loan.amount * ( trans.amount - trans.balance ) / trans.balance from trans inner join account on trans.account_id = account.account_id inner join loan on account.account_id = loan.account_id where loan.date is not null and trans.date is not null order by trans.balance desc limit 1
select cast ( sum ( iif ( status = 'A' , amount , 0 ) ) as real ) * 100 / sum ( amount ) from loan
select cast ( sum ( case when loan.status = 'C' then 1 else 0 end ) as real ) * 100 / count ( * ) from loan inner join account on loan.account_id = account.account_id where loan.amount < 100000
sql placeholder
select account.account_id , account.frequency from district inner join account on district.district_id = account.district_id where district.a3 = 'east Bohemia' and district.a2 = 'west Bohemia' and district.a7 = 'east Bohemia' and account.date between 1995 and 2000
select account.account_id , account.date from account inner join district on account.district_id = district.district_id where district.a2 = 'Prachatice'
select district.a2 , district.a3 from loan inner join account on loan.account_id = account.account_id inner join district on account.district_id = district.district_id where loan.loan_id = 4990
select account.account_id , district.district_id , district.a3 from account inner join district on account.district_id = district.district_id inner join loan on account.account_id = loan.account_id where loan.amount > 300000
sql placeholder
sql placeholder
select cast ( sum ( case when district.a2 = 'Decin' then 1 else 0 end ) as real ) * 100 / count ( * ) from account inner join district on account.district_id = district.district_id where strftime ( '%Y' , account.date ) = '1993'
select account_id from account where frequency = 'POPLATEK MESICNE'
select district.district_id from client inner join account on client.client_id = account.account_id inner join district on district.district_id = account.district_id where client.gender = 'F' group by district.district_id order by count ( district.a2 ) desc limit 10
select district.district_id from card inner join trans on card.card_id = trans.trans_id inner join district on district.district_id = district.district_id where trans.date like '1996-01%' and trans.type = 'VYDAJ' group by district.district_id order by count ( card.type ) desc limit 10
select count ( client.client_id ) from district inner join client on district.district_id = client.district_id inner join disp on client.client_id = disp.client_id inner join card on disp.disp_id = card.disp_id where district.a3 = 'South Bohemia'
select district.a3 from loan inner join account on loan.account_id = account.account_id inner join district on account.district_id = district.district_id where loan.status = 'C' group by district.district_id order by count ( loan.status ) desc limit 1
select avg ( loan.amount ) from loan inner join client on loan.loan_id = client.client_id where client.gender = 'M'
sql placeholder
select count ( account.account_id ) from account inner join district on account.district_id = district.district_id where district.a16 = ( select a16 from district order by a16 desc limit 1 )
select count ( account.account_id ) from trans inner join account on trans.account_id = account.account_id where trans.operation = 'VYBER KARTOU' and account.frequency = 'POPLATEK MESICNE' and trans.balance < 0
select count ( loan.amount ) from loan inner join account on loan.account_id = account.account_id where loan.amount > 250000 and account.frequency = 'POPLATEK MESICNE' and loan.date between 1/1/1995 and 12/31/1997
sql placeholder
select count ( client.gender ) from client inner join district on client.district_id = district.district_id where district.a15 = ( select max ( district.a15 ) from district inner join client on district.district_id = client.district_id where client.gender = 'M' )
select count ( card.disp_id ) from card inner join disp on card.disp_id = disp.disp_id where card.type = 'gold' and disp.type = 'DISPONENT'
select count ( account.account_id ) from account inner join district on account.district_id = district.district_id where district.a2 = 'Pisek'
select district.a2 from trans inner join account on trans.account_id = account.account_id inner join district on account.district_id = district.district_id where trans.amount > 10000 and strftime ( '%Y' , trans.date ) = '1997'
sql placeholder
select distinct account.account_id from card inner join disp on card.disp_id = disp.disp_id inner join account on disp.account_id = account.account_id where card.type in ( 'gold' , 'junior' )
sql placeholder
sql placeholder
select client.client_id from card inner join disp on card.disp_id = disp.disp_id inner join client on disp.client_id = client.client_id inner join loan on disp.account_id = loan.account_id where client.gender = 'F'
select count ( client.client_id ) from client inner join account on client.client_id = account.account_id inner join district on client.district_id = district.district_id where district.a3 = 'south Bohemia' and client.gender = 'F'
select disp.account_id from district inner join client on district.district_id = client.district_id inner join disp on client.client_id = disp.client_id inner join loan on loan.account_id = disp.account_id where district.a2 = 'Tabor' and disp.type = 'OWNER'
select disp.type , avg ( loan.amount ) from disp inner join account on disp.account_id = account.account_id inner join loan on account.account_id = loan.account_id inner join district on account.district_id = district.district_id where district.a11 and district.a9 < 9000
select count ( account.account_id ) from trans inner join account on trans.account_id = account.account_id inner join district on district.district_id = account.district_id where district.a3 = 'North Bohemia' and trans.bank = 'AB'
select district.district_id from trans inner join account on trans.account_id = account.account_id inner join district on account.district_id = district.district_id where trans.type = 'VYDAJ'
select avg ( district.a15 ) from district inner join account on district.district_id = account.district_id where district.a3 > 4000 and account.date < 1997
select count ( card.card_id ) from card inner join disp on card.disp_id = disp.disp_id inner join loan on disp.account_id = loan.account_id where card.type = 'classic' and disp.type = 'OWNER'
select count ( client.client_id ) from client inner join district on client.district_id = district.district_id where district.a2 = 'Hl.m. Praha' and client.gender = 'M'
select cast ( sum ( case when type = 'gold' and strftime ( '%Y' , issued ) < 1998 then 1 else 0 end ) as real ) * 100 / count ( card_id ) from card
select disp.disp_id from disp inner join loan on disp.account_id = loan.account_id inner join client on disp.client_id = client.client_id order by loan.amount desc limit 1
select sum ( iif ( district.district_id = 532 , 1 , 0 ) ) from district inner join account on district.district_id = account.district_id where account.account_id = 532 and district.a15 = 15
sql placeholder
select trans.amount , trans.trans_id from trans inner join client on trans.trans_id = client.client_id where client.client_id = 3356 and trans.operation = 'VYBER'
select count ( account.account_id ) from account inner join loan on account.account_id = loan.account_id where loan.amount < 200000 and account.frequency = 'POPLATEK TYDNE'
select card.type from card inner join disp on card.disp_id = disp.disp_id inner join client on disp.client_id = client.client_id where client.client_id = 13539
select district.a3 from client inner join district on client.district_id = district.district_id where client.client_id = 3541
select district.a2 from loan inner join account on loan.account_id = account.account_id inner join district on district.district_id = account.district_id where loan.status = 'A' group by district.a2 order by count ( account.account_id ) desc limit 1
sql placeholder
select trans.trans_id from account inner join trans on account.account_id = trans.account_id inner join district on district.district_id = account.district_id where district.district_id = 5
select count ( account.account_id ) from account inner join district on account.district_id = district.district_id where district.a2 = 'Jesenik'
select client.client_id from client inner join disp on client.client_id = disp.client_id inner join card on disp.disp_id = card.disp_id where strftime ( '%Y' , card.issued ) >= '1996' and card.type = 'junior'
select cast ( sum ( case when client.gender = 'F' then 1 else 0 end ) as real ) * 100 / count ( client.gender ) from client inner join account on client.client_id = account.account_id inner join district on account.district_id = district.district_id inner join trans on account.account_id = trans.account_id where district.a11 = 10000
sql placeholder
select count ( * ) from trans inner join account on trans.account_id = account.account_id inner join card on card.card_id = account.account_id where trans.operation = 'VYBER KARTOU' and strftime ( '%Y' , trans.date ) >= '1995'
select sum ( case when 'North Bohemia' then 1 else 0 end ) - sum ( case when 'East Bohemia' then 1 else 0 end ) from district
select count ( disp.disp_id ) from disp inner join account on disp.account_id = account.account_id where account.account_id between 1 and 10 and disp.type = 'OWNER'
sql placeholder
select strftime ( '%Y' , client.birth_date ) from account inner join disp on account.account_id = disp.account_id inner join client on disp.client_id = client.client_id where disp.type = 'OWNER' and client.birth_date = '2013'
select count ( account.account_id ) from trans inner join disp on trans.account_id = disp.account_id inner join account on disp.account_id = account.account_id where disp.type = 'OWNER' and account.frequency = 'POPLATEK PO OBRATU'
select loan.amount , loan.status from client inner join loan on client.client_id = loan.loan_id where client.client_id = 992
select trans.amount , client.gender from trans inner join account on trans.account_id = account.account_id inner join client on account.account_id = client.client_id where trans.trans_id = 851 and client.client_id = 4
select card.type from card inner join disp on card.disp_id = disp.disp_id inner join client on disp.client_id = client.client_id where client.client_id = 9
sql placeholder
select client.client_id from client inner join account on client.district_id = account.district_id inner join district on district.district_id = client.district_id where district.a3 = 'east Bohemia' and client.birth_date between 1983 and 1987
select client.client_id from client inner join loan on client.client_id = loan.loan_id where client.gender = 'F' group by client.client_id order by sum ( loan.amount ) desc limit 3
sql placeholder
select count ( account.account_id ) from account inner join district on account.district_id = district.district_id where district.a2 = 'Beroun' and strftime ( '%Y' , account.date ) >= '1996'
select count ( client.gender ) from card inner join disp on card.disp_id = disp.disp_id inner join client on disp.client_id = client.client_id where card.type = 'junior' and client.gender = 'F'
select cast ( sum ( case when client.gender = 'F' then 1 else 0 end ) as real ) * 100 / count ( client.gender ) from client inner join account on client.client_id = account.account_id inner join district on account.district_id = district.district_id where district.a3 = 'Pragoenice'
select cast ( sum ( case when client.gender = 'M' then 1 else 0 end ) as real ) * 100 / count ( client.gender ) from client inner join disp on client.client_id = disp.client_id inner join account on disp.client_id = account.account_id where account.frequency = 'POPLATEK TYDNE'
select count ( client.client_id ) from account inner join client on account.account_id = client.client_id where account.frequency = 'POPLATEK TYDNE'
select account.account_id from loan inner join account on loan.account_id = account.account_id where loan.duration > 24 and account.date < 1997 order by loan.amount asc limit 1
select account.account_id from client inner join account on client.client_id = account.account_id inner join district on account.district_id = district.district_id inner join trans on account.account_id = trans.account_id where client.gender = 'F' order by district.a11 asc limit 1
select count ( client.client_id ) from client inner join district on client.district_id = district.district_id where district.a3 = 'east Bohemia' and client.birth_date = 1920
select count ( loan.account_id ) from loan inner join account on loan.account_id = account.account_id where loan.duration = 24 and account.frequency = 'POPLATEK TYDNE'
select avg ( loan.amount ) from trans inner join account on trans.account_id = account.account_id inner join loan on account.account_id = loan.account_id where loan.status = 'C' and account.frequency = 'POPLATEK PO OBRATU'
select client.client_id , district.district_id from client inner join disp on client.client_id = disp.client_id inner join district on client.district_id = district.district_id where disp.type = 'OWNER'
sql placeholder
select bond_type from bond group by bond_type order by count ( bond_type ) desc limit 1
select count ( molecule.molecule_id ) from molecule inner join atom on molecule.molecule_id = atom.molecule_id where atom.element = 'cl' and molecule.label = '-'
select cast ( sum ( case when atom.element = 'o' then 1 else 0 end ) as real ) / count ( atom.element ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where bond.bond_type = '-'
sql placeholder
select count ( molecule.molecule_id ) from molecule inner join atom on molecule.molecule_id = atom.molecule_id where atom.element = 'na' and molecule.label = '-'
select molecule.molecule_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.label = '+' and bond.bond_type = '#'
select cast ( sum ( case when atom.element = 'c' then 1 else 0 end ) as real ) * 100 / count ( atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id inner join molecule on molecule.molecule_id = bond.molecule_id where bond.bond_type = '= '= '= '= '= '
select count ( bond_type ) from bond where bond_type = '#'
select count ( atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element != 'br'
select count ( molecule_id ) from molecule where molecule_id between 'TR000' and 'TR099' and label = '+'
select molecule.molecule_id from atom inner join connected on atom.atom_id = connected.atom_id inner join molecule on molecule.molecule_id = atom.molecule_id where atom.element = 'si'
select atom.element from connected inner join atom on connected.atom_id = atom.atom_id inner join bond on atom.molecule_id = bond.molecule_id where bond.bond_id = 'TR004_8_9'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where bond.bond_type = '= 'and atom.element = 'cl' or atom.element = 'f' or atom.element = 'te' or atom.element = 'sn' or 'na' = 's' and atom.element = 'cl'
select bond.bond_type from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join bond on molecule.molecule_id = bond.molecule_id where atom.element = 'h' group by bond.bond_type order by count ( molecule.label ) desc limit 1
select bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 'te'
select connected.atom_id from bond inner join connected on bond.bond_id = connected.bond_id inner join atom on connected.atom_id = atom.atom_id where bond.bond_type = '-'
select distinct connected.atom_id from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id inner join molecule on molecule.molecule_id = bond.molecule_id where molecule.label = '-'
select atom.element from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.label = '-' group by atom.element order by count ( atom.element ) asc limit 1
select distinct bond.bond_type from connected inner join bond on connected.bond_id = bond.bond_id inner join atom on atom.atom_id = connected.atom_id2 where connected.atom_id = 'TR004_8' or connected.atom_id = 'TR004_20'
select distinct molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where atom.element != 'sn'
select count ( atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id inner join molecule on molecule.molecule_id = atom.molecule_id where atom.element = 'i' or atom.element = 's' and bond.bond_type = '-'
select connected.atom_id from connected inner join bond on connected.bond_id = bond.bond_id inner join atom on connected.atom_id = atom.atom_id where bond.bond_type = '#'
select connected.atom_id from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on connected.bond_id = bond.bond_id inner join molecule on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR181'
select cast ( sum ( case when atom.element = 'f' then 1 else 0 end ) as real ) * 100 / count ( molecule.molecule_id ) from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.label = '+'
select cast ( sum ( case when bond.bond_type = '#' then 1 else 0 end ) as real ) * 100 / count ( molecule.molecule_id ) from molecule inner join bond on molecule.molecule_id = bond.molecule_id
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where molecule.molecule_id = 'TR000' order by atom.element asc limit 3
select atom.atom_id from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id inner join molecule on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR001' and bond.bond_id = 'TR001_2_6'
select sum ( case when label = '+' then 1 else 0 end ) - sum ( case when label = '-' then 1 else 0 end ) from molecule
select connected.atom_id from connected inner join bond on connected.bond_id = bond.bond_id inner join atom on connected.atom_id = atom.atom_id where bond.bond_id = 'TR_000_2_5'
select connected.bond_id from atom inner join connected on atom.atom_id = connected.atom_id2 where connected.atom_id = 'TR000_2'
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '= 'order by molecule.label limit 5
select cast ( sum ( case when bond.bond_type = '= 'then 1 else 0 end ) as real ) * 100 / count ( bond.bond_type ) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR008'
select cast ( sum ( case when label = '+' then 1 else 0 end ) as real ) * 100 / count ( molecule_id ) from molecule
select cast ( sum ( case when atom.element = 'h' then 1 else 0 end ) as real ) * 100 / count ( atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR206'
select bond.bond_type from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR000'
select atom.element , molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where molecule.label = '+' and atom.element = 'cl'
select bond.bond_type , case when molecule.label = '+' then '-' else '+' end from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR018' group by bond.bond_type order by count ( bond.bond_type ) desc limit 1
sql placeholder
select bond.bond_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR006' order by bond.bond_id desc limit 2
sql placeholder
select count ( atom.molecule_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'br' and molecule.label = '+'
select bond.bond_type , atom.atom_id from connected inner join bond on connected.bond_id = bond.bond_id inner join atom on connected.atom_id = atom.atom_id where bond.bond_id = 'TR001_6_9'
select molecule.molecule_id , molecule.label from molecule inner join atom on molecule.molecule_id = atom.molecule_id inner join connected on atom.atom_id = connected.atom_id where atom.atom_id = 'TR001_10'
select count ( molecule_id ) from bond where bond_type = '#'
select count ( connected.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id where atom.atom_id like 'TR%_19'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where molecule.molecule_id = 'TR004'
select count ( molecule_id ) from molecule where label = '-'
select molecule.label from connected inner join atom on connected.atom_id = atom.atom_id inner join molecule on atom.molecule_id = molecule.molecule_id where substr ( atom.atom_id , 7 , 2 ) between 21 and 25 and molecule.label = '+'
select bond.bond_id from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 'p' or atom.element = 'n'
select case when molecule.label = '+' then 'NO' else 'YES' end from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '= 'group by molecule.molecule_id order by count ( bond.bond_id ) desc limit 1
select cast ( count ( bond.bond_id ) as real ) / count ( distinct atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 'i'
select bond.bond_type , bond.bond_id from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.atom_id = 45 and connected.atom_id = 7 and 2 + 0
select distinct atom.element from connected inner join atom on connected.atom_id = atom.atom_id inner join bond on atom.molecule_id = bond.molecule_id where atom.element = 'cl' or atom.element = 'c' and bond.bond_type = 'Nitrogen'
select atom.atom_id from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id inner join molecule on molecule.molecule_id = bond.molecule_id where bond.molecule_id = 'TR447' and bond.bond_type = '#'
select atom.element from connected inner join atom on connected.atom_id = atom.atom_id inner join bond on bond.molecule_id = atom.molecule_id where connected.bond_id = 'TR144_8_19'
select molecule.molecule_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.label = '+' and bond.bond_type = '= 'group by molecule.molecule_id order by count ( bond.bond_id ) desc limit 1
select atom.element from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.label = '+' group by atom.element order by count ( atom.element ) asc limit 1
select connected.atom_id from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 'pb'
select atom.element from connected inner join bond on connected.bond_id = bond.bond_id inner join atom on atom.atom_id = connected.atom_id where bond.bond_type = '#'
select cast ( count ( bond.bond_id ) as real ) * 100 / count ( distinct atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id group by atom.element order by count ( distinct atom.atom_id ) desc limit 1
select cast ( sum ( case when molecule.label = '+' then 1 else 0 end ) as real ) * 100 / count ( bond.bond_type ) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '-'
select count ( atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id where atom.element in ( 'c' , 'h' )
select connected.atom_id2 from atom inner join connected on atom.atom_id = connected.atom_id2 where atom.element = 's'
select distinct bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where atom.element = 'sn'
select count ( atom.element ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where bond.bond_type = '-'
select count ( atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id inner join molecule on molecule.molecule_id = bond.molecule_id where atom.element = 'p' or atom.element = 'br' and bond.bond_type = '#'
select bond.bond_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.label = '+'
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '-'
select cast ( sum ( case when atom.element = 'cl' then 1 else 0 end ) as real ) * 100 / count ( atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id inner join molecule on atom.molecule_id = molecule.molecule_id where bond.bond_type = '-'
select label from molecule where molecule_id in ( 'TR000' , 'TR001' , 'TR002' )
select molecule_id from molecule where label = '-'
select count ( label ) from molecule where molecule_id between 'TR000' and 'TR030' and label = '+'
select bond.bond_type from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id >= 'TR000' and molecule.molecule_id <= 'TR050'
select atom.element from connected inner join atom on connected.atom_id = atom.atom_id inner join bond on atom.molecule_id = bond.molecule_id where bond.bond_id = 'TR001_10_11'
select count ( connected.bond_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 'i'
select case when molecule.label = '+' then '-' else '+' end from molecule inner join atom on molecule.molecule_id = atom.molecule_id where atom.element = 'ca' group by molecule.label order by count ( molecule.label ) desc limit 1
select case when atom.element = 'cl' then 'yes' else 'no' end as yn from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where bond.bond_id = 'TR001_1_8'
select molecule.molecule_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id inner join atom on bond.bond_id = atom.atom_id where atom.element = 'c' and bond.bond_type = '#' and molecule.label = '-' limit 2
select cast ( sum ( case when atom.element = 'pb' then 1 else 0 end ) as real ) * 100 / count ( molecule.molecule_id ) from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.label = '+'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR001'
select molecule_id from bond where bond_type = '= '
select connected.atom_id , connected.atom_id2 from connected inner join bond on connected.bond_id = bond.bond_id inner join atom on atom.atom_id = connected.atom_id2 where bond.bond_type = '#'
select atom.element from connected inner join atom on connected.atom_id = atom.atom_id inner join bond on atom.molecule_id = bond.molecule_id where bond.bond_id = 'TR005_16_26'
select count ( molecule.molecule_id ) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '-' and molecule.label = '-'
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_id = 'TR001_10_11'
select bond.bond_id , molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '#'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where molecule.label = '+' and substr ( connected.atom_id , 7 , 1 ) = 4
select cast ( sum ( case when atom.element = 'h' then 1 else 0 end ) as real ) / sum ( case when molecule.label = '+' then 1 else 0 end ) as radio from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.molecule_id = 'TR006'
select case when molecule.label = '+' then '-' else '+' end from molecule inner join atom on molecule.molecule_id = atom.molecule_id where atom.element = 'ca'
select bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id inner join molecule on bond.molecule_id = molecule.molecule_id where atom.element = 'te'
sql placeholder
select cast ( sum ( case when bond_type = '#' then 1 else 0 end ) as real ) * 100 / count ( bond_id ) from bond
select cast ( sum ( case when bond.bond_type = '= 'then 1 else 0 end ) as real ) * 100 / count ( bond.bond_type ) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR047'
select case when molecule.label = '+' then 'NO' else 'YES' end from molecule inner join atom on molecule.molecule_id = atom.molecule_id inner join connected on atom.atom_id = connected.atom_id where atom.atom_id = 'TR001_1'
select case when label = '+' then 'NO' else 'YES' end from molecule where molecule_id = 'TR151'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where molecule.molecule_id = 'TR151'
select count ( label ) from molecule where label = '+'
select atom.atom_id from molecule inner join atom on molecule.molecule_id = atom.molecule_id inner join connected on atom.atom_id = connected.atom_id where atom.element = 'c' and molecule.molecule_id between 'TR010' and 'TR050' and atom.element = 'c'
select count ( atom.atom_id ) from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.label = '+'
select bond.bond_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.label = '+' and bond.bond_type = '= '
select count ( atom.atom_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'H' and molecule.label = '+'
sql placeholder
select atom.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'c' and molecule.label = '-'
select cast ( sum ( case when molecule.label = '+' then 1 else 0 end ) as real ) * 100 / count ( molecule.molecule_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'h'
select case when label = '+' then 'NO' else 'YES' end from molecule where molecule_id = 'TR124'
select atom.atom_id from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.atom_id = bond.bond_id inner join molecule on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR186'
select bond_type from bond where bond_id = 'TR007_4_19'
select atom.element from connected inner join atom on connected.atom_id = atom.atom_id inner join bond on atom.molecule_id = bond.molecule_id where bond.bond_id = 'TR001_2_4'
select count ( molecule.molecule_id ) , bond.bond_type from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR006' and bond.bond_type = '= '
select molecule.label , atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'cl' and molecule.label = '+'
select bond.bond_type , connected.atom_id from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where bond.bond_type = '-'
sql placeholder
select atom.element from connected inner join atom on connected.atom_id = atom.atom_id inner join bond on bond.molecule_id = atom.molecule_id where bond.bond_id = 'TR000_2_3'
select count ( bond.bond_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 'cl'
select atom.atom_id , bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id inner join molecule on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR346' group by atom.atom_id , bond.bond_type
select count ( molecule.molecule_id ) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '= 'and molecule.label = '+'
select count ( atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id inner join molecule on molecule.molecule_id = atom.molecule_id where atom.element = 's' and bond.bond_type != '= '= ''
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_id = 'TR001_2_4' and molecule.label = '+'
select count ( atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.molecule_id = 'TR005'
select count ( bond_id ) from bond where bond_type = '-'
select molecule.label from molecule inner join atom on molecule.molecule_id = atom.molecule_id where atom.element = 'cl'
select molecule.label from molecule inner join atom on molecule.molecule_id = atom.molecule_id where atom.element = 'c'
select cast ( sum ( case when atom.element = 'cl' then 1 else 0 end ) as real ) * 100 / count ( molecule.molecule_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id
select molecule_id from bond where bond_id = 'TR001_1_7'
select count ( atom.element ) from connected inner join atom on connected.atom_id = atom.atom_id inner join bond on atom.molecule_id = bond.molecule_id where bond.bond_id = 'TR001_3_4'
select distinct bond.bond_type from connected inner join bond on connected.bond_id = bond.bond_id inner join atom on connected.atom_id = atom.atom_id where connected.atom_id = 'TR000_1' or connected.atom_id = 'TR000_2'
select molecule.label from connected inner join atom on connected.atom_id = atom.atom_id inner join molecule on molecule.molecule_id = atom.molecule_id where connected.atom_id = 'TR000_2' and connected.atom_id = 'TR000_4'
select atom.element from connected inner join atom on connected.atom_id = atom.atom_id where connected.atom_id = 'TR000_1'
select case when label = '+' then 'NO' else 'YES' end from molecule where molecule_id = 'TR000'
select cast ( sum ( case when bond.bond_type = '-' then 1 else 0 end ) as real ) * 100 / count ( bond.bond_type ) from bond inner join connected on bond.bond_id = connected.bond_id
select count ( molecule.molecule_id ) from molecule inner join atom on molecule.molecule_id = atom.molecule_id where atom.element = 'n' and molecule.label = '+'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join bond on molecule.molecule_id = bond.molecule_id inner join connected on bond.bond_id = connected.bond_id where atom.element = 's' and bond.bond_type = '= '
select label from molecule where label = '-' group by label having count ( molecule_id ) > 5
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join bond on bond.bond_id = molecule.molecule_id where molecule.molecule_id = 'TR024' and bond.bond_type = '= '
select molecule.molecule_id from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.label = '+' group by atom.molecule_id order by count ( atom.atom_id ) desc limit 1
select cast ( sum ( case when molecule.label = '+' then 1 else 0 end ) as real ) * 100 / count ( molecule.molecule_id ) from molecule inner join bond on molecule.molecule_id = bond.molecule_id inner join atom on atom.atom_id = bond.bond_id where atom.element = 'h' and bond.bond_type = '#'
select count ( molecule_id ) from molecule where label = '+'
select count ( molecule.molecule_id ) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id between 'TR004' and 'TR010' and bond.bond_type = '-'
select count ( atom.element ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where atom.element = 'c' and molecule.molecule_id = 'TR008'
select atom.element from molecule inner join atom on molecule.molecule_id = atom.molecule_id inner join connected on atom.atom_id = connected.atom_id where connected.atom_id = 'TR004_7' and molecule.label = '-'
select count ( molecule.molecule_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id inner join molecule on molecule.molecule_id = atom.molecule_id where atom.element = 'o' and bond.bond_type = '= '= '= '= '2'
select count ( molecule.molecule_id ) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '#' and molecule.label = '-'
select atom.element , bond.bond_type from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join bond on bond.bond_id = molecule.molecule_id where molecule.molecule_id = 'TR016'
select atom.atom_id from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on bond.bond_id = connected.bond_id inner join molecule on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR012' and atom.element = 'c' and bond.bond_type = '= '= '= '
select atom.atom_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'o' and molecule.label = '+'
select name from cards where cardkingdomfoilid = ( select max ( cardkingdomfoilid ) from cards )
select distinct bordercolor from cards where bordercolor is not null and availability = ( select max ( availability ) from cards )
select name from cards where convertedmanacost = ( select max ( convertedmanacost ) from cards )
select name from cards where frameversion = 2015 and edhrecrank < 100
select cards.name from cards inner join legalities on cards.id = legalities.id where legalities.status = 'Banned' and legalities.format = 'gladiator' and cards.rarity = 'mythic'
select distinct legalities.status from cards inner join legalities on cards.uuid = legalities.uuid where cards.types = 'Artifact' and legalities.format = 'vintage'
select cards.id , cards.artist from cards inner join legalities on cards.id = legalities.uuid where legalities.format = 'commander' and legalities.status = 'Legal' and cards.power is null
select cards.name , rulings.text from cards inner join rulings on cards.id = rulings.uuid where cards.artist = 'Stephen Daniele' and cards.hascontentwarning = 1
select rulings.text from cards inner join rulings on cards.id = rulings.uuid where cards.name = 'Sublime Epiphany' and cards.number = '74s'
select cards.name , cards.artist , cards.ispromo from cards inner join rulings on cards.uuid = rulings.uuid where cards.ispromo = 1 group by cards.name , cards.artist order by count ( rulings.uuid ) desc limit 1
select distinct foreign_data.language from cards inner join set_translations on cards.id = set_translations.id inner join foreign_data on set_translations.language = cards.name where cards.number = 29 and cards.name = 'annul'
select distinct cards.name from cards inner join set_translations on cards.id = set_translations.id inner join foreign_data on foreign_data.language = set_translations.language where set_translations.language = 'Japanese'
select cast ( sum ( case when set_translations.language = 'Chinese Simplified' then 1 else 0 end ) as real ) * 100 / count ( cards.id ) from cards inner join set_translations on cards.id = set_translations.id
select sets.name , sets.totalsetsize from cards inner join set_translations on cards.id = set_translations.id inner join sets on sets.code = set_translations.setcode where set_translations.language = 'Italian'
select count ( types ) from cards where artist = 'Aaron Boyd'
select keywords from cards where name = 'Angel of Mercy'
select count ( name ) from cards where power = '*'
select distinct cards.promotypes from cards inner join sets on cards.id = sets.code where cards.name = 'Duress'
select bordercolor from cards where name = 'Ancestor''s Chosen'
select originaltype from cards where name = 'Ancestor''s Chosen'
select set_translations.language from cards inner join set_translations on cards.setcode = set_translations.setcode where cards.name = 'Angel of Mercy'
select count ( cards.id ) from cards inner join legalities on cards.id = legalities.id where legalities.status = 'Restricted' and cards.istextless = 0
select rulings.text from cards inner join rulings on cards.id = rulings.uuid where cards.name = 'Condemn'
select count ( cards.id ) from cards inner join legalities on cards.id = legalities.uuid where cards.isstarter = 1 and legalities.status = 'restricted'
select legalities.status from cards inner join legalities on cards.id = legalities.id where cards.name = 'Cloudchaser Eagle'
select distinct type from cards where name = 'Benalish Knight'
select legalities.format from cards inner join legalities on cards.id = legalities.uuid inner join rulings on rulings.id = rulings.uuid where cards.name = 'Benalish Knight'
select cards.artist from cards inner join foreign_data on cards.id = foreign_data.uuid where foreign_data.language = 'Phyrexian'
select cast ( sum ( case when bordercolor = 'borderless' then 1 else 0 end ) as real ) * 100 / count ( id ) from cards
select count ( cards.id ) from cards inner join set_translations on cards.id = set_translations.id inner join foreign_data on set_translations.language = foreign_data.language where cards.isreprint = 1
select count ( cards.id ) from cards inner join set_translations on cards.id = set_translations.id where set_translations.language = 'Russian' and cards.bordercolor = 'borderless'
select cast ( sum ( case when set_translations.language = 'French' then 1 else 0 end ) as real ) * 100 / count ( cards.id ) from cards inner join set_translations on cards.id = set_translations.id where cards.isstoryspotlight = 1
select count ( id ) from cards where toughness = 99
select name from cards where artist = 'Aaron Boyd'
select count ( id ) from cards where bordercolor = 'black' and availability = 'mtgo'
select id from cards where convertedmanacost = 0
select layout from cards where keywords = 'flying'
select count ( name ) from cards where originaltype = 'Summon - Angel' and subtypes != 'Angel'
select id from cards where cardkingdomfoilid is not null and power = 1
select name , id from cards where dueldeck = 'a'
select edhrecrank from cards where frameversion = 2015
select cards.artist from cards inner join set_translations on cards.id = set_translations.id where set_translations.language = 'Chinese Simplified'
select cards.name from cards inner join set_translations on cards.id = set_translations.id where set_translations.language = 'Japanese' and cards.availability = 'paper'
select count ( cards.name ) from cards inner join legalities on cards.id = legalities.id where legalities.status = 'Banned' and cards.bordercolor = 'white'
select distinct cards.uuid , foreign_data.language from cards inner join legalities on cards.uuid = legalities.uuid inner join foreign_data on cards.uuid = foreign_data.uuid where legalities.format = 'legacy'
select rulings.text from cards inner join rulings on cards.id = rulings.uuid where cards.name = 'Beacon of Immortality'
select count ( cards.id ) , legalities.status from cards inner join legalities on cards.id = legalities.id where cards.frameversion = 'future'
select cards.id , cards.colors from sets inner join cards on sets.id = cards.setcode where sets.code = 'OGW'
select set_translations.translation , set_translations.language from cards inner join set_translations on cards.id = set_translations.setcode where cards.setcode = '10E' and cards.convertedmanacost = 5
select cards.name , rulings.date from cards inner join rulings on cards.id = rulings.id where cards.originaltype = 'Creature - Elf'
select distinct cards.colors , legalities.format from cards inner join legalities on cards.id = legalities.id where cards.id >= 1 and cards.id <= 20
select cards.name from cards inner join set_translations on cards.id = set_translations.id inner join foreign_data on set_translations.language = foreign_data.language where cards.originaltype = 'Artifact' and cards.colors = 'B'
select cards.name from cards inner join rulings on cards.id = rulings.id where cards.rarity = 'uncommon' order by rulings.date asc limit 3
select count ( id ) from cards where artist = 'John Avon' and cardkingdomfoilid is not null and cardkingdomid is not null
select count ( id ) from cards where cardkingdomfoilid = cardkingdomid and bordercolor = 'white'
select count ( name ) from cards where artist = 'UDON' and availability = 'mtgo' and hand = -1
select count ( id ) from cards where frameversion = 1993 and availability = 'paper' and hascontentwarning = 1
select manacost from cards where frameversion = 2003 and layout = 'normal' and bordercolor = 'black' and availability = 'mtgo'
select convertedmanacost from cards where artist = 'Rob Alexander'
select distinct subtypes , supertypes from cards where availability = 'arena'
select distinct cards.setcode from cards inner join set_translations on cards.id = set_translations.setcode where set_translations.language = 'Spanish'
select cast ( sum ( case when hand = +3 then 1 else 0 end ) as real ) * 100 / count ( id ) from cards where frameeffects = 'legendary'
select cast ( sum ( case when isstoryspotlight = 1 then 1 else 0 end ) as real ) * 100 / count ( id ) from cards
select cast ( sum ( case when set_translations.language = 'Spanish' then 1 else 0 end ) as real ) * 100 / count ( cards.name ) , cards.name from cards inner join set_translations on cards.id = set_translations.id inner join sets on cards.id = set_translations.id
select distinct set_translations.language from sets inner join set_translations on sets.code = set_translations.setcode where sets.basesetsize = 309
select count ( sets.code ) from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Portuguese (Brasil)' and sets.block = 'Commander'
select cards.id from cards inner join legalities on cards.id = legalities.id where cards.types = 'Creature' and legalities.status = 'legal'
select distinct cards.types from cards inner join set_translations on cards.id = set_translations.setcode where set_translations.language = 'German' and cards.subtypes is not null and cards.supertypes is not null
select count ( id ) from cards where power is null or power = '*'
select count ( distinct cards.id ) from cards inner join legalities on cards.id = legalities.id inner join rulings on cards.uuid = rulings.uuid where legalities.format = 'Pre-modern' and rulings.text = 'This is a triggered mana ability' and cards.side is null
select id from cards where artist = 'Erica Yang' and availability = 'paper'
select artist from cards where text = 'Das perfekte Gegenmittel zu einer dichten Formation'
select foreign_data.name from cards inner join foreign_data on cards.id = foreign_data.id where foreign_data.type = 'Creature' and cards.artist = 'Matthew D. Wilson' and cards.bordercolor = 'black' and foreign_data.language = 'French'
select count ( cards.uuid ) from cards inner join rulings on cards.uuid = rulings.uuid where rulings.date = '2009-01-10' and cards.rarity = 'rare'
select set_translations.language from sets inner join set_translations on sets.code = set_translations.setcode where sets.block = 'Ravnica' and sets.basesetsize = 180
select cast ( sum ( case when cards.hascontentwarning = 0 then 1 else 0 end ) as real ) * 100 / count ( cards.id ) from cards inner join legalities on cards.id = legalities.uuid where legalities.format = 'commander' and legalities.status = 'legal'
select cast ( sum ( case when cards.power = '*' then 1 else 0 end ) as real ) * 100 / count ( cards.power ) from cards inner join set_translations on cards.id = set_translations.id inner join foreign_data on cards.id = set_translations.id where set_translations.language = 'French'
select cast ( sum ( case when sets.type = 'expansion' then 1 else 0 end ) as real ) * 100 / count ( set_translations.setcode ) from set_translations inner join sets on set_translations.setcode = sets.code where set_translations.language = 'Japanese'
select printings from cards where artist = 'Daren Bader'
select count ( id ) from cards where edhrecrank > 12000 and bordercolor = 'borderless'
select count ( id ) from cards where isoversized = 1 and isreprint = 1 and ispromo = 1
select cards.name from cards inner join sets on cards.id = sets.id where sets.type = 'arenaleague' and cards.power is null or cards.power = '*' order by cards.name asc limit 3
select foreign_data.language from cards inner join foreign_data on cards.id = foreign_data.id where cards.multiverseid = 149934
select id from cards where cardkingdomfoilid is not null and cardkingdomid is not null order by power desc limit 3
select cast ( sum ( case when layout = 'normal' then 1 else 0 end ) as real ) * 100 / count ( istextless ) from cards where istextless = 1
select id from cards where side is null and subtypes like 'Angel' and 'Wizard'
select name from sets where mtgocode = '' or mtgocode is null order by name asc limit 3
select set_translations.language from sets inner join set_translations on sets.code = set_translations.setcode where sets.mcmname = 'Archenemy' and set_translations.setcode = 'ARC'
select sets.name , set_translations.translation from sets inner join set_translations on sets.code = set_translations.setcode where sets.id = 5
select foreign_data.language , sets.type from sets inner join set_translations on sets.code = set_translations.setcode inner join foreign_data on set_translations.id = foreign_data.id where sets.id = 206
select sets.id from sets inner join set_translations on sets.code = set_translations.setcode where sets.block = 'Shadowmoor' and set_translations.language = 'I' order by sets.name desc limit 2
select sets.id from sets inner join set_translations on sets.code = set_translations.setcode where sets.isforeignonly = 1 and sets.isfoilonly = 1 and set_translations.language = 'Japanese'
select sets.name from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Russian' order by sets.basesetsize desc limit 1
select cast ( sum ( case when sets.isonlineonly = 1 then 1 else 0 end ) as real ) * 100 / count ( cards.id ) from cards inner join set_translations on cards.id = set_translations.id inner join sets on set_translations.setcode = sets.code where set_translations.language = 'Chinese Simplified'
select count ( sets.code ) from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Japanese' and sets.mtgocode is null or sets.mtgocode = ''
select count ( id ) from cards where bordercolor = 'black'
select count ( id ) from cards where frameeffects = 'extendedart'
select name from cards where isfullart = 1 and bordercolor = 'black'
select language from set_translations where id = 174
select sets.name from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.setcode = 'ALL'
select foreign_data.language from sets inner join foreign_data on sets.id = foreign_data.id where foreign_data.name = 'A Pedra Fellwar'
select code from sets where releasedate = '2007-07-13'
select basesetsize , code from sets where block in ( 'Masques' , 'Mirage' )
select code from sets where type = 'expansion'
select distinct foreign_data.name , cards.type from cards inner join foreign_data on cards.id = foreign_data.uuid where cards.watermark = 'boros'
select foreign_data.language , foreign_data.flavortext , cards.type from cards inner join foreign_data on cards.id = foreign_data.id where cards.watermark = 'Colorpie'
select cast ( sum ( case when cards.convertedmanacost = 10 then 1 else 0 end ) as real ) * 100 / count ( cards.convertedmanacost ) from cards inner join sets on cards.id = sets.id where sets.name = 'Abyssal Horror'
select distinct sets.code from sets inner join cards on sets.code = cards.setcode where sets.type = 'expansion'
select distinct foreign_data.name , cards.type from cards inner join foreign_data on cards.uuid = foreign_data.uuid where cards.watermark = 'Abzan'
select foreign_data.language , cards.type from cards inner join foreign_data on cards.id = foreign_data.id inner join set_translations on cards.id = set_translations.setcode where cards.watermark = 'azorius'
select count ( power ) from cards where artist = 'Aaron Miller' and cardkingdomfoilid = cardkingdomid is not null and power = 'incredible'
select count ( name ) from cards where availability like '%paper%' and hand = '+%'
select name from cards where istextless = 0
select convertedmanacost from cards where name = 'Ancestor%s Chosen'
select count ( id ) from cards where bordercolor = 'white' and power = '*'
select name from cards where ispromo = 1 and side is not null group by name
select subtypes , supertypes from cards where name = 'Molimo , Maro-Sorcerer'
select purchaseurls from cards where promotypes = 'bundle'
select count ( artist ) from cards where bordercolor = 'black' and availability like '%arena% and mtgo%'
select name from cards where name = 'Serra Angel' or name = 'Shrine Keeper' order by convertedmanacost desc limit 1
select artist from cards where flavorname = 'Battra , Dark Destroyer'
select name from cards where frameversion = '2003' order by convertedmanacost desc limit 3
select set_translations.language from cards inner join set_translations on cards.id = set_translations.setcode inner join foreign_data on set_translations.id = foreign_data.id where cards.name = 'Ancestor''s Chosen'
select count ( set_translations.translation ) from cards inner join set_translations on cards.id = set_translations.setcode where cards.name = 'Angel of Mercy'
select cards.name from cards inner join set_translations on cards.id = set_translations.id where set_translations.translation = 'Hauptset Zehnte Edition'
select set_translations.language from cards inner join set_translations on cards.id = set_translations.setcode inner join sets on sets.code = set_translations.setcode inner join foreign_data on sets.id = foreign_data.id where cards.name = 'Ancestor''s Chosen' and set_translations.language = 'Korean'
select count ( cards.id ) from cards inner join set_translations on cards.id = set_translations.id where cards.artist = 'Adam Rex' and set_translations.translation = 'Hauptset Zehnte Edition'
select sets.basesetsize from sets inner join set_translations on sets.id = set_translations.setcode where set_translations.translation = 'Hauptset Zehnte Edition'
select set_translations.translation from cards inner join set_translations on cards.id = set_translations.id inner join sets on set_translations.setcode = sets.code where sets.name = 'Eighth Edition' and set_translations.language = 'Simplified Chinese'
select case when sets.mtgocode is not null then 'No' else 'Yes' end from sets inner join cards on sets.code = cards.setcode where cards.name = 'Angel of Mercy'
select sets.releasedate from cards inner join sets on cards.id = sets.code where cards.name = 'Ancestor''s Chosen'
select distinct sets.type from sets inner join set_translations on sets.code = set_translations.setcode inner join cards on sets.code = cards.setcode where set_translations.translation = 'Hauptset Zehnte Edition'
select count ( set_translations.id ) from sets inner join set_translations on sets.id = set_translations.setcode where sets.block = 'Ice Age' and set_translations.language = 'Italian'
select sets.isforeignonly from cards inner join sets on cards.id = sets.id where cards.name = 'Adarkar Valkyrie'
sql placeholder
select count ( cards.id ) from cards inner join sets on cards.id = sets.id where sets.name = 'Coldsnap' and cards.bordercolor = 'black'
select cards.name from sets inner join cards on sets.id = cards.id where sets.name = 'Coldsnap' order by cards.convertedmanacost desc limit 1
select cards.artist from cards inner join sets on cards.id = sets.id where sets.name = 'Coldsnap' and cards.artist in ( 'Jeremy Jarvis' , 'Aaron Miller' , 'Chippy' )
select cards.name from cards inner join sets on cards.setcode = sets.code where sets.name = 'Coldsnap' and cards.number = 4
select count ( cards.id ) from cards inner join set_translations on cards.id = set_translations.id where set_translations.translation = 'Coldsnap' and cards.manacost > 5 and cards.power = '*' or 'T1'
select foreign_data.flavortext from cards inner join foreign_data on cards.id = foreign_data.flavortext where cards.name = 'Ancestor''s Chosen' and foreign_data.language = 'Italian'
select distinct foreign_data.language from cards inner join foreign_data on cards.id = foreign_data.id where cards.name = 'Ancestor''s Chosen' and cards.flavortext is not null
sql placeholder
select rulings.text from sets inner join set_translations on sets.id = set_translations.setcode inner join rulings on rulings.id = set_translations.setcode where sets.name = 'Coldsnap' and set_translations.language = 'Italian'
select cards.name from cards inner join set_translations on cards.id = set_translations.setcode inner join sets on set_translations.id = sets.code where sets.name = 'Coldsnap' and set_translations.language = 'Italian' order by cards.convertedmanacost desc limit 1
select rulings.date from cards inner join rulings on cards.id = rulings.id where cards.name = 'Reminisce'
select cast ( sum ( case when set_translations.translation = 'Coldsnap' then 1 else 0 end ) as real ) * 100 / count ( cards.id ) from cards inner join set_translations on cards.id = set_translations.id where set_translations.translation = 'Coldsnap'
select cast ( sum ( case when cardKingdomFoilId is not null then 1 else 0 end ) as real ) * 100 / count ( cards.id ) from cards inner join set_translations on cards.id = set_translations.id where set_translations.translation = 'Coldsnap'
select code from sets where releasedate = '2017-07-14'
select keyrunecode from sets where code = 'PKHC'
select cards.mcmid from cards inner join sets on cards.id = sets.mcmid where sets.code = 'SS2'
select sets.mcmname from cards inner join sets on cards.mcmid = sets.mcmid where sets.releasedate = '2017-06-09'
select sets.type from cards inner join sets on cards.name = sets.code where sets.name = 'From the Vault: Lore'
select parentcode from sets where name = 'Commander 2014 Oversized'
select rulings.text , cards.hascontentwarning from cards inner join rulings on cards.id = rulings.uuid where cards.artist = 'Jim Pavelec'
select sets.releasedate from cards inner join sets on cards.id = sets.id where cards.name = 'Evacuation'
select sets.basesetsize from sets inner join set_translations on sets.id = set_translations.setcode where set_translations.translation = 'Rinascita di Alara'
select sets.type from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Huitième édition'
sql placeholder
select count ( set_translations.translation ) from sets inner join set_translations on sets.code = set_translations.setcode where sets.name = 'Salvat 2011'
select sets.name from cards inner join set_translations on cards.id = set_translations.setcode inner join sets on sets.code = set_translations.setcode inner join foreign_data on set_translations.id = foreign_data.id where cards.name = 'Fellwar Stone' and set_translations.language = 'Japanese'
select cards.name from sets inner join cards on sets.id = cards.id where sets.name = 'Journey into Nyx Hero''s Path' order by cards.convertedmanacost desc limit 1
select sets.releasedate from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Ola de fro'
select sets.type from cards inner join sets on cards.id = sets.code where cards.name = 'Samite Pilgrim'
select count ( cards.id ) from sets inner join cards on sets.id = cards.id where sets.name = 'World Championship Decks 2004' and cards.convertedmanacost = 3
select set_translations.translation from sets inner join set_translations on sets.id = set_translations.id where sets.name = 'Mirrodin' and set_translations.language = 'Chinese Simplified'
select cast ( sum ( case when sets.isnonfoilonly = 1 then 1 else 0 end ) as real ) * 100 / count ( sets.id ) from sets inner join set_translations on sets.id = set_translations.id where set_translations.language = 'Japanese'
select cast ( sum ( case when set_translations.language = 'Portuguese (Brazil)' then 1 else 0 end ) as real ) * 100 / count ( cards.id ) from cards inner join set_translations on cards.id = set_translations.setcode where set_translations.language = 'Portuguese (Brazil)'
select distinct printings from cards where artist = 'Aleksi Briclot' and istextless = 1
select id from sets where basesetsize = ( select max ( basesetsize ) from sets )
select artist from cards where side is null order by convertedmanacost desc limit 1
select frameeffects from cards where cardkingdomfoilid is not null group by cardkingdomfoilid order by sum ( frameeffects ) desc limit 1
select count ( id ) from cards where dueldeck = 'a' and hasfoil = 0 and power = '*'
select id from sets where block = 'commander' order by totalsetsize desc limit 1
select cards.name from cards inner join legalities on cards.id = legalities.id where legalities.format = 'duel' order by cards.manacost desc limit 10
select cards.originalreleasedate , legalities.format from cards inner join legalities on cards.id = legalities.uuid where cards.rarity = 'mythic' and legalities.status = 'legal' order by cards.originalreleasedate asc limit 1
select count ( cards.id ) from cards inner join set_translations on cards.id = set_translations.id inner join foreign_data on cards.uuid = set_translations.id where cards.artist = 'Volkan Baga' and set_translations.language = 'French'
select count ( cards.name ) from cards inner join legalities on cards.id = legalities.uuid where legalities.status = 'Legal' and cards.name = 'Abundance' and cards.rarity = 'rare' and cards.types = 'Enchantment'
select legalities.format , cards.name from cards inner join legalities on cards.uuid = legalities.uuid where legalities.status = 'banned' group by legalities.format , cards.name order by count ( legalities.status ) desc limit 1
select set_translations.language from sets inner join set_translations on sets.code = set_translations.setcode where sets.name = 'Battlebond'
select cards.artist , legalities.format from cards inner join legalities on cards.id = legalities.id group by cards.artist , legalities.format order by count ( cards.id ) asc limit 1
sql placeholder
select cards.name , legalities.format from cards inner join legalities on cards.id = legalities.uuid where cards.edhrecrank = 1 and legalities.status = 'banned'
select avg ( sets.id ) , set_translations.language from sets inner join set_translations on sets.code = set_translations.setcode where sets.releasedate between '2012-01-01' and '2015-12-31' group by sets.id order by count ( sets.id ) desc limit 1
select artist from cards where bordercolor = 'black' and availability = 'arena'
select cards.uuid from cards inner join legalities on cards.uuid = legalities.uuid where legalities.status = 'banned' or'restricted' and legalities.format = 'oldschool'
select count ( name ) from cards where artist = 'Matthew D. Wilson' and availability = 'paper'
select rulings.text , rulings.date from cards inner join rulings on cards.id = rulings.uuid where cards.artist = 'Kev Walker' order by rulings.date desc limit 1
select cards.name , legalities.format from cards inner join legalities on cards.id = legalities.uuid inner join sets on legalities.id = sets.id where sets.name = 'Hour of Devastation'
select sets.name from sets inner join set_translations on sets.id = set_translations.setcode where set_translations.language not like '%Japanese%' and set_translations.translation = 'Korean'
select distinct cards.frameversion , legalities.status from cards inner join legalities on cards.id = legalities.id where cards.artist = 'Allen Williams' and legalities.status = 'banned'
select displayname from users where displayname in ( 'Harlan' , 'Jarrod Dixon' ) order by reputation desc limit 1
select displayname from users where strftime ( '%Y' , creationdate ) = '2014'
select count ( id ) from users where lastaccessdate > '2014-09-01 00:00:00'
select displayname from users order by views desc limit 1
select count ( id ) from users where upvotes > 100 and downvotes > 1
select count ( accountid ) from users where strftime ( '%Y' , creationdate ) > '2013' and views > 10
select count ( posts.id ) from users inner join posts on users.id = posts.owneruserid where users.displayname = 'csgillespie'
select posts.title from posts inner join users on posts.owneruserid = users.id where users.displayname = 'csgillespie'
select posts.ownerdisplayname from posts inner join users on posts.owneruserid = users.id where posts.title = 'Eliciting priors FROM experts'
select posts.title from users inner join posts on users.id = posts.owneruserid where users.displayname = 'csgillespie' order by posts.viewcount desc limit 1
select users.displayname from posts inner join users on posts.owneruserid = users.id order by posts.favoritecount desc limit 1
select sum ( posts.commentcount ) from posts inner join comments on posts.owneruserid = comments.userid where posts.ownerdisplayname = 'csgillespie'
select posts.answercount from posts inner join users on posts.owneruserid = users.id where posts.ownerdisplayname = 'csgillespie' order by posts.answercount desc limit 1
select users.displayname from posts inner join users on posts.lasteditoruserid = users.id where posts.title = 'Examples for teaching: Correlation does not mean causation'
select count ( posts.owneruserid ) from posts inner join users on posts.owneruserid = users.id where posts.parentid is null
select distinct users.displayname from posts inner join users on posts.owneruserid = users.id where posts.closeddate is not null
sql placeholder
select users.location from posts inner join users on posts.owneruserid = users.id where posts.title = 'Eliciting priors FROM experts'
select posts.body from tags inner join posts on tags.excerptpostid = posts.id where tags.tagname = 'bayesian'
select posts.body from tags inner join posts on tags.excerptpostid = posts.id order by tags.count desc limit 1
select count ( badges.name ) from badges inner join users on badges.userid = users.id where users.displayname = 'csgillespie'
select badges.name from badges inner join users on badges.userid = users.id where users.displayname = 'csgillespie'
select count ( badges.name ) from badges inner join users on badges.userid = users.id where users.displayname = 'csgillespie' and badges.date = 2011
select users.displayname from badges inner join users on badges.userid = users.id group by badges.userid order by count ( badges.id ) desc limit 1
select avg ( posts.score ) from posts inner join users on posts.owneruserid = users.id where users.displayname = 'csgillespie'
select cast ( count ( badges.id ) as real ) / count ( distinct posts.ownerdisplayname ) from badges inner join users on badges.userid = users.id inner join posts on users.id = posts.owneruserid where users.views > 200
select cast ( count ( case when users.age > 65 then 1 else null end ) as real ) * 100 / count ( posts.owneruserid ) from users inner join posts on users.id = posts.owneruserid where posts.score > 20
select count ( votes.userid ) from users inner join votes on users.id = votes.userid where users.creationdate = '2010-07-19' and users.id = 58
select creationdate from votes group by creationdate order by count ( id ) desc limit 1
select count ( id ) from badges where name = 'Revival'
select posts.title from comments inner join posts on comments.postid = posts.id order by comments.score desc limit 1
select count ( commentcount ) from posts where viewcount = 1910
select posts.favoritecount from comments inner join posts on comments.postid = posts.id where comments.userid = '3025' and posts.creaiondate = '2014-04-23 20:29:39.0'
select comments.text from comments inner join posts on comments.postid = posts.id where posts.parentid = 107829 and posts.commentcount = 1 limit 1
sql placeholder
select users.reputation from posts inner join users on posts.owneruserid = users.id where posts.id = 65041
select count ( posts.id ) from users inner join posts on users.id = posts.owneruserid where users.displayname = 'Tiago Pasqualini'
select users.displayname from votes inner join users on votes.userid = users.id where votes.id = 6347
select sum ( votes.id ) from posts inner join votes on posts.id = votes.postid where posts.title = 'About data visualization'
select badges.name from users inner join badges on users.id = badges.userid where users.displayname = 'DatEpicCoderGuyWhoPrograms'
select cast ( count ( posts.id ) as real ) / count ( distinct votes.id ) from posts inner join votes on votes.userid = posts.owneruserid where posts.owneruserid = 24
select users.views from posts inner join users on posts.id = users.id where posts.title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
select text from comments where score = 17
select displayname from users where websiteurl = 'http://stackoverflow.com'
select badges.name from users inner join badges on users.id = badges.userid where users.displayname = 'SilentGhost'
select users.displayname from comments inner join users on comments.userid = users.id where comments.text = 'thank you user93!'
select comments.text from users inner join comments on users.id = comments.userid where users.displayname = 'A Lion'
select users.displayname , users.reputation from posts inner join users on posts.owneruserid = users.id where posts.title = 'Understanding what Dassault iSight is doing?'
select comments.text from comments inner join posts on comments.postid = posts.id where posts.title = 'How does gentle boosting differ from AdaBoost?'
select users.displayname from badges inner join users on badges.userid = users.id where badges.name = 'Necromancer' limit 10
select posts.owneruserid from posts inner join users on posts.owneruserid = users.id where posts.title = 'Open source tools for visualizing multi-dimensional data'
select posts.title from users inner join posthistory on users.id = posthistory.userid inner join posts on posthistory.postid = posts.id where users.displayname = 'Vebjorn Ljosa'
select posts.score , users.websiteurl from posts inner join users on posts.owneruserid = users.id inner join comments on posts.id = comments.postid where posts.lasteditoruserid = 1 and users.displayname = 'Yevgeny'
select comments.text from comments inner join posts on comments.postid = posts.id where posts.title = 'Why square the difference instead of taking the absolute value in standard deviation?'
select sum ( votes.bountyamount ) from posts inner join votes on votes.id = posts.id where posts.title = 'Data'
sql placeholder
select avg ( posts.viewcount ) , posts.title , comments.text from tags inner join posts on tags.id = posts.id inner join comments on posts.id = comments.postid where tags.tagname = 'humor'
select count ( id ) from comments where userid = 13
select id from users order by reputation desc limit 1
select id from users order by views asc limit 1
select count ( distinct users.id ) from badges inner join users on badges.userid = users.id where badges.name = 'Supporter' and strftime ( '%Y' , badges.date ) = '2011'
select count ( * ) from ( select userid from badges group by userid having count ( name ) > 5 )
select count ( users.id ) from badges inner join users on badges.userid = users.id where badges.name in ( 'Teachers' , 'Supporter' ) and users.location = 'NYC'
select posts.owneruserid , users.reputation from posts inner join users on posts.owneruserid = users.id where posts.id = 1
select distinct users.id from users inner join posthistory on users.id = posthistory.userid where users.views >= 1000
select badges.name from comments inner join badges on comments.userid = badges.userid group by badges.userid order by count ( comments.id ) desc limit 1
select count ( users.id ) from badges inner join users on badges.userid = users.id where badges.name = 'Teacher' and users.location = 'India'
select cast ( count ( case when strftime ( '%Y' , date ) = '2010' then 1 else null end ) as real ) * 100 / count ( name ) - cast ( count ( case when strftime ( '%Y' , date ) = '2011' then 1 else null end ) as real ) * 100 / count ( name ) from badges
sql placeholder
select posts.viewcount from posts inner join postlinks on posts.id = postlinks.relatedpostid where postlinks.postid = 61217
select comments.score , postlinks.linktypeid from comments inner join postlinks on comments.postid = postlinks.postid where comments.postid = 395
select distinct posts.id , posts.owneruserid from comments inner join posts on comments.postid = posts.id where comments.score > 60
sql placeholder
sql placeholder
select count ( users.id ) from badges inner join users on badges.userid = users.id where badges.name = 'Announcer'
select badges.name from badges inner join users on badges.userid = users.id where badges.date = '2010-07-19 19:39:08'
select count ( score ) from comments where score > 60
select text from comments where creationdate = '2010-07-19 19:16:14.0'
select count ( id ) from posts where score = 10
select distinct badges.name from badges inner join users on badges.userid = users.id where users.reputation = ( select max ( reputation ) from users )
select users.reputation from badges inner join users on badges.userid = users.id where badges.date = '2010-07-19 19:39:08.0'
select badges.name from users inner join badges on users.id = badges.userid where users.displayname = 'Pierre'
select badges.date from users inner join badges on users.id = badges.userid where users.location = 'Rochester , NY'
select cast ( count ( case when badges.name = 'Teacher' then users.id else null end ) as real ) * 100 / count ( badges.userid ) from badges inner join users on badges.userid = users.id
select cast ( sum ( case when users.age between 13 and 18 then 1 else 0 end ) as real ) * 100 / count ( users.id ) from badges inner join users on badges.userid = users.id where badges.name = 'Organizer'
select comments.score from comments inner join posts on comments.postid = posts.id where posts.creaiondate = '2010-07-19 19:19:56.0'
select text from comments where creationdate = '2010-07-19 19:37:33.0'
select distinct users.age from badges inner join users on badges.userid = users.id where badges.name = 'Vienna , Austria' and users.location = 'Vienna , Austria'
select count ( users.age ) from badges inner join users on badges.userid = users.id where badges.name = 'Supporter' and users.age between 19 and 65
select distinct users.views from badges inner join users on badges.userid = users.id where badges.date = '2010-07-19 19:39:08.0'
select distinct badges.name from badges inner join users on badges.userid = users.id where users.reputation = ( select min ( reputation ) from users )
select badges.name from badges inner join users on badges.userid = users.id where users.displayname = 'Sharpie'
select count ( users.id ) from badges inner join users on badges.userid = users.id where badges.name = 'Supporter' and users.age > 65
select displayname from users where id = 30
select count ( id ) from users where location = 'New York City'
select count ( userid ) from votes where strftime ( '%Y' , creationdate ) = '2010'
select count ( id ) from users where age >= 19 and age <= 65
select displayname from users order by views desc limit 1
select cast ( count ( id ) as real ) / ( select count ( distinct id ) from votes ) from votes where strftime ( '%Y' , creationdate ) = '2010'
select tags.tagname from posts inner join tags on posts.id = tags.id inner join users on posts.owneruserid = users.id where users.displayname = 'John Stauffer'
select count ( id ) from posts where owneruserid = 1
select count ( votes.userid ) from users inner join votes on users.id = votes.userid where users.displayname = 'Harlan'
select posts.id from posts inner join users on posts.owneruserid = users.id where users.displayname = 'slashnick' order by posts.answercount desc limit 1
select posts.ownerdisplayname from users inner join posts on users.id = posts.owneruserid where users.displayname in ( 'Harvey Motulsky' , 'Noah Snyder' ) order by posts.viewcount desc limit 1
select count ( distinct posts.id ) from posts inner join votes on posts.id = votes.userid where posts.ownerdisplayname = 'Matt Parker' and votes.postid > 4
select count ( comments.userid ) from comments inner join posts on comments.userid = posts.owneruserid inner join users on posts.id = users.id where comments.userdisplayname = 'Neil McGuigan' and comments.score < 60
select tags.tagname from posts inner join tags on posts.id = tags.id where posts.owneruserid = 0 and posts.ownerdisplayname = 'Mark Meckes'
select distinct users.displayname from badges inner join users on badges.userid = users.id where badges.name = 'Organizer'
select cast ( sum ( case when tags.tagname = 'r' then 1 else 0 end ) as real ) * 100 / count ( tags.tagname ) from tags inner join posts on tags.id = posts.id where posts.ownerdisplayname = 'Community'
select ( select sum ( posts.viewcount ) from posts inner join tags on posts.owneruserid = tags.id where tags.tagname = 'amos' and posts.ownerdisplayname = 'mornington' ) - ( select sum ( posts.viewcount ) from posts inner join tags on posts.owneruserid = tags.id where tags.tagname = 'amos' ) as difference
select count ( users.id ) from badges inner join users on badges.userid = users.id where badges.name = 'commentator' and strftime ( '%Y' , badges.date ) = '2014'
sql placeholder
select displayname , age from users order by views desc limit 1
select lasteditdate , lasteditoruserid from posts where title = 'Detecting a given face in a database of facial images'
select count ( score ) from comments where userid = 13 and score < 60
select distinct posts.title , users.displayname from comments inner join posts on comments.postid = posts.id inner join users on posts.owneruserid = users.id where comments.score > 60
select badges.name from badges inner join users on badges.userid = users.id where users.location = 'North Pole' and strftime ( '%Y' , badges.date ) = '2011'
select users.displayname , users.websiteurl from posts inner join users on posts.id = users.id where posts.favoritecount > 150
select tags.count , posts.lasteditdate from tags inner join posts on tags.id = posts.id where posts.title = 'What is the best introductory Bayesian statistics textbook?' order by tags.tagname asc limit 1
select users.lastaccessdate , users.location from badges inner join users on badges.userid = users.id where badges.name = 'Outliers'
select posts.title from posts inner join postlinks on posts.id = postlinks.relatedpostid where posts.title = 'How to tell if something happened in a data set which monitors a value over time'
select posthistory.postid , badges.name from badges inner join posthistory on badges.userid = posthistory.userid where posthistory.userdisplayname = 'Samuel' and strftime ( '%Y' , posthistory.creationdate ) = '2013'
select posts.ownerdisplayname from users inner join posts on users.id = posts.owneruserid order by posts.viewcount desc limit 1
select users.displayname , users.location from posts inner join tags on posts.id = tags.excerptpostid inner join users on posts.owneruserid = users.id where tags.tagname = 'hypothesis-testing'
select postlinks.relatedpostid , postlinks.linktypeid from posts inner join postlinks on posts.id = postlinks.relatedpostid where posts.title = 'What are principal component scores?'
select posts.ownerdisplayname from comments inner join posts on comments.postid = posts.id order by comments.score desc limit 1
select users.displayname , users.websiteurl from votes inner join users on votes.userid = users.id where votes.votetypeid = 8 order by votes.bountyamount desc limit 1
select title from posts order by viewcount desc limit 5
select count ( tags.tagname ) from tags inner join posts on tags.id = posts.id where tags.count between 5000 and 7000
select owneruserid from posts order by favoritecount desc limit 1
select age from users order by reputation desc limit 1
select count ( postid ) from votes where strftime ( '%Y' , creationdate ) = '2011' and bountyamount = 50
select id from users where age = ( select min ( age ) from users )
select score from posts order by viewcount desc limit 1
select cast ( count ( id ) as real ) / 12 from posts where strftime ( '%Y' , creaiondate ) = '2010' and answercount < 2
select votes.id from posts inner join votes on posts.id = votes.postid where votes.userid = 1465 order by posts.favoritecount desc limit 1
select posts.title from posts inner join postlinks on posts.id = postlinks.postid order by posts.creaiondate asc limit 1
select users.displayname from badges inner join users on badges.userid = users.id group by badges.userid order by count ( badges.name ) desc limit 1
sql placeholder
select creaiondate from posts where id = ( select min ( creationdate ) from users )
select users.displayname from badges inner join users on badges.userid = users.id where badges.name = 'Autobiographer' order by badges.date asc limit 1
select count ( users.id ) from users inner join posts on users.id = posts.owneruserid where users.location = 'United Kingdom' and posts.favoritecount >= 4
select sum ( votes.postid ) / count ( votes.userid ) from users inner join votes on users.id = votes.userid order by users.age desc limit 1
select displayname from users order by reputation desc limit 1
select count ( id ) from users where reputation > 2000 and views > 1000
select displayname from users where age >= 19 and age <= 65
select count ( posts.id ) from posts inner join users on posts.owneruserid = users.id where strftime ( '%Y' , users.creationdate ) = '2010' and users.displayname = 'Jay Stevens'
select posts.id , posts.title from users inner join posts on users.id = posts.owneruserid where users.displayname = 'Harvey Motulsky' order by posts.viewcount desc limit 1
select posts.id , posts.title from comments inner join posts on comments.postid = posts.id order by comments.score desc limit 1
select avg ( posts.score ) from posts inner join comments on posts.id = comments.postid where posts.ownerdisplayname = 'Stephen Turner'
sql placeholder
select posts.id , posts.ownerdisplayname from posts inner join posthistory on posts.id = posthistory.postid where strftime ( '%Y' , posthistory.creationdate ) = '2010' order by posts.favoritecount desc limit 1
select cast ( sum ( case when users.reputation > 1000 then 1 else 0 end ) as real ) * 100 / count ( posts.owneruserid ) from users inner join posts on users.id = posts.owneruserid where strftime ( '%Y' , users.creationdate ) = '2011'
select cast ( count ( case when age between 13 and 18 then id else null end ) as real ) * 100 / count ( id ) from users
select sum ( posts.viewcount ) , users.displayname from posts inner join users on posts.owneruserid = users.id inner join posthistory on posts.id = posthistory.postid where posthistory.text = 'Computer Game Datasets' order by posts.viewcount desc limit 1
select count ( id ) from posts where viewcount > ( select cast ( sum ( views ) as real ) / count ( id ) from users )
select count ( id ) from comments where score = ( select max ( score ) from comments )
select count ( posts.id ) from users inner join posts on users.id = posts.owneruserid where posts.viewcount > 3500 and posts.commentcount = 0
select users.displayname , users.location from posts inner join users on posts.lasteditoruserid = users.id where posts.id = 183 order by posts.lasteditdate desc limit 1
select badges.name from badges inner join users on badges.userid = users.id where users.displayname = 'Emmitt' order by badges.date desc limit 1
select count ( users.id ) from votes inner join users on votes.userid = users.id where users.age >= 19 and users.age <= 65 and users.upvotes > 5000
select strftime ( '%J' , badges.date ) , count ( badges.date ) from badges inner join users on badges.userid = users.id where users.displayname = 'Zolomon'
select count ( comments.userid ) from comments inner join users on comments.userid = users.id where users.accountid = ( select max ( creationdate ) from users )
select comments.text , users.displayname from posts inner join comments on posts.id = comments.postid inner join users on comments.userid = users.id where posts.title = 'Analysing wind data with R' order by comments.creationdate desc limit 1
select count ( users.id ) from badges inner join users on badges.userid = users.id where badges.name = 'Citizen Patrol'
select count ( posts.id ) from posts inner join tags on posts.id = tags.id where tags.tagname = 'careers'
select reputation , views from users where displayname = 'Jarrod Dixon'
select count ( comments.id ) , ( select count ( comments.userid ) from tags inner join posts on tags.id = posts.id where tags.tagname = 'Clustering 1D data' ) from comments inner join posts on comments.postid = posts.id where posts.title = 'Clustering 1D data'
select creationdate from users where displayname = 'IrishStat'
select count ( distinct postid ) from votes where bountyamount >= 30
select cast ( count ( case when posts.score >= 50 then 1 else null end ) as real ) * 100 / count ( posts.id ) from users inner join posts on users.id = posts.id where users.reputation = ( select max ( reputation ) from users )
select count ( id ) from posts where score < 20
select count ( tags.tagname ) from tags inner join posts on tags.id = posts.id where posts.id < 15 and tags.count < 20
select excerptpostid , wikipostid from tags where tagname = 'sample'
select users.reputation , users.upvotes from comments inner join users on comments.userid = users.id where comments.text = 'fine , you win :)'
select comments.text from tags inner join posts on tags.id = posts.id inner join comments on posts.id = comments.postid where tags.tagname = 'linear regression' and posts.title = 'How can I adapt ANOVA for binary data?'
select comments.text from posts inner join comments on posts.id = comments.postid where posts.viewcount between 100 and 150 order by comments.score desc limit 1
sql placeholder
select count ( distinct posts.id ) from comments inner join posts on comments.postid = posts.id where comments.score = 0 and posts.viewcount < 5
select count ( * ) from posts where commentcount = 1 and score = 0
select count ( users.id ) from users inner join comments on users.id = comments.userid where users.age = 40 and comments.score = 0
select comments.postid , comments.text from posts inner join comments on posts.id = comments.postid where posts.title = 'Group differences on a five point Likert item'
select users.upvotes from comments inner join users on comments.userid = users.id where comments.text = 'R is also lazy evaluated.'
select comments.text from users inner join comments on users.id = comments.userid where users.displayname = 'Harvey Motulsky'
select distinct users.displayname from comments inner join users on comments.userid = users.id where comments.score between 1 and 5 and users.downvotes = 0
select cast ( sum ( case when users.upvotes = 0 then 1 else 0 end ) as real ) * 100 / count ( users.id ) from comments inner join users on comments.userid = users.id where comments.score between 5 and 10
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = '3-D Man'
select count ( hero_power.hero_id ) from superpower inner join hero_power on superpower.id = hero_power.power_id where superpower.power_name = 'Super Strength'
select count ( hero_power.hero_id ) from superpower inner join hero_power on superpower.id = hero_power.power_id inner join superhero on hero_power.hero_id = superhero.id where superhero.height_cm > 200 and superpower.power_name = 'Super Strength'
select superhero.full_name from superhero inner join hero_power on superhero.id = hero_power.hero_id group by hero_power.hero_id having count ( hero_power.power_id ) > 15
select count ( superhero.id ) from superhero inner join colour on superhero.eye_colour_id = colour.id where colour.colour = 'Blue'
select colour.colour from superhero inner join colour on superhero.skin_colour_id = colour.id where superhero.superhero_name = 'Apocalypse'
select count ( superhero.id ) from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id inner join colour on superhero.eye_colour_id = colour.id where colour.colour = 'Blue' and superpower.power_name = 'Agility'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join colour on superhero.eye_colour_id = colour.id inner join superpower on hero_power.power_id = superpower.id where colour.colour = 'Blue' and superhero.hair_colour_id = colour.id and superpower.power_name = 'Agility'
select count ( superhero.id ) from publisher inner join superhero on publisher.id = superhero.publisher_id where publisher.publisher_name = 'Marvel Comics'
select superhero.full_name from publisher inner join superhero on publisher.id = superhero.publisher_id where publisher.publisher_name = 'Marvel Comics' order by superhero.height_cm desc limit 1
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.superhero_name = 'Sauron'
select count ( superhero.id ) from publisher inner join superhero on publisher.id = superhero.publisher_id inner join colour on superhero.eye_colour_id = colour.id where colour.colour = 'Blue' and publisher.publisher_name = 'Marvel Comics'
select avg ( superhero.height_cm ) from publisher inner join superhero on publisher.id = superhero.publisher_id where publisher.publisher_name = 'Marvel Comics'
select cast ( count ( case when superpower.power_name = 'Super Strength' then 1 else null end ) as real ) * 100 / count ( superpower.id ) from superpower inner join hero_power on superpower.id = hero_power.power_id inner join superhero on hero_power.hero_id = superhero.id inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics'
select count ( superhero.id ) from publisher inner join superhero on publisher.id = superhero.publisher_id where publisher.publisher_name = 'DC Comics'
select publisher.publisher_name from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on superhero.id = hero_attribute.hero_id inner join publisher on superhero.publisher_id = publisher.id where attribute.attribute_name = 'Speed' order by hero_attribute.attribute_value asc limit 1
select count ( superhero.id ) from publisher inner join superhero on publisher.id = superhero.publisher_id inner join colour on superhero.eye_colour_id = colour.id where publisher.publisher_name = 'Marvel Comics' and colour.colour = 'Gold'
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.superhero_name = 'Blue Beetle II'
select count ( superhero.id ) from superhero inner join colour on superhero.hair_colour_id = colour.id where colour.colour = 'Blond'
select hero_attribute.hero_id from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id where attribute.attribute_name = 'Intelligence' order by hero_attribute.attribute_value asc limit 1
select race.race from superhero inner join race on superhero.race_id = race.id where superhero.superhero_name = 'Copycat'
select count ( superhero.id ) from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Durability' and hero_attribute.attribute_value < 50
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Death Touch'
select count ( superhero.id ) from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join gender on superhero.gender_id = gender.id inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Strength' and hero_attribute.attribute_value = 100 and gender.gender = 'Female'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id group by hero_power.hero_id order by count ( hero_power.power_id ) desc limit 1
select count ( superhero.race_id ) from superhero inner join race on superhero.race_id = race.id where race.race = 'Vampire'
select cast ( sum ( case when alignment.alignment = 'Bad' then 1 else 0 end ) as real ) * 100 / count ( * ) , count ( case when publisher.publisher_name = 'Marvel Comics' then 1 else 0 end ) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join alignment on superhero.alignment_id = alignment.id where publisher.publisher_name = 'Marvel Comics'
select ( select count ( case when publisher.publisher_name = 'DC Comics' then superhero.id else null end ) - count ( case when publisher.publisher_name = 'Marvel Comics' then superhero.id else null end ) from superhero inner join publisher on superhero.publisher_id = publisher.id ) as calu
select id from publisher where publisher_name = 'Star Trek'
select avg ( attribute_value ) from hero_attribute group by hero_id
select count ( id ) from superhero where full_name is null
select colour.colour from colour inner join superhero on colour.id = superhero.eye_colour_id where superhero.id = 75
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = 'Deathlok'
select avg ( superhero.weight_kg ) from superhero inner join gender on superhero.gender_id = gender.id where gender.gender = 'Female'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join gender on superhero.gender_id = gender.id inner join superpower on hero_power.power_id = superpower.id where gender.gender = 'Male' limit 5
select superhero.superhero_name from race inner join superhero on race.id = superhero.race_id where race.race = 'Alien'
select superhero_name from superhero where height_cm >= 170 and height_cm <= 190 and eye_colour_id = 1
select superpower.power_name from superpower inner join hero_power on superpower.id = hero_power.power_id where hero_power.hero_id = 56
select superhero.full_name from race inner join superhero on race.id = superhero.race_id where race.race = 'Demi-God' limit 5
select count ( superhero.id ) from alignment inner join superhero on alignment.id = superhero.alignment_id where alignment.alignment = 'Bad'
select race.race from race inner join superhero on race.id = superhero.race_id where superhero.weight_kg = 169
select colour.colour from race inner join superhero on race.id = superhero.race_id inner join colour on superhero.hair_colour_id = colour.id where superhero.height_cm = 185 and race.race = 'Human'
select superhero.eye_colour_id , colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id order by superhero.weight_kg desc limit 1
select cast ( count ( case when publisher.id = 13 then 1 else null end ) as real ) * 100 / count ( publisher.id ) from publisher inner join superhero on publisher.id = superhero.publisher_id where superhero.height_cm >= 150 and superhero.height_cm < 180
select superhero.full_name from gender inner join superhero on gender.id = superhero.gender_id where gender.gender = 'Male' group by superhero.full_name having superhero.weight_kg > avg ( superhero.weight_kg ) * 0.79
select superpower.power_name from superpower inner join hero_power on superpower.id = hero_power.power_id group by superpower.power_name order by count ( hero_power.power_id ) desc limit 1
select hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where superhero.superhero_name = 'Abomination'
select superpower.power_name from superpower inner join hero_power on superpower.id = hero_power.power_id where hero_power.hero_id = 1
select count ( hero_power.hero_id ) from superpower inner join hero_power on superpower.id = hero_power.power_id where superpower.power_name = 'Stealth'
select superhero.full_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'strength' order by hero_attribute.attribute_value desc limit 1
select cast ( count ( superhero.id ) as real ) / count ( distinct superhero.skin_colour_id ) from colour inner join superhero on colour.id = superhero.skin_colour_id where colour.id = 1
select count ( superhero.id ) from publisher inner join superhero on publisher.id = superhero.publisher_id where publisher.publisher_name = 'Dark Horse Comics'
select superhero.superhero_name from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on hero_attribute.hero_id = superhero.id inner join publisher on superhero.publisher_id = publisher.id where attribute.attribute_name = 'durability' and publisher.publisher_name = 'Dark Horse Comics' order by hero_attribute.attribute_value desc limit 1
select colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.full_name = 'Abraham Sapien'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Flight'
select superhero.eye_colour_id , superhero.hair_colour_id , superhero.skin_colour_id from publisher inner join superhero on publisher.id = superhero.publisher_id inner join gender on superhero.gender_id = gender.id where gender.gender = 'Female' and publisher.publisher_name = 'Dark Horse Comics'
select superhero.superhero_name , publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.eye_colour_id = superhero.hair_colour_id and superhero.skin_colour_id = superhero.skin_colour_id
select race.race from race inner join superhero on race.id = superhero.race_id where superhero.superhero_name = 'A-Bomb'
select cast ( sum ( case when colour.colour = 'Blue' then 1 else 0 end ) as real ) * 100 / count ( * ) from colour inner join superhero on colour.id = superhero.eye_colour_id inner join gender on superhero.gender_id = gender.id
select superhero.superhero_name , race.race from race inner join superhero on race.id = superhero.race_id where superhero.full_name = 'Charles Chandler'
select gender.gender from superhero inner join gender on superhero.gender_id = gender.id where superhero.superhero_name = 'Agent 13'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Adaptation'
select count ( hero_power.power_id ) from hero_power inner join superhero on hero_power.hero_id = superhero.id where superhero.superhero_name = 'Amazo'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.full_name = 'Hunter Zolomon'
select superhero.height_cm from colour inner join superhero on colour.id = superhero.eye_colour_id where colour.colour = 'Amber'
select superhero.superhero_name , superhero.eye_colour_id , superhero.hair_colour_id from colour inner join superhero on colour.id = superhero.eye_colour_id where colour.colour = 'Black'
select superhero.eye_colour_id from colour inner join superhero on colour.id = superhero.skin_colour_id where colour.colour = 'Gold'
select superhero.full_name from superhero inner join race on superhero.race_id = race.id where race.race = 'Vampire'
select superhero.superhero_name from alignment inner join superhero on alignment.id = superhero.alignment_id where alignment.alignment = 'Neutral'
select count ( hero_attribute.hero_id ) from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id where attribute.attribute_name = 'Strength' order by hero_attribute.attribute_value desc limit 1
select race.race , alignment.alignment from superhero inner join race on race.id = superhero.race_id inner join alignment on superhero.alignment_id = alignment.id where superhero.superhero_name = 'Cameron Hicks'
select cast ( sum ( iif ( gender.gender = 'Female' , 1 , 0 ) ) as real ) * 100 / count ( superhero.gender_id ) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join gender on superhero.gender_id = gender.id where publisher.publisher_name = 'Marvel Comics'
select avg ( superhero.weight_kg ) from superhero inner join race on superhero.race_id = race.id where race.race = 'Alien'
select sum ( case when full_name = 'Emil Blonsky' then weight_kg else 0 end ) - sum ( case when full_name = 'Charles Chandler' then weight_kg else 0 end ) from superhero
select avg ( height_cm ) from superhero
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = 'Abomination'
select count ( race.race ) from race inner join superhero on race.id = superhero.race_id inner join gender on superhero.gender_id = gender.id where gender.gender = 1 and race.race = 'god/eternal' and superhero.race_id = 21
select superhero.superhero_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Speed' order by hero_attribute.attribute_value desc limit 1
select count ( superhero.id ) from superhero inner join alignment on superhero.alignment_id = alignment.id where alignment.alignment = 'Neutral' and alignment.id = 3
select attribute.attribute_name , hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where superhero.superhero_name = '3-D Man'
select superhero.superhero_name from superpower inner join hero_power on superpower.id = hero_power.hero_id inner join superhero on hero_power.hero_id = superhero.id inner join colour on superhero.hair_colour_id = colour.id where superhero.eye_colour_id = 7 and superhero.hair_colour_id = 9
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.superhero_name = 'Hawkman' or superhero.superhero_name = 'Karate Kid' or superhero.superhero_name = 'Speedy'
select count ( id ) from superhero where publisher_id = 1
select cast ( count ( case when superhero.eye_colour_id = 7 then superhero.superhero_name else null end ) as real ) * 100 / count ( superhero.id ) from superhero inner join colour on superhero.eye_colour_id = colour.id
select cast ( sum ( case when gender.gender = 'Male' then 1 else 0 end ) as real ) / sum ( case when gender.gender = 'Female' then 1 else 0 end ) from superhero inner join gender on superhero.gender_id = gender.id
select superhero_name from superhero order by height_cm desc limit 1
select id from superpower where power_name = 'cryokinesis'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id where superhero.id = 294
select full_name from superhero where weight_kg is not null or weight_kg = 0
select colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.full_name = 'Karen Beecher-Duncan'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.full_name = 'Helen Parr'
select race.race from superhero inner join race on superhero.race_id = race.id where superhero.weight_kg = 108 and superhero.height_cm = 188
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.id = 38
select race.race from hero_attribute inner join superhero on hero_attribute.hero_id = superhero.id inner join race on race.id = superhero.race_id order by hero_attribute.attribute_value desc limit 1
select alignment.alignment , superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id inner join alignment on superhero.alignment_id = alignment.id where superhero.superhero_name = 'Atom IV'
select superhero.full_name from superhero inner join colour on superhero.eye_colour_id = colour.id where colour.colour = 'Blue' limit 5
select cast ( sum ( hero_attribute.attribute_value ) as real ) / count ( hero_attribute.attribute_value ) from alignment inner join superhero on alignment.id = superhero.alignment_id inner join hero_attribute on superhero.id = hero_attribute.hero_id where alignment.alignment = 'Neutral'
select distinct superhero.skin_colour_id , colour.colour from hero_attribute inner join superhero on hero_attribute.hero_id = superhero.id inner join colour on superhero.skin_colour_id = colour.id where hero_attribute.attribute_value = 100
select count ( * ) from superhero inner join gender on gender.id = superhero.gender_id inner join alignment on superhero.alignment_id = alignment.id where gender.gender = 'Female' and alignment.alignment = 'Good'
select superhero.superhero_name from hero_attribute inner join superhero on hero_attribute.hero_id = superhero.id inner join attribute on superhero.id = attribute.id where hero_attribute.attribute_value between 75 and 80
select distinct race.race from superhero inner join race on race.id = superhero.race_id inner join gender on superhero.gender_id = gender.id inner join colour on superhero.hair_colour_id = colour.id where gender.gender = 'Male' and colour.colour = 'blue'
sql placeholder
select sum ( case when colour.id = 1 then 1 else 0 end ) - sum ( case when colour.id = 7 then 1 else 0 end ) from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.weight_kg = 0 or superhero.weight_kg = 1
select hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where superhero.superhero_name = 'Hulk' and attribute.attribute_name = 'Strength'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = 'Ajax'
select count ( * ) from colour inner join superhero on colour.id = superhero.skin_colour_id inner join alignment on superhero.alignment_id = alignment.id where colour.colour = 'Green' and alignment.alignment = 'Bad'
select count ( * ) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join gender on gender.id = superhero.gender_id where gender.gender = 'Female' and publisher.publisher_name = 'Marvel Comics'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Wind Control' order by superhero.superhero_name asc
select gender.gender from superpower inner join hero_power on superpower.id = hero_power.power_id inner join superhero on hero_power.hero_id = superhero.id inner join gender on superhero.gender_id = gender.id where superpower.power_name = 'Phoenix Force'
select superhero.superhero_name from publisher inner join superhero on publisher.id = superhero.publisher_id inner join hero_power on superhero.id = hero_power.hero_id where publisher.publisher_name = 'DC Comics' order by superhero.weight_kg desc limit 1
select cast ( sum ( superhero.height_cm ) as real ) / count ( race.race ) from race inner join superhero on race.id = superhero.race_id inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Dark Horse Comics' and race.race > 'Human'
select count ( hero_attribute.hero_id ) from hero_attribute inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Speed' and hero_attribute.attribute_value = 100
select case when count ( case when publisher.publisher_name = 'DC Comics' then superhero.id else null end ) > count ( case when publisher.publisher_name = 'Marvel Comics' then superhero.id else null end ) then 'DC Comics' else 'Marvel Comics' end as difference from superhero inner join publisher on superhero.publisher_id = publisher.id
select attribute.attribute_name from hero_attribute inner join superhero on hero_attribute.hero_id = superhero.id inner join attribute on hero_attribute.attribute_id = attribute.id where superhero.superhero_name = 'Black Panther' order by hero_attribute.attribute_value asc limit 1
select colour.colour from colour inner join superhero on colour.id = superhero.eye_colour_id where superhero.superhero_name = 'Abomination'
select full_name from superhero order by height_cm desc limit 1
select superhero_name from superhero where full_name = 'Charles Chandler'
select cast ( count ( case when gender.gender = 'Female' then 1 else null end ) as real ) * 100 / count ( * ) from publisher inner join superhero on publisher.id = superhero.publisher_id inner join gender on superhero.gender_id = gender.id where publisher.publisher_name = 'George Lucas'
select cast ( sum ( case when alignment.alignment = 'Good' then 1 else 0 end ) as real ) * 100 / count ( * ) from publisher inner join superhero on publisher.id = superhero.publisher_id inner join alignment on superhero.alignment_id = alignment.id where publisher.publisher_name = 'Marvel Comics'
select count ( superhero_name ) from superhero where full_name like 'John%'
select hero_id from hero_attribute order by attribute_value asc limit 1
select full_name from superhero where superhero_name = 'Alien'
select superhero.full_name from superhero inner join colour on superhero.eye_colour_id = colour.id where colour.colour = 'Brown' and superhero.weight_kg < 100
select hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where superhero.superhero_name = 'Aquababy'
select superhero.weight_kg , race.race from race inner join superhero on race.id = superhero.race_id where superhero.id = 40
select avg ( superhero.height_cm ) from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join alignment on superhero.alignment_id = alignment.id where alignment.alignment = 'Neutral'
select hero_power.hero_id from superpower inner join hero_power on superpower.id = hero_power.power_id where superpower.power_name = 'Intelligence'
select colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.superhero_name = 'Blackwulf'
select distinct superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.height_cm > ( select avg ( height_cm ) from superhero ) * 0.8
select drivers.driverref from drivers inner join qualifying on drivers.driverid = qualifying.driverid where qualifying.raceid = 18 group by drivers.driverref order by count ( qualifying.q1 ) desc limit 5
select drivers.surname from drivers inner join qualifying on drivers.driverid = qualifying.driverid inner join laptimes on qualifying.driverid = laptimes.driverid where qualifying.raceid = 19 order by qualifying.q2 asc limit 1
select distinct races.year from circuits inner join races on circuits.circuitid = races.circuitid where circuits.location = 'Shanghai'
select circuits.url from circuits inner join races on circuits.circuitid = races.circuitid where circuits.name = 'Circuit de Barcelona-Catalunya'
select races.name from circuits inner join races on circuits.circuitid = races.circuitid where circuits.country = 'Germany'
select circuits.location from circuits inner join constructors on circuits.circuitref = constructors.constructorid where constructors.name = 'Renault'
select count ( races.raceid ) from races inner join circuits on races.circuitid = circuits.circuitid inner join seasons on races.year = seasons.year where races.year = 2010 and ( circuits.country = 'Asia' or circuits.country = 'Europe' )
select races.name from circuits inner join races on circuits.circuitid = races.circuitid where circuits.country = 'Spain'
select circuits.lat , circuits.lng from circuits inner join races on circuits.circuitid = races.circuitid where races.name = 'Australian Grand Prix'
select races.url from circuits inner join races on circuits.circuitid = races.circuitid where circuits.name = 'Sepang International Circuit'
select races.time from circuits inner join races on circuits.circuitid = races.circuitid where circuits.name = 'Sepang International Circuit'
select circuits.lat , circuits.lng from circuits inner join races on circuits.circuitid = races.circuitid where races.name = 'Abu Dhabi Grand Prix'
sql placeholder
select distinct qualifying.q1 from drivers inner join qualifying on drivers.driverid = qualifying.driverid inner join results on results.raceid = qualifying.raceid where drivers.forename = 'Bruno' and drivers.surname = 'Senna' and qualifying.number = 354
sql placeholder
select drivers.number from drivers inner join qualifying on drivers.driverid = qualifying.driverid where qualifying.q3 = 'Q3' and qualifying.raceid = 903
select count ( distinct results.driverid ) from races inner join results on races.raceid = results.raceid inner join laptimes on results.raceid = laptimes.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Bahrain Grand Prix' and races.year = 2007
select seasons.year , races.date from races inner join seasons on races.year = seasons.year where races.raceid = '901'
select count ( drivers.number ) from drivers inner join laptimes on drivers.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid where races.year = 2015 and races.date = '2015-11-29'
select drivers.dob from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.raceid = 592 and races.time is not null order by drivers.dob asc limit 1
select drivers.surname , drivers.url from laptimes inner join results on laptimes.driverid = results.driverid inner join races on results.raceid = races.raceid inner join drivers on results.driverid = drivers.driverid where laptimes.lap = '0:01:27' and results.raceid = '161'
select drivers.nationality from drivers inner join results on drivers.driverid = results.driverid inner join laptimes on results.driverid = laptimes.driverid where laptimes.raceid = 933 order by results.fastestlapspeed desc limit 1
select circuits.location , circuits.lat , circuits.lng from races inner join circuits on races.circuitid = circuits.circuitid where races.name = 'Malaysian Grand Prix'
select constructors.url from constructorresults inner join constructors on constructorresults.constructorid = constructors.constructorid inner join results on constructorresults.constructorid = results.constructorid where results.raceid = 9 order by constructorresults.points desc limit 1
select distinct qualifying.q1 from drivers inner join qualifying on drivers.driverid = qualifying.driverid inner join results on results.raceid = qualifying.raceid where drivers.driverref = 'lucas' and drivers.surname = 'di Grassi' and qualifying.raceid = 345
sql placeholder
sql placeholder
select laptimes.time from laptimes inner join results on laptimes.driverid = results.driverid inner join drivers on results.driverid = drivers.driverid inner join races on laptimes.raceid = races.raceid where drivers.forename = 'Bruce' and drivers.surname = 'McLaren' and results.raceid = 743
sql placeholder
select seasons.year , races.date from races inner join seasons on races.year = seasons.year where races.raceid = '901'
select count ( results.driverid ) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.date = '2015-11-29'
select drivers.number from drivers inner join results on drivers.driverid = results.driverid inner join laptimes on results.driverid = laptimes.driverid where results.raceid = 872 order by drivers.dob desc limit 1
select drivers.surname from laptimes inner join drivers on laptimes.driverid = drivers.driverid inner join results on drivers.driverid = results.driverid where results.raceid = 348 order by laptimes.time asc limit 1
select drivers.nationality from drivers inner join results on drivers.driverid = results.driverid where results.fastestlapspeed = ( select max ( fastestlapspeed ) from results where raceid = 348 )
select cast ( ( sum ( iif ( laptimes.raceid = 853 , 1 , 0 ) ) - sum ( iif ( laptimes.raceid = 854 , 1 , 0 ) ) ) as real ) * 100 / sum ( iif ( laptimes.raceid = 853 , 1 , 0 ) ) from drivers inner join laptimes on drivers.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid where drivers.forename = 'Paul' and drivers.surname = 'di Resta'
select cast ( count ( case when races.date = '1983-07-16' then results.driverid else null end ) as real ) * 100 / count ( results.driverid ) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.date = '1983-07-16'
select year from races where name = 'Singapore Grand Prix' order by date asc limit 1
select count ( raceid ) , name from races where year = 2005 order by name desc
select name , count ( date ) from races where year = ( select year from races order by date asc limit 1 )
select name , date from races where year = 1999 order by round desc limit 1
select year from races group by year order by round desc limit 1
select races.name from circuits inner join races on circuits.circuitid = races.circuitid inner join seasons on races.year = seasons.year where races.year = 2017 and seasons.year = 2000
select circuits.country , circuits.location , races.year from circuits inner join races on circuits.circuitid = races.circuitid where races.name = 'European Grand Prix' order by races.year asc limit 1
select max ( seasons.year ) from circuits inner join races on circuits.circuitid = races.circuitid inner join seasons on races.year = seasons.year where races.name = 'British Grand Prix' and circuits.name = 'Brands Hatch'
select count ( races.year ) from races inner join circuits on races.circuitid = circuits.circuitid inner join seasons on races.year = seasons.year where races.name = 'British Grand Prix' and circuits.name = 'Silverstone Circuit'
select drivers.driverref , drivers.number , drivers.surname from drivers inner join driverstandings on drivers.driverid = driverstandings.driverid inner join races on driverstandings.raceid = races.raceid inner join results on results.driverid = drivers.driverid where races.name = '2010 Singapore Grand Prix' group by drivers.driverref , driverstandings.position
select drivers.forename , drivers.surname from drivers inner join driverstandings on drivers.driverid = driverstandings.driverid where driverstandings.points = ( select max ( points ) from driverstandings )
select drivers.driverref , results.points from drivers inner join results on drivers.driverid = results.driverid inner join driverstandings on results.driverid = driverstandings.driverid inner join races on results.raceid = races.raceid where races.name = '2017 Chinese Grand Prix' group by drivers.driverref , results.points order by sum ( results.points ) desc limit 3
select min ( laptimes.time ) , drivers.driverref , races.name from laptimes inner join results on laptimes.driverid = results.driverid inner join races on laptimes.raceid = races.raceid inner join drivers on results.driverid = drivers.driverid
select avg ( laptimes.time ) from drivers inner join laptimes on drivers.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid where races.name = '2009 Chinese Grand Prix' and drivers.forename = 'Sebastian' and drivers.driverref = 'vettel'
select cast ( sum ( case when drivers.surname = 'Hamilton' and races.year >= 2010 and driverstandings.position > 1 then 1 else 0 end ) as real ) * 100 / count ( races.raceid ) from drivers inner join driverstandings on drivers.driverid = driverstandings.driverid inner join races on driverstandings.raceid = races.raceid where drivers.surname = 'Hamilton'
select drivers.driverref , drivers.nationality , avg ( driverstandings.points ) from drivers inner join driverstandings on drivers.driverid = driverstandings.driverid inner join results on driverstandings.driverid = results.driverid group by drivers.driverid order by count ( wins ) desc limit 1
select dob , surname from drivers where nationality = 'Japanese' order by dob desc limit 1
select circuits.name from races inner join circuits on races.circuitid = circuits.circuitid where races.year between 1990 and 2000 limit 4
select circuits.name , circuits.location , races.name from circuits inner join races on circuits.circuitid = races.circuitid where races.year = 2006 and circuits.country = 'USA'
select races.name , circuits.name , circuits.location from circuits inner join races on circuits.circuitid = races.circuitid where races.year = 2005 and races.date like '9/%/2005%'
select races.name from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.forename = 'Alex' and drivers.surname = 'Yoong' and results.position < 10
select count ( distinct races.raceid ) from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid inner join circuits on races.circuitid = circuits.circuitid where drivers.surname = 'Michael' and drivers.forename = 'Schumacher' and circuits.name = 'Sepang International Circuit' order by results.points desc limit 1
select races.name , races.year from drivers inner join laptimes on drivers.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid inner join results on results.driverid = laptimes.driverid where drivers.forename = 'Michael' and drivers.surname = 'Schumacher' order by results.milliseconds asc limit 1
sql placeholder
select races.name , results.points from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.forename = 'Lewis' and drivers.surname = 'hamilton' order by races.year asc limit 1
select races.name , circuits.country from circuits inner join races on circuits.circuitid = races.circuitid where races.year = 2017 order by races.date desc
select results.laps , races.year , circuits.location from laptimes inner join results on laptimes.raceid = results.raceid inner join circuits on races.circuitid = circuits.circuitid inner join races on results.raceid = races.raceid group by results.raceid , races.year , circuits.location order by count ( results.laps ) desc limit 1
select cast ( sum ( case when circuits.country = 'Germany' then 1 else 0 end ) as real ) * 100 / count ( races.raceid ) from races inner join circuits on races.circuitid = circuits.circuitid
select lat , lng from circuits where name = 'Silverstone Circuit'
select name from circuits where location = 'Silverstone' or name = 'Hockenheimring' or name = 'Hungaroring' order by lat desc limit 1
select circuitref from circuits where name = 'Marina Bay Street Circuit'
select country from circuits where alt = ( select max ( alt ) from circuits )
select count ( number ) from drivers where code is null
select circuits.country from circuits inner join drivers on circuits.country = drivers.driverid order by drivers.dob asc limit 1
select surname from drivers where nationality = 'italian'
select url from drivers where forename = 'Anthony' and surname = 'Davidson'
select driverref from drivers where forename = 'Lewis' and surname = 'Hamilton'
select circuits.name from circuits inner join races on circuits.circuitid = races.circuitid where races.name = 'Spanish Grand Prix' and races.year = 2009
select races.year from circuits inner join races on circuits.circuitid = races.circuitid where circuits.name = 'Silverstone Circuit' and circuits.circuitref = 'Silverstone'
select races.url from circuits inner join races on circuits.circuitid = races.circuitid where circuits.name = 'Silverstone Circuit'
select races.time from circuits inner join races on circuits.circuitid = races.circuitid where races.year = 2010 and circuits.location = 'Abu Dhabi'
select count ( races.raceid ) from circuits inner join races on circuits.circuitid = races.circuitid where circuits.country = 'Italy' and races.year = 'F1'
select races.date from circuits inner join races on circuits.circuitid = races.circuitid where circuits.name = 'Barcelona-Catalunya'
select circuits.url from circuits inner join races on circuits.circuitid = races.circuitid where races.year = 2009 and races.name = 'Spanish Grand Prix'
sql placeholder
select drivers.forename , drivers.surname from drivers inner join results on drivers.driverid = results.driverid where results.fastestlapspeed = 1
select drivers.driverref from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where races.name = 'Australian Grand Prix' and races.year = 2008 order by results.rank desc limit 1
select races.name from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.driverref = 'hamilton' and drivers.forename = 'lewis'
select races.name from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.forename = 'Lewis' and drivers.surname = 'hamilton' order by results.rank desc limit 1
select results.fastestlapspeed from drivers inner join results on drivers.driverid = results.driverid inner join laptimes on results.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid where races.name = 'Spanish Grand Prix' and races.year = 2009 order by results.fastestlapspeed desc limit 1
select distinct races.year from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.surname = 'Lewis' and drivers.forename = 'hamilton'
select results.positionorder from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where races.name = '2008 Australian Grand Prix' and drivers.surname = 'Lewis'
select drivers.forename , drivers.surname from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where races.name = 'Australian Grand Prix' and races.year = 2008 and results.grid = 4
select count ( distinct results.driverid ) from races inner join results on races.raceid = results.raceid inner join laptimes on results.driverid = laptimes.driverid where races.name = 'Australian Grand Prix' and races.year = 2008 and results.time is not null
select laptimes.lap from drivers inner join laptimes on drivers.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid inner join results on results.driverid = drivers.driverid where races.name = '2008 Australian Grand Prix' and drivers.driverref = 'hamilton' and drivers.forename = 'Lewis'
select laptimes.time from laptimes inner join races on laptimes.raceid = races.raceid inner join drivers on drivers.driverid = laptimes.driverid inner join results on results.driverid = laptimes.driverid where races.year = 2008 and races.name = 'Australian Grand Prix' and results.rank = 2
select drivers.surname , drivers.url from races inner join results on races.raceid = results.raceid inner join laptimes on results.driverid = laptimes.driverid inner join drivers on drivers.driverid = results.driverid where races.name = 'Australian Grand Prix' and races.year = 2008
select count ( drivers.driverid ) from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid inner join circuits on races.circuitid = circuits.circuitid where races.name = '2008 Australian Grand Prix' and drivers.nationality = 'American'
select count ( results.driverid ) from races inner join results on races.raceid = results.raceid inner join laptimes on results.driverid = laptimes.driverid where races.name = '2008 Australian Grand Prix'
select sum ( results.points ) from drivers inner join driverstandings on drivers.driverid = driverstandings.driverid inner join results on results.driverid = driverstandings.driverid where drivers.forename = 'Lewis' and drivers.surname = 'hamilton'
select cast ( sum ( laptimes.milliseconds ) as real ) / count ( laptimes.time ) from drivers inner join laptimes on drivers.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid where drivers.forename = 'Lewis' and drivers.surname = 'Hamilton'
select cast ( count ( case when results.time is not null then results.driverid else null end ) as real ) / count ( results.raceid ) from races inner join laptimes on races.raceid = laptimes.raceid inner join results on laptimes.raceid = results.raceid where races.name = '2008 Australian Grand Prix'
sql placeholder
select count ( circuitid ) from circuits where location = 'Melbourne' and country = 'Australia'
select lat , lng from circuits where country = 'USA'
select count ( dob ) from drivers where nationality = 'British' and substr ( dob , 1 , 4 ) > '1980'
select avg ( constructorresults.points ) from constructors inner join constructorresults on constructors.constructorid = constructorresults.constructorid where constructors.nationality = 'British'
select constructors.name from constructorstandings inner join constructors on constructorstandings.constructorid = constructors.constructorid order by constructorstandings.points desc limit 1
select distinct constructors.name from constructors inner join constructorresults on constructors.constructorid = constructorresults.constructorid inner join results on constructorresults.raceid = results.raceid where results.points = 0 and constructorresults.raceid = 291
select count ( constructors.name ) from constructors inner join constructorresults on constructors.constructorid = constructorresults.constructorid inner join results on constructorresults.constructorid = results.constructorid where constructors.nationality = 'Japanese' and results.points = 0 group by results.raceid having count ( results.points ) = 2
select constructors.name from results inner join constructors on results.constructorid = constructors.constructorid where results.rank = 1
select count ( constructors.name ) from results inner join constructors on results.constructorid = constructors.constructorid where constructors.nationality = 'France' and results.laps > 50
select cast ( sum ( case when races.time is not null then 1 else 0 end ) as real ) * 100 / count ( races.time ) from races inner join drivers on races.raceid = drivers.driverid where drivers.nationality = 'Ja' and races.year between 2007 and 2009
sql placeholder
select drivers.forename , drivers.surname from drivers inner join results on drivers.driverid = results.driverid where results.rank = 2 and drivers.dob > 1975
select count ( drivers.driverid ) from drivers inner join results on drivers.driverid = results.driverid where drivers.nationality = 'Italian' and results.time is null
select drivers.forename , drivers.surname from laptimes inner join results on laptimes.driverid = results.driverid inner join drivers on drivers.driverid = results.driverid order by results.fastestlaptime desc limit 1
select laptimes.lap from laptimes inner join races on laptimes.raceid = races.raceid inner join results on results.driverid = laptimes.driverid where races.year = 2009 order by laptimes.time desc limit 1
select avg ( results.fastestlapspeed ) from results inner join races on results.raceid = races.raceid where races.name = 'Spanish Grand Prix' and races.year = 2009
select races.name , races.year from races inner join laptimes on races.raceid = laptimes.raceid where laptimes.milliseconds is null order by laptimes.milliseconds asc limit 1
sql placeholder
select count ( drivers.driverref ) from laptimes inner join drivers on laptimes.driverid = drivers.driverid where drivers.nationality = 'France' and laptimes.lap < 120
select code from drivers where nationality = 'American'
select raceid from races where year = 2009
select count ( drivers.number ) from drivers inner join results on drivers.driverid = results.driverid where results.raceid = 18
select code , nationality from drivers where nationality = 'Dutch' order by dob desc limit 3
select driverref from drivers where surname = 'Robert' and driverref = 'kubica'
select count ( dob ) from drivers where nationality = 'Australian' and strftime ( '%Y' , dob ) = '1980'
select drivers.driverid from drivers inner join laptimes on drivers.driverid = laptimes.driverid where drivers.nationality = 'Germany' and drivers.dob between 1980 and 1990 order by laptimes.time asc limit 3
select driverref from drivers where nationality = 'German' order by dob asc limit 1
select drivers.driverid , drivers.code from laptimes inner join results on laptimes.driverid = results.driverid inner join races on laptimes.raceid = races.raceid inner join drivers on results.driverid = drivers.driverid where races.year = 1971 and results.fastestlaptime = 1
select drivers.driverid from drivers inner join laptimes on drivers.driverid = laptimes.driverid where drivers.dob < 1982 and laptimes.time > 0 order by laptimes.time desc limit 10
select races.year from laptimes inner join races on laptimes.raceid = races.raceid inner join results on races.raceid = results.raceid where results.fastestlaptime = 1
select races.year from laptimes inner join races on laptimes.raceid = races.raceid order by laptimes.time desc limit 1
select drivers.driverid from drivers inner join laptimes on drivers.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid order by laptimes.time asc limit 5
select count ( results.raceid ) from results inner join status on results.statusid = status.statusid where status.status = 'Disqualified' and results.raceid between 50 and 100 and results.time is null
select count ( circuitid ) , location , lng from circuits where country = 'Austria'
select races.raceid from races inner join results on races.raceid = results.raceid group by races.raceid order by count ( results.time ) desc limit 1
select drivers.driverref , drivers.nationality , drivers.dob from drivers inner join qualifying on drivers.driverid = qualifying.driverid inner join races on qualifying.raceid = races.raceid where qualifying.raceid = 23 and qualifying.q2 is not null
select races.year , races.name , races.date , races.time from drivers inner join qualifying on drivers.driverid = qualifying.driverid inner join races on qualifying.raceid = races.raceid order by drivers.dob desc limit 1
select count ( drivers.driverid ) from drivers inner join results on drivers.driverid = results.driverid inner join status on results.statusid = status.statusid where status.status = 'Disqualified' and drivers.nationality = 'American'
select constructors.name , constructors.url from constructors inner join constructorresults on constructors.constructorid = constructorresults.constructorid where constructors.nationality = 'Italian' order by constructorresults.points desc limit 1
select distinct constructors.url from constructors inner join results on constructors.constructorid = results.constructorid inner join constructorstandings on results.constructorid = constructorstandings.constructorid group by constructors.constructorid order by sum ( constructorstandings.wins ) desc limit 1
select drivers.driverref from races inner join laptimes on races.raceid = laptimes.raceid inner join drivers on laptimes.driverid = drivers.driverid inner join results on drivers.driverid = results.driverid where races.name = 'France Grand Prix' order by laptimes.time desc limit 1
select races.name , laptimes.milliseconds from races inner join laptimes on races.raceid = laptimes.raceid inner join results on results.raceid = laptimes.raceid order by results.fastestlaptime asc limit 1
sql placeholder
select drivers.driverid from pitstops inner join drivers on pitstops.driverid = drivers.driverid where drivers.dob between 1980 and 1985 group by drivers.driverid order by sum ( pitstops.duration ) / count ( pitstops.duration ) asc limit 5
select results.time from races inner join laptimes on races.raceid = laptimes.raceid inner join drivers on laptimes.driverid = drivers.driverid inner join results on results.raceid = races.raceid where races.name = 'Canadian Grand Prix' and races.year = 2008 group by results.time order by laptimes.time desc limit 1
select constructors.name , constructors.url from constructors inner join results on constructors.constructorid = results.constructorid inner join races on results.raceid = races.raceid where races.name = '2009 Singapore Grand Prix' order by results.time desc limit 1
select forename , surname , dob from drivers where nationality = 'Austria' and dob between 1981 and 1991
select forename , surname , dob from drivers where nationality = 'German' and dob between 1971 and 1985 order by dob desc
select location , country , lng from circuits where name = 'Hungaroring'
select results.points , constructors.name , constructors.nationality from races inner join constructorresults on races.raceid = constructorresults.raceid inner join constructors on constructors.constructorid = results.constructorid inner join results on results.raceid = races.raceid where races.name = 'Monaco Grand Prix' and races.year between 1980 and 2010 group by results.points , constructors.name , constructors.nationality order by sum ( results.points ) desc limit 1
select cast ( sum ( results.points ) as real ) / count ( results.driverid ) from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where races.name = 'Turkish Grand Prix' and drivers.driverref = 'Lewis'
select cast ( sum ( raceid ) as real ) / count ( raceid ) from races where year between '2000-01-01' and '2010-12-31'
select nationality from drivers group by nationality order by count ( nationality ) desc limit 1
select sum ( driverstandings.wins ) from drivers inner join driverstandings on drivers.driverid = driverstandings.driverid inner join results on results.driverid = driverstandings.driverid where results.points = 91
select races.name from results inner join races on results.raceid = races.raceid inner join circuits on races.circuitid = circuits.circuitid order by results.fastestlaptime asc limit 1
select circuits.location , circuits.country from races inner join circuits on races.circuitid = circuits.circuitid order by races.date desc limit 1
select drivers.forename , drivers.surname from drivers inner join qualifying on drivers.driverid = qualifying.driverid inner join races on qualifying.raceid = races.raceid inner join circuits on races.circuitid = circuits.circuitid where races.year = 2008 and circuits.name = 'Marina Bay Street Circuit' order by qualifying.q3 asc limit 2
select drivers.forename , drivers.nationality , races.name from races inner join drivers on races.raceid = drivers.driverid order by drivers.dob desc limit 1
select count ( drivers.number ) from drivers inner join results on drivers.driverid = results.driverid inner join status on results.statusid = status.statusid inner join races on results.raceid = races.raceid where races.name = 'Canadian Grand Prix' and status.statusid = 3 group by drivers.driverref order by count ( status.statusid ) desc limit 1
select sum ( driverstandings.wins ) , drivers.forename , drivers.surname from driverstandings inner join results on driverstandings.driverid = results.driverid inner join drivers on results.driverid = drivers.driverid order by drivers.dob asc limit 1
select pitstops.duration from drivers inner join pitstops on drivers.driverid = pitstops.driverid order by pitstops.duration desc limit 1
select results.fastestlaptime from circuits inner join races on circuits.circuitid = races.circuitid inner join laptimes on races.raceid = laptimes.raceid inner join results on results.fastestlap = laptimes.lap group by results.fastestlapspeed order by results.fastestlapspeed desc limit 1
select pitstops.duration from drivers inner join pitstops on drivers.driverid = pitstops.driverid where drivers.driverref = 'hamilton' or drivers.forename = 'lewis' order by pitstops.duration desc limit 1
select pitstops.lap from drivers inner join pitstops on drivers.driverid = pitstops.driverid inner join races on pitstops.raceid = races.raceid where races.name = 'Australian Grand Prix' and drivers.surname = 'Hamilton'
select pitstops.duration from races inner join pitstops on races.raceid = pitstops.raceid inner join drivers on pitstops.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and races.year = 2011
select laptimes.time from races inner join laptimes on races.raceid = laptimes.raceid inner join drivers on laptimes.driverid = drivers.driverid inner join results on laptimes.driverid = results.driverid where drivers.forename = 'Lewis' and drivers.surname = 'hamilton'
select drivers.forename , drivers.surname from laptimes inner join results on laptimes.driverid = results.driverid inner join races on laptimes.raceid = races.raceid inner join drivers on drivers.driverid = laptimes.driverid order by laptimes.time asc limit 1
select laptimes.position from drivers inner join laptimes on drivers.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid where drivers.driverref = 'hamilton' or drivers.forename = 'lewis' order by laptimes.time asc limit 1
select laptimes.lap from circuits inner join races on circuits.circuitid = races.circuitid inner join laptimes on races.raceid = laptimes.raceid inner join results on laptimes.time = results.time where races.name = 'Austrian Grand Prix' order by results.fastestlaptime desc limit 1
sql placeholder
select races.name from races inner join laptimes on races.raceid = laptimes.raceid inner join circuits on circuits.circuitid = races.circuitid inner join results on results.raceid = laptimes.raceid where circuits.country = 'Austria' and races.name = 'Austrian Grand Prix'
select pitstops.duration from races inner join pitstops on races.raceid = pitstops.raceid inner join circuits on circuits.circuitid = races.circuitid where races.name = 'Austrian Grand Prix'
sql placeholder
select avg ( pitstops.milliseconds ) from drivers inner join pitstops on drivers.driverid = pitstops.driverid where drivers.forename = 'Lewis' and drivers.surname = 'hamilton'
select cast ( sum ( laptimes.milliseconds ) as real ) / count ( laptimes.lap ) from laptimes inner join races on laptimes.raceid = races.raceid inner join circuits on circuits.circuitid = races.circuitid where circuits.country = 'It'
select player.player_name , player_attributes.player_api_id from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id order by player_attributes.overall_rating desc limit 1
select height , player_name from player order by height desc limit 1
select preferred_foot from player_attributes order by potential asc limit 1
select count ( player.player_name ) from player_attributes inner join player on player_attributes.id = player.player_api_id where player_attributes.overall_rating between 60 and 65 and player_attributes.defensive_work_rate like 'low'
select player.player_name , player_attributes.id from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id order by player_attributes.crossing desc limit 5
select league.name from match inner join league on match.league_id = league.id where match.season = 2016 group by league.name order by sum ( match.home_team_goal + match.away_team_goal ) desc limit 1
sql placeholder
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_fifa_api_id order by player_attributes.penalties desc limit 10
select match.away_team_api_id from match inner join league on match.league_id = league.id where league.name = 'Scotland Premier League' and match.season = 2010 order by match.away_team_goal - match.home_team_goal desc limit 1
select sum ( team_attributes.buildupplayspeed ) from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id order by team_attributes.buildupplayspeed desc limit 4
select league.name from match inner join league on match.league_id = league.id where match.season = 2016 group by league.name order by sum ( match.home_team_goal - match.away_team_goal ) desc limit 1
select sum ( case when player_attributes.sprint_speed >= 97 then 1 else 0 end ) - sum ( case when player_attributes.sprint_speed >= 97 then 1 else 0 end ) from player_attributes inner join match on player_attributes.player_api_id = match.id where match.season = 2013 and match.season = 2015
select league.name , sum ( match.date ) from match inner join league on match.league_id = league.id group by league.name order by count ( match.date ) desc limit 1
select avg ( height ) from player where birthday between '1990-01-01 00:00:00' and '1996-01-01 00:00:00'
select player.player_api_id from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.overall_rating = 5 and substr ( player_attributes.date , 1 , 4 ) = '2010' order by player_attributes.overall_rating desc limit 1
select team_attributes.team_api_id from team inner join team_attributes on team.team_fifa_api_id = team_attributes.team_api_id where team_attributes.buildupplayspeed between 51 and 59
sql placeholder
select cast ( sum ( case when player_attributes.preferred_foot = 'left' then 1 else 0 end ) as real ) * 100 / count ( player_attributes.preferred_foot ) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.birthday between '1987-01-01 00:00:00' and '1992-12-31 00:00:00'
select league.name from match inner join league on match.league_id = league.id group by league.name order by sum ( match.home_team_goal + match.away_team_goal ) desc limit 5
select avg ( player_attributes.long_shots ) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Ahmed Samir Farag'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.height > 180 group by player.player_name order by avg ( player_attributes.heading_accuracy ) desc limit 10
sql placeholder
select league.name from match inner join league on match.league_id = league.id where match.season = 2009/2010 and match.home_team_goal > ( select avg ( away_team_goal ) from match )
select team_short_name from team where team_long_name = 'Queens Park Rangers'
select player_name from player where substr ( birthday , 1 , 4 ) = '1970' and substr ( birthday , 6 , 2 ) = '10'
select player_attributes.attacking_work_rate from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Franco Zennaro'
sql placeholder
select player_attributes.heading_accuracy , player_attributes.finishing from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Francois Affolter' and player_attributes.date = '2014-09-18 00:00:00'
select player_attributes.overall_rating from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player.player_name = 'Gabriel Tamas' and strftime ( '%Y' , player_attributes.date ) = '2011'
select sum ( case when match.season = 2015/2016 then 1 else 0 end ) from match inner join league on match.league_id = league.id where league.name = 'Scotland Premier League'
select player_attributes.preferred_foot from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id order by player.birthday desc limit 1
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id order by player_attributes.potential desc limit 1
select count ( player.id ) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.weight < 130 and player_attributes.preferred_foot = 'left'
select team.team_short_name from team inner join team_attributes on team.id = team_attributes.team_api_id where team_attributes.chancecreationpassingclass = 'Risky'
select player_attributes.defensive_work_rate from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player.player_name = 'David Wilson'
select player.birthday from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id order by player_attributes.overall_rating desc limit 1
select league.name from match inner join league on match.country_id = league.country_id inner join country on league.country_id = country.id where country.name = 'Netherlands'
select avg ( match.home_team_goal ) from country inner join match on country.id = match.country_id where match.season = '2010/2011' and country.name = 'Poland'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player_attributes.finishing desc , player.height desc limit 1
select player_name from player where height > 180
select count ( id ) from player where strftime ( '%Y' , birthday ) = '1990'
select count ( * ) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id inner join team_attributes on team.team_fifa_api_id = team_attributes.team_api_id inner join team on team_attributes.team_api_id = team.team_fifa_api_id where player.player_name = 'Adam' and player.weight > 170
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.overall_rating > 80 and player_attributes.date between 2008 and 2010
select player_attributes.potential from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Aaron Doran'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.preferred_foot = 'left'
sql placeholder
select team_attributes.buildupplaypassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_short_name = 'CLB'
sql placeholder
select avg ( player_attributes.overall_rating ) from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player.height > 170 and player_attributes.date between 2010 and 2015
select player_name from player order by height asc limit 1
select country.name from match inner join country on match.country_id = country.id inner join league on match.league_id = league.country_id where league.name = 'Italy Serie A'
select team.team_short_name from team inner join team_attributes on team.id = team_attributes.team_api_id where team_attributes.buildupplayspeed = 31 and team_attributes.buildupplaydribbling = 53 and team_attributes.buildupplaypassing = 32
select avg ( player_attributes.overall_rating ) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Aaron Doran'
select sum ( case when match.date between '2008-08' and '2008-10' then 1 else 0 end ) from match inner join league on match.league_id = league.id where league.name = 'Germany 1. Bundesliga'
select team.team_short_name from match inner join team on team.team_api_id = match.home_team_api_id where match.home_team_goal = 10
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.potential = 61 and player_attributes.balance = 61 order by player_attributes.balance desc limit 1
select avg ( player_attributes.ball_control ) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Abdou Diallo'
select team_long_name from team where team_short_name = 'GEN'
select player_name from player where birthday > 0 order by birthday desc limit 1
select player_name from player order by height desc limit 1
select sum ( case when player_attributes.attacking_work_rate = 'low' then 1 else 0 end ) from player_attributes inner join player on player_attributes.player_api_id = player.id where player_attributes.preferred_foot = 'left'
select country.name from match inner join country on match.country_id = country.id inner join league on match.id = league.country_id where league.name = 'Belgium Jupiler League'
select league.name from match inner join league on match.league_id = league.id inner join country on league.country_id = country.id where country.name = 'Germany'
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id order by player_attributes.overall_rating desc limit 1
select sum ( case when player_attributes.defensive_work_rate = 'high' then 1 else 0 end ) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where strftime ( '%Y' , player.birthday ) < '1986'
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.crossing > 0 order by player_attributes.crossing desc limit 1
select player_attributes.heading_accuracy from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player.player_name = 'Ariel Borysiuk'
select count ( player.player_name ) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.height > 180 and player_attributes.volleys > 70
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.volleys > 70 and player_attributes.dribbling > 70
select sum ( case when country.name = 'Belgium' then 1 else 0 end ) from match inner join country on match.country_id = country.id where match.season = 2008/2009
select player_attributes.long_passing from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player.birthday asc limit 1
select count ( match.id ) from match inner join league on match.league_id = league.id where league.name = 'Belgium Jupiler League' and strftime ( '%Y' , match.date ) = '2009-04'
select league_id from match where season = '2008/2009' group by league_id order by count ( league_id ) desc limit 1
select avg ( player_attributes.overall_rating ) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where strftime ( '%Y' , player.birthday ) < '1986'
select cast ( ( sum ( case when player.player_name = 'Ariel Borysiuk' then player_attributes.overall_rating else 0 end ) - sum ( case when player.player_name = 'Paulin Puel' then player_attributes.overall_rating else 0 end ) ) as real ) * 100 / sum ( case when player.player_name = 'Paulin Puel' then player_attributes.overall_rating else 0 end ) from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id
select sum ( team_attributes.buildupplayspeed ) / count ( team_attributes.id ) from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'Heart of Midlothian'
select avg ( player_attributes.overall_rating ) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Pietro Marino'
select sum ( player_attributes.crossing ) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Aaron Lennox'
sql placeholder
select player_attributes.preferred_foot from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player.player_name = 'Abdou Diallo'
select max ( player_attributes.overall_rating ) from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player.player_name = 'Dorlan Pabon'
select avg ( match.away_team_goal ) from team inner join match on team.team_api_id = match.away_team_api_id inner join country on match.country_id = country.id where team.team_long_name = 'Parma' and country.name = 'Italy'
sql placeholder
select player_attributes.overall_rating from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Aaron Mooy' and player_attributes.date = '2016-02-04 00:00:00'
select player_attributes.potential from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player.player_name = 'Francesco Parravicini' and player_attributes.date = '2010-08-30 00:00:00'
select player_attributes.attacking_work_rate from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.date = '2015-05-01 00:00:00' and player.player_name = 'Francesco Migliore'
select player_attributes.defensive_work_rate from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Kevin Berigaud' and player_attributes.date = '2013-02-22 00:00:00'
select player_attributes.date from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id inner join match on player.player_api_id = match.id where player.player_name = 'Kevin Constant' order by player_attributes.crossing desc limit 1
sql placeholder
select team_attributes.buildupplaydribblingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_short_name = 'LEI' and team_attributes.date = '2015-09-10 00:00:00'
select team_attributes.buildupplaypassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id inner join match on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'FC Lorient' and team_attributes.date = '2010-02-22'
select team_attributes.chancecreationpassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id inner join match on team.team_api_id = match.id where team.team_long_name = 'PEC Zwolle' and team_attributes.date = '2013-09-20 00:00:00'
sql placeholder
select team_attributes.defenceaggressionclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id inner join match on team.team_api_id = match.id where team.team_long_name = 'Hannover 96' and team_attributes.date = '2015-09-10 00:00:00'
select avg ( player_attributes.overall_rating ) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Marko Arnautovic' and player_attributes.date between '2007-02-22 00:00:00' and '2016-04-21 00:00:00'
select cast ( ( sum ( case when player.player_name = 'Landon Donovan' then player_attributes.overall_rating else 0 end ) - sum ( case when player_attributes.overall_rating = 'Jordan Bowery' then 1 else 0 end ) ) as real ) * 100 / sum ( case when player.player_name = 'Landon Donovan' then 1 else 0 end ) from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.date = '2013-07-12'
select player_name from player order by height desc limit 5
select player_api_id from player order by weight desc limit 10
select player_name from player where birthday > 34 and datetime ( current_timestamp , 'localtime' ) - datetime ( birthday ) > 35
select sum ( match.home_team_goal ) from match inner join player on match.id = player.player_api_id where player.player_name = 'Aaron Lennon'
select sum ( case when player.player_name = 'Daan Smith' then match.away_team_goal else 0 end ) from match inner join player on match.away_team_api_id = player.player_api_id
select sum ( match.home_team_goal ) from player inner join match on player.player_api_id = match.home_team_api_id where player.player_fifa_api_id = 23
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id order by player_attributes.overall_rating desc limit 10
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id order by player_attributes.potential desc limit 1
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.attacking_work_rate = 'high'
select player.player_name , player_attributes.date from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.finishing = 1 order by player_attributes.date - player.birthday desc limit 1
select player.player_name from league inner join country on league.country_id = country.id inner join player on player.player_fifa_api_id = player.player_api_id where country.name = 'Belgium'
sql placeholder
sql placeholder
sql placeholder
select team.team_short_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team_attributes.chancecreationpassingclass = 'Safe'
sql placeholder
select player_name from player where height > 180 order by height desc limit 3
select count ( * ) from player where player_name like 'Aaron%' and birthday > 1990
select sum ( case when jumping AND id = 6 then jumping else 0 end ) - sum ( case when jumping AND id = 23 then jumping else 0 end ) from player_attributes
select player_attributes.id from player_attributes inner join player on player_attributes.player_api_id = player.id where player_attributes.preferred_foot = 'right' order by player_attributes.potential asc limit 3
select count ( player.player_name ) from player_attributes inner join player on player_attributes.id = player.player_api_id where player_attributes.preferred_foot = 'left' order by player_attributes.potential desc limit 1
select cast ( sum ( case when player_attributes.strength > 80 then 1 else 0 end ) as real ) * 100 / count ( player.id ) from player_attributes inner join player on player_attributes.player_api_id = player.id
select country.name from match inner join country on match.country_id = country.id inner join league on match.league_id = league.country_id where league.name = 'Poland Ekstraklasa'
select home_team_goal , away_team_goal from match where date like '2008-09-24%' and away_team_goal = ( select away_team_goal from match where date like '2008-09-24%' )
select player_attributes.sprint_speed , player_attributes.agility , player_attributes.acceleration from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Alexis Blin'
select team_attributes.buildupplayspeedclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id inner join player_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'KSV Cercle Brugge' and team_attributes.buildupplayspeedclass in ( 'Balance' , 'Fast' )
select sum ( case when match.season = '2015/2016' then 1 else 0 end ) from match inner join league on match.league_id = league.id where league.name = 'Serie A'
select max ( match.home_team_goal ) from match inner join league on match.country_id = league.country_id where league.name = 'Netherlands Eredivisie'
select player_attributes.finishing , player_attributes.curve from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player.weight desc limit 1
select league.name from team inner join match on team.id = match.home_team_api_id inner join league on match.league_id = league.id where match.season = '2015/2016' group by league.name order by count ( team.team_long_name ) desc limit 1
select team.team_long_name from team inner join match on team.team_api_id = match.away_team_api_id order by match.away_team_goal desc limit 1
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id order by player_attributes.overall_rating desc limit 1
select cast ( sum ( case when player_attributes.overall_rating > 70 and player.height < 180 then 1 else 0 end ) as real ) * 100 / count ( player_attributes.strength ) from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id
select cast ( sum ( case when patient.sex = 'M' then 1 else 0 end ) as real ) * 100 / count ( patient.sex ) , cast ( sum ( case when patient.sex = 'M' then 1 else 0 end ) as real ) * 100 / count ( patient.sex ) , sum ( case when patient.sex = 'M' then 1 else 0 end ) from patient
select cast ( sum ( case when sex = 'F' then 1 else 0 end ) as real ) * 100 / count ( sex ) from patient where strftime ( '%Y' , birthday ) > '1930'
select cast ( sum ( case when admission = '+' then 1 else 0 end ) as real ) * 100 / count ( id ) from patient where strftime ( '%Y' , birthday ) between '1930-01' and '1940-12-31'
select cast ( sum ( case when patient.admission = '+' then 1 else 0 end ) as real ) / sum ( case when patient.admission = '-' then 1 else 0 end ) from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'SLE'
select patient.diagnosis , laboratory.date from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.id = 30609
sql placeholder
select id , sex , birthday from patient where diagnosis = 'LDH > 500'
select patient.id , examination.id - strftime ( '%Y' , patient.birthday ) from patient inner join examination on patient.id = examination.id where examination.rvvt = '+'
select patient.id , patient.sex , patient.diagnosis from patient inner join examination on patient.id = examination.id where examination.thrombosis = 2
sql placeholder
select patient.id , patient.sex , patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.alb < 3.5
select cast ( sum ( case when patient.sex = 'F' then 1 else 0 end ) as real ) * 100 / count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.tp < '6.0' or laboratory.tp > 8.5
select avg ( laboratory.igg ) from patient inner join laboratory on patient.id = laboratory.id where patient.admission = '+' and strftime ( '%Y' , patient.admission ) - strftime ( '%Y' , patient.birthday ) >= '50'
select count ( sex ) from patient where description = '1997' and sex = 'F' and strftime ( '%Y' , admission ) = '-'
sql placeholder
sql placeholder
select cast ( max ( strftime ( '%Y' , patient.birthday ) ) - min ( strftime ( '%Y' , patient.birthday ) ) as real ) / min ( strftime ( '%Y' , patient.birthday ) ) from patient inner join laboratory on patient.id = laboratory.id inner join examination on patient.id = examination.id where laboratory.tg > 200
select examination.symptoms , examination.diagnosis from patient inner join examination on patient.id = examination.id order by patient.birthday asc limit 1
select cast ( count ( patient.id ) as real ) / 12 from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.date between '1998-01-01' and '1998-12-31'
sql placeholder
select cast ( sum ( case when patient.sex = 'M' then 1 else 0 end ) as real ) / sum ( case when patient.sex = 'F' then 1 else 0 end ) from patient inner join laboratory on patient.id = laboratory.id
sql placeholder
sql placeholder
sql placeholder
select examination.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.date between '1985-01-01' and '1995-12-31' group by examination.diagnosis order by count ( examination.diagnosis ) desc limit 1
select cast ( sum ( case when strftime ( '%Y' , current_timestamp ) - strftime ( '%Y' , patient.birthday ) = '1999' then 1 else 0 end ) as real ) / count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id inner join examination on patient.id = examination.id where laboratory.date between '1991-10-01' and '1991-10-30'
select examination.id , examination.diagnosis , laboratory.igg from laboratory inner join examination on laboratory.id = examination.id inner join patient on examination.id = patient.id order by laboratory.hgb desc limit 1
sql placeholder
sql placeholder
select distinct patient.sex from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'AORTITIS'
select laboratory.igg from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where patient.diagnosis = 'SLE' and laboratory.date = '1993-11-12' and laboratory.igg = 1
select patient.sex from patient inner join laboratory on patient.id = laboratory.id where laboratory.date = '1992-06-12' and laboratory.got = 9 and laboratory.gpt = '9'
select 1992 - strftime ( '%Y' , patient.birthday ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.date = '1991-10-21' and laboratory.ua = '8.4'
sql placeholder
sql placeholder
sql placeholder
select sum ( case when laboratory.date like '1981-11-%' then 'T-CHO' else 0 end ) - sum ( case when laboratory.date like '1981-12-%' then 'T-CHO' else 0 end ) from patient inner join laboratory on patient.id = laboratory.id where patient.birthday = '1959-02-18'
sql placeholder
sql placeholder
select count ( id ) from patient where sex = 'F' and strftime ( '%Y' , birthday ) = '1964' and admission = '+'
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select patient.sex from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.diagnosis = 'PSS' and laboratory.crp > 2 and laboratory.cre = 1 and laboratory.ldh = 123
select avg ( laboratory.alb ) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where patient.diagnosis = 'SLE' and patient.sex = 'F' and laboratory.plt > 400
select examination.symptoms from patient inner join examination on patient.id = examination.id where patient.diagnosis = 'SLE' order by examination.symptoms desc limit 1
select description , diagnosis from patient where id = 48473 order by description asc limit 1
select count ( patient.id ) from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'APS' and patient.sex = 'F'
select count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where strftime ( '%Y' , laboratory.date ) = '1997' and laboratory.tp > 6 and laboratory.tp < 8.5
select cast ( sum ( case when examination.diagnosis like '%ITP%' then 1 else 0 end ) as real ) * 100 / count ( patient.id ) from patient inner join examination on patient.id = examination.id where examination.symptoms = 'thrombocytopenia'
select cast ( sum ( case when patient.sex = 'F' then 1 else 0 end ) as real ) * 100 / count ( patient.sex ) from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'RA' and strftime ( '%Y' , patient.birthday ) = '1980'
sql placeholder
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'F' and laboratory.wbc < 3.5
sql placeholder
select laboratory.ua from patient inner join laboratory on patient.id = laboratory.id inner join examination on examination.id = laboratory.id where patient.id = 57266 and patient.sex = 'M' and laboratory.ua > 6.5 and examination.diagnosis = 'Normal'
select laboratory.date from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.id = 48473 and laboratory.got >= 60
sql placeholder
select patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.gpt >= 60 and patient.sex = 'M'
select patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.gpt > 60 order by patient.birthday desc limit 1
select avg ( laboratory.ldh ) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.ldh < 500
select patient.id , laboratory.id - strftime ( '%Y' , patient.birthday ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ldh between 600 and 800
select case when patient.admission = '+' then '-' end from patient inner join laboratory on patient.id = laboratory.id where laboratory.alp < 300
select patient.id , laboratory.alp from patient inner join laboratory on patient.id = laboratory.id where patient.birthday = 1982 and laboratory.alp < 300
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.tp < 6.0
select laboratory.id - laboratory.tp from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'F' and laboratory.tp > 8.5
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.alb < 3.5 or laboratory.alb >= 5.5 order by laboratory.alb desc
select case when laboratory.alb between 3.5 and 5.5 then 'Yes' else 'No' end from patient inner join laboratory on patient.id = laboratory.id where patient.birthday = 1982
select cast ( sum ( case when patient.sex = 'M' then 1 else 0 end ) as real ) * 100 / count ( patient.sex ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ua > 6.5 and patient.sex = 'F'
select avg ( laboratory.ua ) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.ua < 8.0 and patient.sex in ( 'M' , 'F' )
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.un = 29
select patient.id , patient.sex , patient.birthday from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'RA' and strftime ( '%Y' , examination.symptoms ) < 30
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.cre >= 1.5
select case when sum ( case when patient.sex = 'M' then 1 else 0 end ) > sum ( case when patient.sex = 'F' then 1 else 0 end ) then 'True' else 'FALSE' end as true from patient inner join laboratory on patient.id = laboratory.id where laboratory.cre >= 1.5
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select patient.id , patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.tg > 300
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.tg > 200 and patient.birthday - strftime ( '%Y' , laboratory.date ) > 50
select distinct patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.cpk < 250 and patient.admission = '-'
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.birthday between 1936 and 1956 and patient.sex = 'M' and laboratory.cpk > 250
sql placeholder
select patient.id , laboratory.glu from patient inner join laboratory on patient.id = laboratory.id where strftime ( '%Y' , patient.description ) >= '1991' and laboratory.glu < 180
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.wbc >= 90.0 or laboratory.wbc < 3.5
select patient.id , strftime ( '%Y' , laboratory.date ) - strftime ( '%Y' , patient.birthday ) as age from patient inner join laboratory on patient.id = laboratory.id where laboratory.rbc < 3.5
select patient.admission from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'F' and strftime ( '%Y' , laboratory.date ) > 50 and laboratory.rbc < 3.5 or laboratory.rbc >= 6.0
select patient.id , patient.sex from patient inner join laboratory on patient.id = laboratory.id where laboratory.hgb < 10 and patient.admission = '-'
select patient.id , patient.sex from patient inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SLE' and laboratory.hgb < 10 order by patient.birthday asc limit 1
select patient.id , laboratory.id - strftime ( '%Y' , patient.birthday ) from patient inner join laboratory on patient.id = laboratory.id inner join examination on patient.id = examination.id where laboratory.hct >= 52 group by patient.id , patient.birthday having count ( patient.id ) > 2
select avg ( hct ) from laboratory where date like '1991%' and hct < 29
select sum ( case when laboratory.plt < 100 then 1 else 0 end ) - sum ( case when laboratory.plt > 400 then 1 else 0 end ) from laboratory inner join patient on laboratory.id = patient.id inner join examination on patient.id = examination.id
select distinct patient.id from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where strftime ( '%Y' , laboratory.date ) = '1984' and patient.birthday >= 50 and laboratory.plt between 100 and 400
select cast ( sum ( case when patient.sex = 'F' then 1 else 0 end ) as real ) * 100 / count ( patient.sex ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.date is not null
select patient.id from patient inner join laboratory on patient.id = laboratory.id where strftime ( '%Y' , laboratory.date ) > '1992' and laboratory.pt < 14
sql placeholder
select count ( distinct examination.id ) from examination inner join patient on examination.id = patient.id inner join laboratory on patient.id = laboratory.id where laboratory.aptt > 45 and examination.thrombosis = 3
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id inner join examination on patient.id = examination.id where patient.sex = 'M' and laboratory.wbc >= 3.5 and laboratory.wbc < 90.0 and laboratory.fg < 150 and laboratory.fg >= 450
select count ( distinct patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.birthday > '1980-01-01' and laboratory.fg > 150 and laboratory.igg < 450
sql placeholder
sql placeholder
sql placeholder
select count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.igg < 2000 and examination.symptoms is not null
sql placeholder
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where strftime ( '%Y' , laboratory.date ) >= '1990' and laboratory.iga < 800
sql placeholder
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.crp = '+' or laboratory.crp = '-' or laboratory.crp < 1.0 and patient.description is null
select count ( distinct patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.crp >= 1.0 and strftime ( '%Y' , laboratory.date ) - strftime ( '%Y' , patient.birthday ) < 18
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'RA' and laboratory.ra in ( '-' , '+-' ) and examination.kct = '+'
select distinct patient.diagnosis from patient inner join examination on patient.id = examination.id where strftime ( '%Y' , patient.birthday ) >= '1995' and examination.diagnosis in ( 'RA' , '+-' )
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where patient.diagnosis = 'APS' and laboratory.c4 > 10
select count ( distinct patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.rnp in ( '-' , '+-' )
select patient.birthday , laboratory.date from patient inner join laboratory on patient.id = laboratory.id where laboratory.rnp in ( '-' , '+-' ) order by patient.birthday desc limit 1
select count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where examination.thrombosis = '1' and laboratory.sm in ( '-' , '+-' )
select patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.sm in ( '-' , '+-' ) order by patient.birthday desc limit 3
sql placeholder
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.sc170 in ( '-' , '+-' ) and patient.sex = 'M' and examination.symptoms = 'vertigo'
select count ( distinct patient.id ) from patient inner join laboratory on patient.id = laboratory.id where strftime ( '%Y' , laboratory.date ) < '1990' and laboratory.ssa in ( '-' , '+-' )
select patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.ssa in ( '-' , '+-' )
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id where patient.diagnosis = 'SLE' and examination.diagnosis in ( '-' , '+-' )
select count ( distinct examination.symptoms ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.ssb in ( '-' , '+-' )
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.centromea = '-' and laboratory.ssb = '+-'
sql placeholder
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.dna < 8 and patient.description is null
sql placeholder
select cast ( sum ( case when patient.diagnosis = 'SLE' then 1 else 0 end ) as real ) * 100 / count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.got > 60
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.got < 60 and patient.sex = 'M'
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.got >= 60 order by patient.birthday desc limit 1
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.gpt < 60 order by laboratory.gpt desc limit 3
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.got < 60 and patient.sex = 'M'
sql placeholder
sql placeholder
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.alp > 300 and patient.admission = '+'
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.admission = '-' and laboratory.alp < 300
select distinct patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id inner join examination on examination.id = examination.id where laboratory.tp < 6.0
select count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SJS' and laboratory.tp between 6.0 and 8.5
sql placeholder
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.alb > 3.5 and laboratory.alb < 5.5 and laboratory.tp > 8.0
select laboratory.igg , laboratory.igg , laboratory.igm from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'F' and laboratory.ua > 6.50 order by laboratory.ua desc limit 1
select examination.ana from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where patient.diagnosis = 'ANA' and laboratory.cre < 1.5 order by examination.ana desc limit 1
select patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.cre < 1.5 order by laboratory.igg desc limit 1
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.tg < 200 and examination.symptoms is not null
select patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.tg = ( select max ( tg ) from laboratory )
select patient.id from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.diagnosis = 'Thrombosis' and laboratory.cpk < 250
select count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.cpk < 250 and examination.kct = '+' or examination.rvvt = '+' or examination.lac = '+'
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.glu > 180 order by patient.birthday asc limit 1
select count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.glu < 180 and examination.thrombosis = 0
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.admission = '+' and laboratory.wbc >= 3.5 and laboratory.wbc <= 90.0
select count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SLE' and laboratory.wbc >= 3.5 and laboratory.wbc <= 90.0
select patient.id from patient inner join laboratory on patient.id = laboratory.id where patient.admission = '-' and laboratory.rbc < 6.0
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.plt > 100 and laboratory.plt < 400 and examination.diagnosis is not null
select laboratory.plt from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where patient.diagnosis = 'MCTD' and laboratory.plt < 100 and laboratory.plt > 400
select cast ( sum ( laboratory.pt ) as real ) / count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.pt < 14
select count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.diagnosis = 'Severe thrombosis' and laboratory.aptt < 14
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Angela' and member.last_name = 'Sanders'
select count ( * ) from major inner join member on major.major_id = member.link_to_major where major.college = 'College of Engineering'
select member.first_name , member.last_name from member inner join major on member.link_to_major = major.major_id where major.department = 'Art and Design Department'
select count ( event.event_name ) from event inner join attendance on event.event_id = attendance.link_to_event where event.event_name = 'Women''s Soccer'
select distinct member.phone from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where event.event_name = 'Women''s Soccer'
select count ( member.member_id ) from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where event.event_name = 'Women''s Soccer' and member.t_shirt_size = 'Medium'
select event.event_name from attendance inner join event on attendance.link_to_event = event.event_id group by event.event_name order by count ( attendance.link_to_event ) desc limit 1
select major.college from member inner join major on member.zip = major.major_id where member.position = 'Vice President'
select event.event_name from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where member.first_name = 'Maya' and member.last_name = 'Mclean'
select count ( event.event_id ) from event inner join member on event.event_id = member.member_id where member.first_name = 'Sacha' and member.last_name = 'Harrison' and strftime ( '%Y' , event.event_date ) = '2019'
select count ( * ) from ( select event.event_id from event inner join attendance on event.event_id = attendance.link_to_event where event.type = 'Meeting' group by event.event_id having count ( event.event_id ) > 10 )
select event.event_name from event inner join attendance on event.event_id = attendance.link_to_event group by event.event_id having count ( event.event_id ) > 20
select cast ( count ( event.event_id ) as real ) / count ( distinct event.event_name ) from event inner join zip_code on event.event_id = zip_code.zip_code where event.type = 'Meeting' and strftime ( '%Y' , event.event_date ) = '2020'
select expense_description from expense order by cost desc limit 1
select count ( member.member_id ) from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Environmental Engineering'
select member.first_name , member.last_name from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where event.event_name = 'Laugh Out Loud'
select member.last_name from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Law and Constitutional Studies'
select zip_code.county from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Sherri' and member.last_name = 'Ramsey'
select major.college from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Tyler' and member.last_name = 'Hewitt'
select income.amount from member inner join income on member.member_id = income.link_to_member where member.position = 'Vice President'
select budget.spent from event inner join budget on event.event_id = budget.link_to_event where event.event_name = 'September Meeting' and budget.category = 'Food'
select zip_code.city , zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code where member.position = 'President'
select member.first_name , member.last_name from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.state = 'Illinois'
select budget.spent from event inner join budget on event.event_id = budget.link_to_event where event.event_name = 'September Meeting' and budget.category = 'Advertisement'
select major.department from major inner join member on major.major_id = member.link_to_major where member.first_name = 'Pierce' and member.last_name = 'Guidi'
select sum ( budget.category ) from budget inner join event on budget.link_to_event = event.event_id where event.event_name = 'October Speaker'
select expense.approved from expense inner join event on expense.expense_id = event.event_id where event.event_name = 'October Meeting' and event.event_date = '2019-10-08'
select sum ( expense.cost ) / count ( expense.expense_id ) from member inner join expense on member.member_id = expense.expense_id where member.first_name = 'Elijah' and member.last_name = 'Allen' and strftime ( '%Y' , expense.expense_date ) = '10'
sql placeholder
select location from event where event_name = 'Spring Budget Review'
select expense.cost from expense inner join event on expense.expense_id = event.event_id where expense.expense_description = 'Posters' and event.event_date = '2019-09-04'
select remaining from budget where category = 'Food' order by amount desc limit 1
select income.notes from income inner join event on income.notes = event.notes where income.source = 'Fundraising' and income.date_received = '2019-09-14'
select count ( major_id ) from major where college = 'College of Humanities and Social Sciences'
select member.phone from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Carlo' and member.last_name = 'Jacobs'
select zip_code.county from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Adela' and member.last_name = 'O''Gallagher'
select count ( budget.budget_id ) from event inner join budget on event.event_id = budget.link_to_event inner join expense on budget.budget_id = expense.link_to_budget where event.event_name = 'November Meeting' and budget.remaining < 0
select sum ( budget.amount ) from event inner join budget on event.event_id = budget.link_to_event where event.event_name = 'September Speaker'
select event.status from event inner join expense on event.event_id = expense.expense_id where expense.expense_description = 'Post Cards , Posters' and expense.expense_date = '2019-8-20'
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Brent' and member.last_name = 'Thomason'
select count ( member.member_id ) from major inner join member on major.major_id = member.link_to_major where major.major_name = 'Human Development and Family Studies' and member.t_shirt_size = 'Large'
select zip_code.type from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Christof' and member.last_name = 'Nielson'
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.position = 'Vice President'
select zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Sacha' and member.last_name = 'Harrison'
select distinct major.department from member inner join major on member.member_id = major.major_id where member.position = 'President'
select income.date_received from member inner join income on member.member_id = income.link_to_member where member.first_name = 'Connor' and member.last_name = 'Hilton' and income.source = 'Dues'
select member.first_name , member.last_name from member inner join income on member.member_id = income.source where income.source = 'Dues' order by income.date_received asc limit 1
select cast ( sum ( case when event.event_name = 'Yearly Kickoff' then budget.amount else 0 end ) as real ) * 100 / sum ( case when event.event_name = 'October Meeting' then budget.amount else 0 end ) from budget inner join event on budget.link_to_event = event.event_id where budget.category = 'Advertisement'
select cast ( sum ( case when budget.category = 'Parking' then budget.amount else 0 end ) as real ) * 100 / sum ( budget.amount ) from budget inner join event on budget.link_to_event = event.event_id where event.event_name = 'November Speaker'
select sum ( expense.cost ) from expense inner join event on expense.expense_id = event.event_id where expense.expense_description = 'Pizza'
select count ( distinct city ) from zip_code where county = 'Orange County' and state = 'Virginia'
select department from major where college = 'College of Humanities and Social Sciences'
select zip_code.city , zip_code.county , zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Amy' and member.last_name = 'Firth'
sql placeholder
select member.first_name , member.last_name from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where event.event_name = 'October Meeting'
select t.college from ( select major.college , count ( major.college ) as num from member inner join major on member.link_to_major = major.major_id group by major.college ) as t order by t.num desc limit 1
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.phone = '809-555-3360'
select event.event_name from budget inner join event on budget.link_to_event = event.event_id order by budget.amount desc limit 1
select expense.expense_description from member inner join expense on member.member_id = expense.expense_id where member.position = 'Vice President'
select count ( attendance.link_to_member ) from event inner join attendance on event.event_id = attendance.link_to_event where event.event_name = 'Women''s Soccer'
select income.date_received from member inner join income on member.member_id = income.link_to_member where member.first_name = 'Casey' and member.last_name = 'Mason'
select count ( member.zip ) from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.state = 'Maryland'
select count ( attendance.link_to_event ) from member inner join attendance on member.member_id = attendance.link_to_member where member.phone = '954-555-6240'
select member.first_name , member.last_name from member inner join major on member.link_to_major = major.major_id where major.department = 'School of Applied Sciences , Technology and Education'
select event.event_name from budget inner join event on budget.link_to_event = event.event_id where event.status = 'Closed' order by budget.spent / budget.amount desc limit 1
select count ( member_id ) from member where position = 'President'
select budget.spent from event inner join budget on event.event_id = budget.link_to_event order by budget.spent desc limit 1
select count ( event.event_id ) from event inner join zip_code on event.event_id = zip_code.zip_code where event.type = 'Meeting' and strftime ( '%Y' , event.event_date ) = '2020'
select sum ( spent ) from budget where category = 'Food'
select case when count ( link_to_event ) > 7 then 'first_name' else 'last_name' end from attendance
sql placeholder
select zip_code from zip_code where state = 'South Carolina' and city = 'Georgetown'
select count ( income.amount ) from member inner join income on member.member_id = income.link_to_member where member.first_name = 'Grant' and member.last_name = 'Gilmour'
select member.first_name , member.last_name from member inner join income on member.member_id = income.link_to_member where income.amount > 40
select sum ( expense.cost ) from event inner join expense on event.event_id = expense.expense_id where event.event_name like 'Baseball game'
select budget.budget_id from event inner join budget on event.event_id = budget.link_to_event where event.event_name = 'Yearly Kickoff'
select member.first_name , member.last_name , income.source from member inner join income on member.member_id = income.link_to_member order by income.amount desc limit 1
select event.event_name from event inner join expense on expense.expense_id = event.event_id order by expense.cost asc limit 1
select cast ( sum ( case when event.event_name = 'Yearly Kickoff' then expense.cost else 0 end ) as real ) * 100 / sum ( expense.cost ) from event inner join expense on expense.expense_id = event.event_id
select cast ( sum ( case when major_name = 'Finance' then 1 else 0 end ) as real ) / sum ( case when major_name = 'Physics' then 1 else 0 end ) from major
select source , amount from income where date_received between '2019-09-01' and '2019-09-30' order by amount desc limit 1
select first_name , last_name , email from member where position = 'Secretary'
select count ( member.member_id ) from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Physics Teaching'
select count ( attendance.link_to_member ) from event inner join attendance on event.event_id = attendance.link_to_event where event.event_name = 'Community Theater' and strftime ( '%Y' , event.event_date ) = '2019'
sql placeholder
sql placeholder
select event.event_name from budget inner join event on budget.link_to_event = event.event_id where budget.category = 'Advertisement' order by budget.spent desc limit 1
select attendance.link_to_event from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where member.first_name = 'Maya' and member.last_name = 'Mclean' and event.event_name = 'Women''s Soccer'
select cast ( sum ( case when zip_code.type = 'Community Service' then 1 else 0 end ) as real ) * 100 / count ( event.event_id ) from event inner join zip_code on event.event_id = zip_code.zip_code where event.event_date between '2019-01-01-01' and '2019-12-31'
select expense.cost from event inner join expense on event.event_id = expense.expense_id where event.event_name = 'September Speaker' and expense.expense_description = 'Posters'
select member.t_shirt_size from member inner join zip_code on member.zip = zip_code.zip_code group by member.t_shirt_size order by count ( member.t_shirt_size ) desc limit 1
select event.event_name from budget inner join event on budget.link_to_event = event.event_id inner join expense on event.event_id = expense.link_to_budget where event.status = 'Closed' and budget.remaining < 0 order by expense.cost asc limit 1
select event.type , sum ( expense.cost ) from event inner join expense on event.event_id = expense.expense_id where event.event_name = 'October Meeting'
select budget.amount , budget.category from event inner join budget on event.event_id = budget.link_to_event where event.event_name = 'April Speaker' order by budget.amount desc
select budget_id from budget where category = 'Food' order by amount desc limit 1
select amount from budget where category = 'Advertisement' order by amount desc limit 3
select sum ( cost ) from expense where expense_description = 'Parking'
select sum ( cost ) from expense where expense_date = '2019-08-20'
select member.first_name , member.last_name , expense.cost from member inner join expense on member.member_id = expense.expense_id where member.member_id = 'rec4BLdZHS2Blfp4v'
select expense.expense_description from member inner join expense on member.member_id = expense.link_to_member where member.first_name = 'Sacha' and member.last_name = 'Harrison'
select distinct expense.expense_description from member inner join expense on member.member_id = expense.link_to_member where member.t_shirt_size = 'X-Large'
select distinct member.zip from member inner join expense on member.member_id = expense.link_to_member inner join zip_code on member.zip = zip_code.zip_code where expense.cost < 50
select major.major_name from major inner join member on major.major_id = member.link_to_major where member.first_name = 'Phillip' and member.last_name = 'Cullen'
select distinct member.position from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Business'
select count ( member.member_id ) from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Business' and member.t_shirt_size = 'Medium'
select distinct event.type from budget inner join event on budget.budget_id = event.event_id where budget.remaining > 30
select budget.category from budget inner join event on budget.link_to_event = event.event_id where event.location = 'MU 215'
select category from event inner join budget on event.event_id = budget.category where event.event_date = '2020-03-24T12:00:00'
select distinct major.major_name from major inner join member on major.major_id = member.link_to_major where member.position = 'Student Club Vice President'
select cast ( sum ( case when major.major_name = 'Mathematics' then 1 else 0 end ) as real ) * 100 / count ( member.position ) from major inner join member on major.major_id = member.link_to_major
select budget.category from event inner join budget on event.event_id = budget.category where event.location = 'MU 215'
select count ( income_id ) from income where amount = 50
select count ( * ) from member where position = 'Member' and t_shirt_size = 'X-Large'
select count ( major_id ) from major where college = 'College of Agriculture and Applied Sciences' and department = 'School of Applied Sciences , Technology and Education'
select member.last_name , major.department , major.college from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Environmental Engineering'
select distinct budget.category from budget inner join event on budget.budget_id = event.event_id where event.location = 'MU 215' and event.type = 'Guest Speaker' and budget.spent = 0
select distinct zip_code.city , zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code inner join major on member.member_id = major.major_id where major.department = 'Electrical and Computer Engineering Department' and member.position = 'Member'
select event.event_name from member inner join zip_code on member.zip = zip_code.zip_code inner join event on event.event_id = zip_code.zip_code where member.position = 'Vice President' and event.location = '900 E. Washington St.' and event.type = 'Social'
select member.last_name , member.position from member inner join expense on member.member_id = expense.expense_id where expense.expense_description = 'Pizza' and expense.expense_date = '2019-09-10'
select member.last_name from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where event.event_name = 'Women''s Soccer' and member.position = 'Member'
select cast ( sum ( case when income.amount = 50 then 1 else 0 end ) as real ) * 100 / count ( income.amount ) from income inner join member on income.link_to_member = member.member_id where member.t_shirt_size = 'Medium' and member.position = 'Member'
select county from zip_code where type = 'PO Box'
select zip_code from zip_code where state = 'Puerto Rico' and county = 'San Juan Municipio' and type = 'PO Box'
select event_name from event where status = 'Closed' and type = 'Game' and event_date between '2019-03-15' and '2020-03-20'
select expense.link_to_member from expense inner join attendance on expense.link_to_member = attendance.link_to_member where expense.cost > 50
sql placeholder
select major.college from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Katy' and major.major_id = 'rec1N0upiVLy5esTO'
select member.phone from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Business' and major.college = 'College of Agriculture and Applied Sciences'
sql placeholder
select count ( member.member_id ) from member inner join major on member.link_to_major = major.major_id where major.college = 'College of Education & Human Services' and member.position = 'Member'
select cast ( sum ( case when budget.remaining < 0 then 1 else 0 end ) as real ) * 100 / count ( event.event_id ) from event inner join budget on event.event_id = budget.link_to_event
select event_id , location , status from event where event_date between '2019-11-01' and '2020-03-31'
select expense_description from expense group by expense_description having cast ( sum ( cost ) as real ) / count ( expense_id ) > 50
select first_name , last_name from member where t_shirt_size = 'X-Large'
select cast ( sum ( case when type = 'PO Box' then 1 else 0 end ) as real ) * 100 / count ( zip_code ) from zip_code
select event.event_name , event.location from budget inner join event on budget.link_to_event = event.event_id where budget.remaining > 0
select event.event_name , event.event_date from expense inner join event on expense.expense_id = event.event_id where expense.expense_description = 'Pizza' and expense.cost > 50 and expense.cost < 100
select member.first_name , member.last_name , major.major_name from member inner join expense on member.member_id = expense.link_to_member inner join major on member.link_to_major = major.major_id where expense.cost > 100
sql placeholder
select t.first_name , t.last_name from ( select member.first_name , member.last_name , count ( expense.cost ) as num from event inner join expense on event.event_id = expense.expense_id inner join member on expense.link_to_member = member.member_id group by member.first_name , member.last_name ) as t order by t.num desc limit 1
select avg ( income.amount ) from member inner join income on member.member_id = income.link_to_member inner join expense on member.member_id = expense.link_to_member where member.position != 'Member'
select event.event_name from budget inner join event on budget.link_to_event = event.event_id inner join expense on expense.expense_id = budget.budget_id where expense.cost < ( select sum ( expense.cost ) / count ( event.event_id ) from event inner join budget on event.event_id = budget.link_to_event inner join expense on expense.expense_id = budget.budget_id where budget.category = 'Parking' )
select cast ( sum ( expense.cost ) as real ) * 100 / count ( event.event_id ) from event inner join expense on event.event_id = expense.expense_id where event.type = 'Game'
select expense.link_to_budget from expense inner join budget on expense.link_to_budget = budget.budget_id where expense.expense_description = 'Water , chips , cookies' order by expense.cost desc limit 1
select member.first_name , member.last_name from member inner join expense on member.member_id = expense.expense_id order by expense.cost desc limit 5
select member.first_name , member.last_name , member.phone from member inner join expense on member.member_id = expense.link_to_member where expense.cost > ( select avg ( cost ) from expense )
select cast ( sum ( case when zip_code.state = 'Maine' then 1 else 0 end ) as real ) * 100 / count ( member.position ) - cast ( sum ( case when zip_code.state = 'Vermont' then 1 else 0 end ) as real ) * 100 / count ( member.position ) from member inner join zip_code on member.zip = zip_code.zip_code
select major.major_name , major.department from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Garrett' and member.last_name = 'Gerke'
select member.first_name , member.last_name , expense.cost from member inner join expense on member.member_id = expense.link_to_member where expense.expense_description = 'Water , Veggie tray , supplies'
select member.last_name , member.phone from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Elementary Education'
select budget.category , budget.amount from budget inner join event on budget.budget_id = event.event_id where event.event_name = 'January Speaker'
select event.event_name from budget inner join event on budget.link_to_event = event.event_id where budget.category = 'Food'
sql placeholder
select budget.category from expense inner join budget on expense.link_to_budget = budget.budget_id where expense.expense_description = 'Posters'
select member.first_name , member.last_name , major.college from member inner join zip_code on member.zip = zip_code.zip_code inner join major on member.link_to_major = major.major_id where member.position = 'Secretary'
select sum ( budget.spent ) , event.event_name from event inner join budget on event.event_id = budget.link_to_event inner join expense on budget.budget_id = expense.link_to_budget where budget.category = 'Speaker Gifts'
select zip_code.city from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Garrett' and member.last_name = 'Girke'
select member.first_name , member.last_name , member.position from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.city = 'Lincolnton' and zip_code.state = 'North Carolina' and member.zip = 28092
select count ( gasstationid ) from gasstations where country = 'CZE' and segment = 'Premium'
select cast ( sum ( iif ( currency = 'EUR' , 1 , 0 ) ) as real ) / sum ( iif ( currency = 'CZK' , 1 , 0 ) ) from customers
select customers.customerid from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'LAM' and yearmonth.consumption between '2012-01-01' and '2012-12-31' order by yearmonth.consumption asc limit 1
select avg ( yearmonth.consumption ) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'SME' and 2013 between 201301 and 201312
select customers.customerid from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'CZK' and yearmonth.consumption > 0 and yearmonth.date between '2011-01' and '2011-12' order by yearmonth.consumption desc limit 1
select count ( customers.customerid ) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'KAM' and yearmonth.consumption < 30000 and yearmonth.date between '2012-01-01' and '2012-12-31'
select sum ( yearmonth.consumption ) - sum ( customers.currency ) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.date between '2012-01-01' and '2012-12-31'
select yearmonth.customerid from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on transactions_1k.customerid = yearmonth.customerid where customers.currency = 'EUR' group by yearmonth.customerid order by sum ( yearmonth.consumption ) desc limit 1
select customers.segment from customers inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.consumption = ( select min ( consumption ) from yearmonth )
select yearmonth.consumption from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on transactions_1k.customerid = yearmonth.customerid where customers.currency = 'CZK' order by yearmonth.consumption desc limit 4
select yearmonth.consumption from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'SME' and strftime ( '%Y' , yearmonth.date ) = '2013'
select sum ( yearmonth.consumption ) / count ( customers.customerid ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on transactions_1k.customerid = yearmonth.customerid where strftime ( '%Y' , transactions_1k.date ) = '2013' and customers.segment = 'K' and customers.currency = 'CZK'
select customers.segment from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on transactions_1k.customerid = yearmonth.customerid where customers.segment = 'SME' and customers.currency = 'EUR' and strftime ( '%Y' , transactions_1k.date ) between '2012' and '2013' group by customers.segment order by sum ( consumption ) / sum ( customers.currency ) desc limit 1
select sum ( yearmonth.consumption ) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.consumption between '2013-08' and '2013-11'
select sum ( case when segment = 'Discount' then 1 else 0 end ) - sum ( case when segment = 'Hollow' then 1 else 0 end ) from gasstations
select max ( yearmonth.consumption ) - min ( yearmonth.consumption ) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.date = '2013-04' and customers.customerid = 7
select sum ( case when customers.currency = 'Czech Koruna' then 1 else 0 end ) , sum ( case when customers.currency = 'Euro' then 1 else 0 end ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid
select customers.customerid from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'LAM' and customers.currency = 'Euro' and yearmonth.date = '2013-10' order by yearmonth.consumption desc limit 1
select customers.customerid , sum ( yearmonth.consumption ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'KAM' group by customers.customerid order by sum ( yearmonth.consumption ) desc limit 1
select sum ( yearmonth.consumption ) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'KAM' and yearmonth.date = '2013-05'
select cast ( sum ( iif ( yearmonth.consumption > 46.73 , 1 , 0 ) ) as real ) * 100 / count ( customers.customerid ) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'LAM'
select country , count ( gasstationid ) from gasstations group by country order by count ( gasstationid ) desc limit 1
select cast ( sum ( iif ( customers.currency = 'Euro' , 1 , 0 ) ) as real ) * 100 / count ( customers.customerid ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where customers.segment = 'KAM'
select cast ( sum ( consumption ) as real ) * 100 / count ( customerid ) from yearmonth where date like '201202'
select cast ( sum ( case when segment = 'Premium' then 1 else 0 end ) as real ) * 100 / count ( gasstationid ) from gasstations
select customerid from yearmonth where consumption = ( select max ( consumption ) from yearmonth where date = '201309' )
select customers.segment from customers inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.date = '201309' order by yearmonth.consumption asc limit 1
select customers.customerid from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'SME' and yearmonth.date = '2012-06' order by yearmonth.consumption asc limit 1
select consumption from yearmonth where date = '2012' order by consumption desc limit 4
select sum ( yearmonth.consumption ) / 12 from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'euro' group by yearmonth.consumption order by sum ( yearmonth.consumption ) desc limit 1
sql placeholder
select distinct gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.date = '2013-06'
select gasstations.chainid from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.transactionid = 1
sql placeholder
select sum ( price ) / count ( transactionid ) from transactions_1k where date = '2012-01'
select count ( customers.customerid ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.consumption > 1000 and customers.currency = 'euro'
select distinct products.description from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid inner join products on transactions_1k.productid = products.productid where gasstations.country = 'CZE'
select distinct transactions_1k.time from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.chainid = 11
select count ( transactions_1k.transactionid ) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and transactions_1k.price > 1000
select count ( transactions_1k.transactionid ) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and transactions_1k.date >= '2012-01-01'
select sum ( transactions_1k.price ) / count ( transactions_1k.transactionid ) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE'
select sum ( transactions_1k.price ) / count ( customers.customerid ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where customers.currency = 'euro'
select transactions_1k.customerid from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where date in ( select date from yearmonth where strftime ( '%Y-%m-%d' , date ) = '2012-08-25' ) order by amount desc limit 1
select gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid inner join customers on transactions_1k.customerid = customers.customerid where transactions_1k.date = '2012-08-25'
select distinct customers.currency from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.date = '2012-08-24' and transactions_1k.time = '16:25:00'
select distinct customers.segment from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.time = '21:20:00' and transactions_1k.date = '2012-08-23'
select count ( transactions_1k.transactionid ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where customers.currency = 'EUR' and strftime ( '%Y-%m-%d' , transactions_1k.time ) > '13:00:00'
sql placeholder
select distinct gasstations.country from transactions_1k inner join gasstations on transactions_1k.gasstationid = gasstations.gasstationid where transactions_1k.date = '2012-08-24' and transactions_1k.time = '12:42:00'
select distinct productid from transactions_1k where date = '2012-08-23' and time = '21:20:00'
select yearmonth.consumption , strftime ( '%Y-%m-%d' , transactions_1k.date ) , yearmonth.date from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on transactions_1k.customerid = yearmonth.customerid where transactions_1k.amount = 124.05 and transactions_1k.date = '2012-08-24'
select count ( transactions_1k.transactionid ) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and transactions_1k.time >= '8:09:30' and transactions_1k.date = '2012-08-26'
select customers.currency from customers inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.consumption = 214582.17 and yearmonth.date = '2013-06'
select distinct gasstations.country from transactions_1k inner join customers on transactions_1k.customerid = customers.customerid inner join gasstations on transactions_1k.gasstationid = gasstations.gasstationid where transactions_1k.customerid = 667467
sql placeholder
select cast ( sum ( case when customers.currency = 'EUR' then 1 else 0 end ) as real ) * 100 / count ( customers.customerid ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where strftime ( '%Y' , transactions_1k.date ) = '2012-08-25'
select sum ( yearmonth.consumption ) - sum ( yearmonth.consumption ) from yearmonth inner join transactions_1k on yearmonth.customerid = transactions_1k.customerid inner join customers on transactions_1k.customerid = customers.customerid where yearmonth.date = '2012-08-24' and transactions_1k.amount = 634.8
select transactions_1k.gasstationid from transactions_1k inner join gasstations on transactions_1k.gasstationid = gasstations.gasstationid order by transactions_1k.amount desc limit 1
select cast ( sum ( case when segment = 'Premium' then 1 else 0 end ) as real ) * 100 / count ( segment ) from gasstations where country = 'SVK'
select transactions_1k.amount , transactions_1k.date from transactions_1k inner join yearmonth on transactions_1k.customerid = yearmonth.customerid where yearmonth.customerid = 38508
select products.description from products inner join transactions_1k on products.productid = transactions_1k.productid order by transactions_1k.transactionid desc limit 5
select customers.segment , transactions_1k.price , customers.currency from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid group by customers.segment , transactions_1k.price , customers.currency order by sum ( transactions_1k.price ) / sum ( transactions_1k.amount ) desc limit 1
select gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid inner join products on transactions_1k.productid = products.productid where transactions_1k.productid = '2' order by transactions_1k.price desc limit 1
select distinct yearmonth.consumption from transactions_1k inner join yearmonth on transactions_1k.customerid = yearmonth.customerid inner join products on transactions_1k.productid = products.productid where transactions_1k.productid = 5 and strftime ( '%Y-%m' , yearmonth.date ) = '201208'
