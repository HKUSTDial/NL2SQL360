sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select count ( schools.cdscode ) from schools inner join satscores on schools.cdscode = satscores.cds where satscores.avgscrmath < 400 and schools.virtual = 'F'
select distinct schools.school from satscores inner join schools on satscores.cds = schools.cdscode where satscores.numtsttakr > 500 and schools.magnet = 1
select schools.phone from satscores inner join schools on satscores.cds = schools.cdscode where satscores.numge1500 group by schools.school order by count ( schools.phone ) desc limit 1
sql placeholder
select count ( schools.charter ) from satscores inner join schools on satscores.cds = schools.cdscode where satscores.avgscrmath > 560
sql placeholder
sql placeholder
sql placeholder
select schools.phone from satscores inner join schools on satscores.cds = schools.cdscode order by satscores.numge1500 / satscores.numtsttakr desc limit 3
sql placeholder
select schools.district from schools inner join satscores on schools.cdscode = satscores.cds where satscores.avgscrread = 5 group by schools.district order by avg ( satscores.avgscrread ) desc limit 1
select count ( schools.cdscode ) from schools inner join frpm on schools.cdscode = frpm.cdscode inner join satscores on schools.cdscode = satscores.cds where satscores.cname = 'Alameda' and satscores.numtsttakr < 100
select schools.charter from schools inner join frpm on schools.cdscode = frpm.cdscode inner join satscores on schools.cdscode = satscores.cds where satscores.avgscrwrite = 499 group by schools.charter
sql placeholder
select schools.phone from schools inner join satscores on schools.cdscode = satscores.cds where satscores.avgscrmath = ( select max ( avgscrmath ) from satscores )
sql placeholder
sql placeholder
select schools.school from schools inner join satscores on schools.cdscode = satscores.cds where satscores.cname = 'Contra Costa' group by schools.school order by count ( satscores.numtsttakr ) desc limit 1
sql placeholder
sql placeholder
select distinct schools.fundingtype from schools inner join satscores on schools.cdscode = satscores.cds where satscores.cname = 'Riverside' and satscores.avgscrmath > 400
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
select schools.admfname1 , schools.admlname1 , schools.admlname2 from schools inner join satscores on schools.cdscode = satscores.cds where satscores.numge1500 >= 1500 group by schools.admfname1 , schools.admlname1 order by count ( schools.cdscode ) desc limit 3
select schools.streetabr , schools.city , schools.zip , schools.state from schools inner join satscores on schools.cdscode = satscores.cds where satscores.numge1500 = ( select min ( numge1500 ) from satscores )
select schools.website from schools inner join satscores on schools.cdscode = satscores.cds where satscores.cname = 'Los Angeles' and satscores.numtsttakr between 2000 and 3000
select avg ( satscores.numtsttakr ) from schools inner join satscores on schools.cdscode = satscores.cds where schools.opendate between '1980-01-01' and '1980-12-31'
select schools.phone from schools inner join frpm on schools.cdscode = frpm.cdscode inner join satscores on schools.cdscode = satscores.cds where satscores.dname = 'Fresno Unified' order by satscores.avgscrread asc limit 1
sql placeholder
select distinct schools.edopsname from schools inner join satscores on schools.cdscode = satscores.cds inner join frpm on schools.cdscode = frpm.cdscode order by satscores.avgscrmath desc limit 1
select satscores.avgscrmath , schools.county from schools inner join satscores on schools.cdscode = satscores.cds group by schools.school , schools.county order by avg ( satscores.avgscrmath ) asc limit 1
select satscores.avgscrwrite , schools.city from satscores inner join schools on satscores.cds = schools.cdscode where satscores.numge1500 = 1500 order by schools.city desc limit 1
select schools.school , satscores.avgscrwrite from schools inner join satscores on schools.cdscode = satscores.cds where schools.admfname1 = 'Ricci Ulrich'
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select schools.mailstrabr , schools.school from schools inner join satscores on schools.cdscode = satscores.cds inner join frpm on schools.cdscode = frpm.cdscode order by satscores.avgscrmath desc limit 5 , 1
select schools.mailstrabr , schools.school from schools inner join satscores on schools.cdscode = satscores.cds where satscores.avgscrread is not null order by satscores.avgscrread asc limit 1
select count ( schools.cdscode ) from schools inner join satscores on schools.cdscode = satscores.cds where schools.mailcity = 'Lakeport' and satscores.numge1500 > 0
select count ( satscores.numtsttakr ) from satscores inner join schools on satscores.cds = schools.cdscode where schools.mailcity = 'Fresno'
select mailzip from schools where admfname1 = 'Avetik Atoian'
select cast ( sum ( case when county = 'Colusa' then 1 else 0 end ) as real ) * 100 / sum ( case when county = 'Humboldt' then 1 else 0 end ) from schools where mailstate = 'CA'
sql placeholder
select schools.phone , schools.ext from schools inner join satscores on schools.cdscode = satscores.cds where satscores.avgscrwrite = ( select max ( avgscrwrite ) from satscores )
select phone , ext , school from schools where zip = 95203-3704
select website from schools where admfname1 = 'Mike Larson' and admfname2 = 'Dante Alvarez'
sql placeholder
select count ( schools.charter ) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.city = 'Hickman' and schools.doc = 52 and schools.charter = 1
sql placeholder
select schools.admfname1 , schools.city from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.charter = '00D2'
select count ( schools.mailcity ) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.mailcity = 'Hickman' and schools.charter = '00D4'
sql placeholder
sql placeholder
select sum ( case when schools.closeddate = 1989 then 1 else 0 end ) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.city = 'San Francisco' and schools.district = 'Community College District'
select schools.county from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.soc = 11 and strftime ( '%Y' , schools.closeddate ) between '1980' and '1989' group by schools.county order by count ( schools.county ) desc limit 1
select ncesdist from schools where soc = 31
sql placeholder
select frpm.cdscode from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.city = 'Fresno' and schools.magnet = 0
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select gsserved from schools where city = 'Adelanto' group by gsserved order by count ( cdscode ) desc limit 1
sql placeholder
sql placeholder
sql placeholder
select gsoffered from schools where longitude = ( select max ( longitude ) from schools )
sql placeholder
select admfname1 , admfname2 , district from schools group by admfname1 , admfname2 order by count ( cdscode ) desc limit 2
sql placeholder
select schools.district , schools.county , schools.school from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.charter = 40
sql placeholder
select schools.admemail1 , schools.school from schools inner join satscores on schools.cdscode = satscores.cds where satscores.numge1500 order by satscores.numtsttakr desc limit 1
select count ( account.account_id ) from account inner join district on account.district_id = district.district_id where district.a3 = 'east Bohemia' and account.frequency = 'POPLATEK PO OBRATU'
select count ( account.account_id ) from account inner join district on account.district_id = district.district_id inner join loan on account.account_id = loan.account_id where district.a3 = 'Prague'
select a12 from district where a13 = 1996 order by a12 desc limit 1
select count ( * ) from client inner join district on client.district_id = district.district_id where client.gender = 'F' and district.a11 > 6000 and district.a9 < 10000
select count ( client.client_id ) from client inner join district on client.district_id = district.district_id where district.a3 = 'north Bohemia' and client.gender = 'M' and district.a11 > 8000
select client.client_id , max ( account.account_id ) - min ( account.account_id ) from client inner join account on client.client_id = account.account_id where client.gender = 'F' group by client.client_id order by client.birth_date asc limit 1
sql placeholder
select count ( disp.client_id ) from account inner join disp on account.account_id = disp.account_id where disp.type = 'OWNER' and account.frequency = 'POPLATEK TYDNE'
select client.client_id from client inner join disp on client.client_id = disp.client_id inner join account on account.account_id = disp.account_id where disp.type = 'POPLATEK PO OBRATU'
select account.account_id , loan.status from loan inner join account on loan.account_id = account.account_id where strftime ( '%Y' , loan.date ) = '1997' and account.frequency = 'POPLATEK TYDNE' order by loan.amount asc limit 1
select account.account_id from loan inner join account on loan.account_id = account.account_id where loan.duration > 12 order by loan.amount desc limit 1
select count ( client.client_id ) from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where client.gender = 'F' and strftime ( '%Y' , client.birth_date ) < 1950 and district.a2 = 'Slokolov'
select account.account_id from account inner join trans on account.account_id = trans.account_id where strftime ( '%Y' , account.date ) = '1995' order by account.date asc limit 1
select distinct trans.account from account inner join trans on account.account_id = trans.account_id where strftime ( '%Y' , account.date ) < '1997' and trans.amount > 3000
select client.client_id from card inner join client on card.card_id = client.client_id where card.issued = '1994-03-03'
select account.date from account inner join trans on account.account_id = trans.account_id where trans.amount = 840 and trans.date = '1998-10-14'
select account.district_id from loan inner join account on loan.account_id = account.account_id where loan.date = '1994-08-25'
select trans.amount from card inner join trans on trans.account_id = card.card_id inner join disp on card.disp_id = disp.disp_id where card.issued = '1996-10-21' order by trans.amount desc limit 1
select client.gender from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id order by district.a11 desc limit 1
select trans.amount from loan inner join trans on loan.account_id = trans.account_id inner join account on trans.account_id = account.account_id order by loan.amount desc limit 1
select count ( client.gender ) from account inner join district on account.district_id = district.district_id inner join client on account.district_id = client.district_id where district.a2 = 'Jesenik' and client.gender = 'F'
select disp.disp_id from trans inner join disp on trans.trans_id = disp.disp_id where trans.amount = 5100 and trans.date = '1998-09-02'
select count ( account.account_id ) from account inner join district on account.district_id = district.district_id where district.a2 = 'Litomerice' and account.date = '1996'
select district.a2 from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where client.birth_date = '1976-01-19' and client.gender = 'F'
sql placeholder
select account.account_id from client inner join district on client.district_id = district.district_id inner join account on district.district_id = account.district_id where district.a3 = 'Prague' order by client.client_id asc limit 1
select cast ( sum ( case when client.gender = 'M' then 1 else 0 end ) as real ) * 100 / count ( client.gender ) from client inner join district on client.district_id = district.district_id where district.a3 = 'south Bohemia' group by district.district_id order by count ( client.gender ) desc limit 1
sql placeholder
select cast ( sum ( case when status = 'A' then amount else 0 end ) as real ) * 100 / sum ( amount ) from loan where status = 'A'
select cast ( sum ( case when status = 'C' then amount else 0 end ) as real ) * 100 / count ( amount ) from loan where amount < 100000
select account.account_id , district.a2 , district.a3 from account inner join district on account.district_id = district.district_id where account.date like '1993%' and account.frequency = 'POPLATEK PO OBRATU'
select client.client_id , account.account_id , account.frequency from account inner join client on account.district_id = client.district_id inner join district on client.district_id = district.district_id where district.a3 = 'east Bohemia' and account.date between 1995 and 2000
select account.account_id , account.date from account inner join district on account.district_id = district.district_id where district.a2 = 'Prachatice'
select district.a2 , district.a3 from loan inner join account on loan.account_id = account.account_id inner join district on account.district_id = district.district_id where loan.loan_id = 4990
select account.account_id , district.a2 , district.a3 from loan inner join account on loan.account_id = account.account_id inner join district on account.district_id = district.district_id where loan.amount > 300000
select loan.loan_id , district.a3 , district.a11 from district inner join account on district.district_id = account.district_id inner join loan on account.account_id = loan.account_id where loan.duration = 60
sql placeholder
select cast ( sum ( case when district.a2 = 'Decin' then 1 else 0 end ) as real ) * 100 / count ( * ) from account inner join district on account.district_id = district.district_id where strftime ( '%Y' , account.date ) = '1993'
select account_id from account where frequency = 'POPLATEK MESICNE'
select district.a2 from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where client.gender = 'F' group by district.a2 order by count ( district.a2 ) desc limit 10
select district.district_id from card inner join disp on card.disp_id = disp.disp_id inner join trans on disp.account_id = trans.account_id inner join district on district.district_id = card.disp_id where trans.type = 'VYDAJ' and strftime ( '%Y-%m' , trans.date ) = '1996-01' group by district.district_id order by count ( district.a2 ) desc limit 10
select count ( client.client_id ) from client inner join disp on client.client_id = disp.client_id inner join card on disp.disp_id = card.card_id inner join district on client.district_id = district.district_id where district.a3 = 'south bohemia'
select district.a3 from loan inner join account on loan.account_id = account.account_id inner join district on account.district_id = district.district_id where loan.status = 'C' group by district.a3 order by count ( loan.status ) desc limit 1
select avg ( loan.amount ) from loan inner join client on loan.loan_id = client.client_id where client.gender = 'M'
select a2 , a13 from district where a13 = 1996 order by a13 desc limit 1
sql placeholder
select count ( trans.account_id ) from account inner join trans on account.account_id = trans.account_id where trans.operation = 'VYBER KARTOU' and account.frequency = 'POPLATEK MESICNE' and trans.balance < 0
select count ( loan.account_id ) from loan inner join account on loan.account_id = account.account_id where loan.amount > 250000 and account.frequency = 'POPLATEK MESICNE' and account.date between '1995-01-01' and '1997-12-31'
select count ( account.account_id ) from loan inner join account on loan.account_id = account.account_id inner join client on account.district_id = client.district_id where client.district_id = 1 and loan.status = 'C'
select count ( client.gender ) from client inner join district on client.district_id = district.district_id inner join account on district.district_id = account.district_id where client.gender = 'M' and district.a15 = 2 group by district.district_id order by count ( client.gender ) desc limit 1 , 1
select count ( * ) from card inner join disp on card.disp_id = disp.disp_id where card.type = 'gold' and disp.type = 'DISPONENT'
select count ( account.account_id ) from account inner join district on account.district_id = district.district_id where district.a2 = 'Pisek'
select district.district_id from account inner join trans on account.account_id = trans.account_id inner join district on account.district_id = district.district_id where trans.amount > 10000 and trans.date between '1997-01-01' and '1997-12-31'
sql placeholder
select account.account_id from account inner join disp on account.account_id = disp.account_id inner join card on disp.disp_id = card.disp_id where card.type in ( 'gold' , 'junior' ) group by account.account_id
select avg ( amount ) from trans where operation = 'VYBER KARTOU' and date = 2021
sql placeholder
select count ( client.client_id ) from client inner join disp on client.client_id = disp.client_id inner join card on disp.disp_id = card.disp_id inner join loan on disp.account_id = loan.account_id where client.gender = 'F' and card.type = 'C' and loan.loan_id = 'Loan_id'
select count ( client.client_id ) from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where district.a3 = 'south Bohemia' and client.gender = 'F'
select loan.account_id from client inner join district on client.district_id = district.district_id inner join loan on loan.account_id = disp.account_id inner join disp on disp.account_id = loan.account_id where district.a2 = 'Tabor' and disp.type = 'OWNER'
sql placeholder
select count ( account.account_id ) from account inner join district on account.district_id = district.district_id inner join trans on account.account_id = trans.account_id where district.a3 = 'north bohemia' and trans.bank = 'AB'
select district.district_id from account inner join trans on account.account_id = trans.account_id inner join district on account.district_id = district.district_id where trans.type = 'VYDAJ'
select avg ( district.a15 ) from account inner join district on account.district_id = district.district_id where district.a3 = 'Southeast Asia' and strftime ( '%Y' , account.date ) > '1997'
select count ( card.card_id ) from disp inner join card on card.disp_id = disp.disp_id inner join loan on disp.account_id = loan.account_id where card.type = 'classic' and disp.type = 'OWNER'
select count ( client.client_id ) from client inner join district on client.district_id = district.district_id where district.a2 = 'Hl.m. Praha' and client.gender = 'M'
select cast ( sum ( case when issued < 1998 then 1 else 0 end ) as real ) * 100 / count ( * ) from card where type = 'gold'
select client.client_id from loan inner join disp on loan.account_id = disp.account_id inner join client on client.client_id = disp.client_id order by loan.amount desc limit 1
select count ( district.a15 ) from account inner join district on account.district_id = district.district_id where account.account_id = 532 and district.district_id = 1995
sql placeholder
select trans.trans_id from client inner join trans on client.client_id = trans.trans_id where client.client_id = 3356 and trans.operation = 'VYBER'
select count ( account.account_id ) from account inner join loan on account.account_id = loan.account_id where account.frequency = 'POPLATEK TYDNE' and loan.amount < 200000
select card.type from client inner join disp on client.client_id = disp.client_id inner join card on disp.disp_id = card.disp_id where client.client_id = 13539
select district.a3 from client inner join district on client.district_id = district.district_id where client.client_id = 3541
select district.a2 from loan inner join account on loan.account_id = account.account_id inner join district on account.district_id = district.district_id where loan.status = 'A' group by district.district_id order by count ( account.account_id ) desc limit 1
sql placeholder
select trans.trans_id from account inner join trans on account.account_id = trans.account_id inner join district on account.district_id = district.district_id where district.district_id = 5
select count ( account.account_id ) from account inner join district on account.district_id = district.district_id where district.a2 = 'Jesenik'
select client.client_id from client inner join disp on client.client_id = disp.client_id inner join card on disp.disp_id = card.disp_id where card.issued >= '1996-01-01' and card.type = 'junior'
select cast ( sum ( case when client.gender = 'F' then 1 else 0 end ) as real ) * 100 / count ( client.gender ) from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where district.a11 > 10000
sql placeholder
select count ( * ) from trans where operation = 'VYBER KARTOU' and strftime ( '%Y' , date ) > '1995'
select sum ( case when a3 = 'east Bohemia' then 1 else 0 end ) - sum ( case when a3 = 'north Bohemia' then 1 else 0 end ) from district where a3 = '1996'
select count ( account_id ) from disp where account_id between 1 and 10
sql placeholder
select strftime ( '%Y' , client.birth_date ) from client inner join disp on client.client_id = disp.client_id inner join account on disp.account_id = account.account_id where disp.account_id = 130
select count ( disp.account_id ) from disp inner join account on disp.account_id = account.account_id where disp.type = 'OWNER' and account.frequency = 'POPLATEK PO OBRATU'
select loan.amount , loan.status from client inner join loan on client.client_id = loan.account_id where client.client_id = 992
select trans.amount , client.gender from client inner join trans on client.client_id = trans.account_id inner join account on trans.account_id = account.account_id where trans.trans_id = 851 and client.client_id = 4
select card.type from card inner join client on card.card_id = client.client_id where client.client_id = 9
select sum ( trans.amount ) from client inner join trans on client.client_id = trans.account_id where client.client_id = 617 and strftime ( '%Y' , trans.date ) = '1998'
select client.client_id from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where client.birth_date between 1983 and 1987 and district.a3 = 'east Bohemia'
select client.client_id from loan inner join client on loan.loan_id = client.client_id where client.gender = 'F' order by loan.amount desc limit 3
select count ( client.client_id ) from loan inner join trans on loan.account_id = trans.account_id inner join client on client.client_id = trans.account_id where client.gender = 'M' and client.birth_date between 1974 and 1976 and loan.amount > 4000
select count ( account.account_id ) from account inner join district on account.district_id = district.district_id where district.a2 = 'Beroun' and strftime ( '%Y' , account.date ) > '1996'
select count ( client.client_id ) from client inner join card on client.client_id = card.card_id where client.gender = 'F' and card.type = 'junior'
select cast ( sum ( case when client.gender = 'F' then 1 else 0 end ) as real ) * 100 / count ( client.gender ) from client inner join account on client.district_id = account.district_id inner join district on account.district_id = district.district_id where district.a3 = 'Prague'
select cast ( sum ( case when client.gender = 'M' then 1 else 0 end ) as real ) * 100 / count ( client.gender ) from client inner join account on client.client_id = account.account_id where account.frequency = 'POPLATEK TYDNE'
select count ( client.client_id ) from client inner join account on client.client_id = account.account_id where account.frequency = 'POPLATEK TYDNE'
select account.account_id from loan inner join account on loan.account_id = account.account_id where loan.duration > 24 order by loan.amount asc limit 1
select account.account_id from client inner join account on client.district_id = account.district_id inner join district on district.district_id = account.district_id where client.gender = 'F' order by district.a11 asc limit 1
select count ( client.client_id ) from client inner join district on client.district_id = district.district_id where client.birth_date = 1920 and district.a3 = 'east Bohemia'
select count ( account.account_id ) from loan inner join account on loan.account_id = account.account_id where loan.duration = 24 and account.frequency = 'POPLATEK TYDNE'
select avg ( loan.amount ) from loan inner join trans on loan.account_id = trans.account_id inner join account on trans.account_id = account.account_id where account.frequency = 'POPLATEK PO OBRATU' and loan.status = 'C'
select client.client_id , district.district_id from client inner join disp on client.client_id = disp.client_id inner join district on client.district_id = district.district_id where disp.type = 'OWNER'
select client.client_id , client.gender , client.birth_date from client inner join disp on client.client_id = disp.client_id inner join card on disp.disp_id = card.disp_id where card.type = 'gold'
select bond_type from bond group by bond_type order by count ( bond_type ) desc limit 1
select count ( molecule.molecule_id ) from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.label = '-' and atom.element = 'cl'
select avg ( atom.element ) from bond inner join atom on atom.molecule_id = bond.molecule_id inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '-'
select cast ( sum ( case when bond.bond_type = '-' then 1 else 0 end ) as real ) / count ( connected.atom_id ) from molecule inner join bond on molecule.molecule_id = bond.molecule_id inner join connected on bond.bond_id = connected.atom_id where molecule.label = '+'
select count ( molecule.molecule_id ) from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.label = '-' and atom.element = 'na'
select molecule.molecule_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '#' and molecule.label = '+'
select cast ( sum ( case when atom.element = 'c' then 1 else 0 end ) as real ) * 100 / count ( atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.molecule_id = connected.atom_id where bond.bond_type = '= '
select count ( bond_id ) from bond where bond_type = '#'
select count ( atom_id ) from atom where element != 'br'
select count ( molecule_id ) from molecule where molecule_id between 'TR000' and 'TR099' and label = '+'
select molecule.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'si'
select atom.element from bond inner join connected on bond.bond_id = connected.bond_id inner join atom on atom.atom_id = connected.atom_id where bond.bond_id = 'TR004_8_9'
sql placeholder
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'h' group by molecule.label order by count ( molecule.label ) desc limit 1
select bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where atom.element = 'te'
select connected.atom_id from bond inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '-'
select connected.atom_id , connected.atom_id2 from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id inner join molecule on molecule.molecule_id = bond.molecule_id where molecule.label = '-'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '-' and atom.element = 'cl' group by atom.element order by count ( atom.element ) asc limit 1
select bond.bond_type from connected inner join bond on connected.bond_id = bond.bond_id where connected.atom_id between 'TR004_8' and 'TR004_20'
select case when molecule.label = '-' then '+' when molecule.label = '-' then '+' end as yorn from atom inner join connected on atom.atom_id = connected.atom_id inner join molecule on molecule.molecule_id = atom.molecule_id where atom.element != 'sn'
select count ( atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where atom.element = 'i' or atom.element = 's' and bond.bond_type = '-'
select connected.atom_id from bond inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '#'
select connected.atom_id from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id inner join molecule on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR181'
select cast ( sum ( case when atom.element = 'f' then 1 else 0 end ) as real ) * 100 / count ( molecule.molecule_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+'
select cast ( sum ( case when bond.bond_type = '#' then 1 else 0 end ) as real ) * 100 / count ( bond.bond_id ) from bond inner join molecule on bond.molecule_id = molecule.molecule_id where molecule.label = '+'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR000' order by atom.element asc limit 3
select connected.atom_id from bond inner join connected on bond.bond_id = connected.bond_id where bond.molecule_id = 'TR001' and bond.bond_id = 'TR001_2_6'
select sum ( case when label = '+' then 1 else 0 end ) - sum ( case when label = '-' then 1 else 0 end ) as diff from molecule
select atom_id2 from connected where bond_id = 'TR_000_2_5'
select bond_id from connected where atom_id2 = 'TR000_2'
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '= 'order by molecule.label asc limit 5
select cast ( sum ( case when bond.bond_type = '= 'then 1 else 0 end ) as real ) * 100 / count ( bond.bond_type ) from bond inner join molecule on bond.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR008'
select cast ( sum ( case when label = '+' then 1 else 0 end ) as real ) * 100 / count ( molecule_id ) from molecule
select cast ( sum ( case when atom.element = 'h' then 1 else 0 end ) as real ) * 100 / count ( atom.atom_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where molecule.molecule_id = 'TR206'
select bond.bond_type from bond inner join molecule on bond.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR000'
select atom.element , molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR060' and molecule.label = '+' or molecule.label = '-'
select bond.bond_type , molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR018' group by bond.bond_type order by count ( bond.bond_type ) desc limit 1
select molecule.molecule_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '-' and molecule.label = '-' order by bond.bond_type asc limit 3
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id inner join connected on bond.bond_id = connected.bond_id where molecule.molecule_id = 'TR006' order by molecule.label asc limit 2
select count ( bond.bond_id ) from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on bond.bond_id = connected.bond_id where atom.atom_id = 'TR009_12' and bond.molecule_id = 'TR009'
select count ( molecule.molecule_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' and atom.element = 'br'
select bond.bond_type , atom.atom_id from bond inner join connected on bond.bond_id = connected.bond_id inner join atom on connected.atom_id = atom.atom_id where bond.bond_id = 'TR001_6_9' group by bond.bond_type , atom.atom_id
select molecule.molecule_id , molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.atom_id = 'TR001_10'
select count ( molecule_id ) from bond where bond_type = '#'
select count ( bond_id ) from connected where atom_id like 'TR%_19'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR004'
select count ( molecule_id ) from molecule where label = '-'
select molecule.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where substr ( atom.atom_id , 7 , 2 ) between 21 and 25 and molecule.label = '+'
select distinct bond.bond_id from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where atom.element in ( 'p' , 'n' )
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '= 'and molecule.label = '+' group by molecule.molecule_id order by count ( bond.molecule_id ) desc limit 1
select cast ( count ( bond.bond_id ) as real ) / count ( distinct atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where atom.element = 'i'
select bond.bond_type , bond.bond_id from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on bond.bond_id = connected.bond_id where atom.atom_id = 45 and connected.atom_id = 7 and 2 like '%'
sql placeholder
select atom.atom_id from bond inner join connected on bond.bond_id = connected.bond_id inner join atom on atom.atom_id = connected.atom_id2 where bond.molecule_id = 'TR447' and bond.bond_type = '#'
select atom.element from bond inner join connected on bond.bond_id = connected.bond_id inner join atom on atom.atom_id = connected.atom_id where bond.bond_id = 'TR144_8_19'
select molecule.molecule_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.label = '+' and bond.bond_type = '= 'group by molecule.molecule_id order by count ( bond.bond_type ) desc limit 1
select atom.element from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.label = '+' group by atom.element order by count ( atom.element ) asc limit 1
select bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where atom.element = 'pb'
select atom.element from atom inner join bond on atom.atom_id = bond.bond_id inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '#' group by atom.element
select cast ( count ( bond.bond_id ) as real ) * 100 / ( select count ( connected.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id2 inner join bond on atom.molecule_id = bond.molecule_id group by bond.bond_type order by count ( bond.bond_id ) desc limit 1 ) from bond inner join connected on bond.bond_id = connected.bond_id inner join atom on atom.atom_id = connected.atom_id group by bond.bond_type order by count ( bond.bond_id ) desc limit 1
select cast ( sum ( case when molecule.label = '+' then 1 else 0 end ) as real ) * 100 / count ( bond.molecule_id ) from bond inner join molecule on bond.molecule_id = molecule.molecule_id where bond.bond_type = '-'
select count ( atom_id ) from atom where element in ( 'c' , 'h' )
select connected.atom_id2 from atom inner join connected on atom.atom_id = connected.atom_id where atom.element = 's'
select bond.bond_type from atom inner join bond on atom.atom_id = bond.bond_id where atom.element = 'sn'
select count ( atom.element ) from bond inner join atom on bond.molecule_id = atom.molecule_id inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '-'
select count ( atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where atom.element = 'p' or atom.element = 'br' and bond.bond_type = '#'
select bond.bond_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.label = '+'
select molecule.molecule_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '-' and molecule.label = '-'
select cast ( sum ( case when atom.element = 'cl' then 1 else 0 end ) as real ) * 100 / count ( atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where bond.bond_type = '-'
select label from molecule where molecule_id in ( 'TR000' , 'TR001' , 'TR002' )
select molecule_id from molecule where label = '-'
select count ( molecule_id ) from molecule where molecule_id between 'TR000' and 'TR030' and label = '+'
select bond_type from bond where molecule_id between 'TR000' and 'TR050'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.molecule_id = atom.molecule_id where bond.bond_id = 'TR001_10_11'
select count ( connected.bond_id ) from atom inner join connected on atom.atom_id = connected.atom_id where atom.element = 'i'
select sum ( case when molecule.label = '+' then 1 else 0 end ) as cnt from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'ca' group by molecule.label order by count ( molecule.label ) desc limit 1
select case when atom.element = 'cl' then 'YES' else 'NO' end as yorn from bond inner join connected on bond.bond_id = connected.bond_id inner join atom on connected.atom_id = atom.atom_id where bond.bond_id = 'TR001_1_8'
select molecule.molecule_id from atom inner join bond on atom.atom_id = bond.molecule_id inner join molecule on molecule.molecule_id = bond.molecule_id where atom.element = 'c' and bond.bond_type = '#' and molecule.label = '-' limit 2
select cast ( sum ( case when atom.element = 'pb' then 1 else 0 end ) as real ) * 100 / count ( molecule.molecule_id ) from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.label = '+'
select atom.element from molecule inner join bond on molecule.molecule_id = bond.molecule_id inner join connected on bond.bond_id = connected.atom_id inner join atom on connected.atom_id = atom.atom_id where molecule.molecule_id = 'TR001' group by atom.element
select molecule_id from bond where bond_type = '= '
select atom.atom_id , connected.atom_id2 from bond inner join connected on bond.bond_id = connected.bond_id inner join atom on atom.atom_id = connected.atom_id where bond.bond_type = '#'
select atom.element from bond inner join connected on bond.molecule_id = atom.molecule_id inner join atom on atom.atom_id = connected.atom_id where bond.bond_id = 'TR005_16_26'
select count ( molecule.molecule_id ) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '-' and molecule.label = '-'
select molecule.label from bond inner join molecule on bond.molecule_id = molecule.molecule_id where bond.bond_id = 'TR001_10_11'
select bond.bond_id , molecule.label from bond inner join molecule on bond.molecule_id = molecule.molecule_id where bond.bond_type = '#'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' group by atom.element
select cast ( sum ( case when atom.element = 'h' then 1 else 0 end ) as real ) / count ( atom.element ) , molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR006'
select case when molecule.label = '+' then 'YES' else 'NO' end as result from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'ca'
select bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where atom.element = 'te'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.molecule_id = connected.atom_id where bond.bond_id = 'TR001_10_11'
select cast ( sum ( case when bond_type = '#' then 1 else 0 end ) as real ) * 100 / count ( molecule_id ) from bond
select cast ( sum ( case when bond.bond_type = '= 'then 1 else 0 end ) as real ) * 100 / count ( bond.bond_type ) from bond inner join molecule on bond.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR047'
select case when molecule.label = '+' then 'YES' else 'NO' end as yorn from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.atom_id = 'TR001_1'
select label from molecule where molecule_id = 'TR151' and label = '+'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on connected.atom_id = atom.atom_id where molecule.molecule_id = 'TR151' and atom.element is not null
select count ( molecule_id ) from molecule where label = '+'
sql placeholder
select count ( atom.atom_id ) from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.label = '+'
select bond.bond_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.label = '+' and bond.bond_type = '= '
select count ( connected.atom_id ) from molecule inner join atom on molecule.molecule_id = atom.molecule_id inner join connected on atom.atom_id = connected.atom_id where atom.element = 'h' and molecule.label = '+'
select distinct bond.molecule_id from bond inner join connected on bond.bond_id = connected.bond_id inner join atom on connected.atom_id = atom.atom_id where atom.atom_id = 9374 and bond.bond_type = 'TR00_1_2'
select atom.atom_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'c' and molecule.label = '-'
select cast ( sum ( case when molecule.label = '+' then 1 else 0 end ) as real ) * 100 / count ( molecule.molecule_id ) from molecule inner join atom on molecule.molecule_id = atom.molecule_id where atom.element = 'h'
select label from molecule where molecule_id = 'TR124' and label = '+'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join molecule on molecule.molecule_id = atom.molecule_id where molecule.molecule_id = 'TR186'
select bond_type from bond where bond_id = 'TR007_4_19'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.molecule_id = connected.bond_id where bond.bond_id = 'TR001_2_4'
select count ( bond.bond_type ) , molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR006' and bond.bond_type = '= '
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' and atom.element = 'cl'
sql placeholder
select molecule.label , atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join bond on molecule.molecule_id = bond.molecule_id inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '#' group by molecule.label , atom.element
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.molecule_id = connected.atom_id where bond.bond_id = 'TR000_2_3'
select count ( bond.bond_id ) from bond inner join connected on bond.bond_id = connected.bond_id inner join atom on atom.atom_id = connected.atom_id where atom.element = 'cl'
select atom.atom_id , count ( bond.bond_type ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where atom.molecule_id = 'TR346' group by atom.atom_id
select count ( molecule.molecule_id ) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '= 'and molecule.label = '+'
select count ( atom.molecule_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where atom.element = 's' and bond.bond_type != '= '
select molecule.label from bond inner join molecule on bond.molecule_id = molecule.molecule_id where bond.bond_id = 'TR001_2_4'
select count ( atom.atom_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on connected.atom_id = atom.atom_id where molecule.molecule_id = 'TR005'
select count ( bond_id ) from bond where bond_type = '-'
select molecule.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'cl' and molecule.label = '+'
select molecule.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'c' and molecule.label = '-'
select cast ( sum ( case when molecule.label = '+' then 1 else 0 end ) as real ) * 100 / count ( atom.molecule_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'cl'
select molecule_id from bond where bond_id = 'TR001_1_7'
sql placeholder
select bond.bond_type from bond inner join connected on bond.bond_id = connected.bond_id where connected.atom_id = 'TR000_1' and connected.atom_id = 'TR000_2'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id2 where atom.atom_id = 'TR000_2' and connected.atom_id2 = 'TR000_4'
select element from atom where atom_id = 'TR000_1'
select label from molecule where molecule_id = 'TR000'
select cast ( sum ( case when bond.bond_type = '-' then 1 else 0 end ) as real ) * 100 / count ( bond.bond_type ) from bond inner join connected on bond.bond_id = connected.bond_id inner join atom on connected.atom_id = atom.atom_id
select count ( molecule.molecule_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' and atom.element = 'n'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join bond on bond.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where atom.element = 's' and bond.bond_type = '= '
select label from molecule where label = '-' group by molecule_id having count ( molecule_id ) > 5
select atom.element from atom inner join bond on atom.molecule_id = bond.molecule_id inner join connected on bond.bond_id = connected.bond_id inner join molecule on molecule.molecule_id = bond.molecule_id where bond.bond_type = '= ' and molecule.molecule_id = 'TR024'
select atom.molecule_id from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.label = '+' group by atom.molecule_id order by count ( atom.atom_id ) desc limit 1
sql placeholder
select count ( molecule_id ) from molecule where label = '+'
select count ( bond.molecule_id ) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id between 'TR004' and 'TR010' and bond.bond_type = '-'
select count ( atom.atom_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on connected.atom_id = atom.atom_id where molecule.molecule_id = 'TR008' and atom.element = 'c'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '-' and atom.atom_id = 'TR004_7'
select count ( atom.molecule_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.molecule_id = atom.molecule_id where bond.bond_type = '= 'and atom.element = 'o'
select count ( molecule.molecule_id ) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '#' and molecule.label = '-'
select atom.element , bond.bond_type from atom inner join connected on atom.molecule_id = connected.atom_id inner join bond on bond.bond_id = connected.atom_id inner join molecule on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR016'
select connected.atom_id from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where atom.molecule_id = 'TR012' and atom.element = 'c' and bond.bond_type = '= '
select atom.atom_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' and atom.element = 'o'
select name from cards where cardkingdomfoilid is not null
select availability from cards where bordercolor is not null and cardkingdomfoilid is not null and cardkingdomid is not null
select name from cards order by faceconvertedmanacost desc limit 1
select name from cards where frameversion = 2015 and edhrecrank < 100
select cards.name from cards inner join legalities on cards.uuid = legalities.uuid where legalities.format = 'gladiator' and cards.rarity = 'mythic' and legalities.status = 'Banned'
select distinct legalities.status from cards inner join legalities on cards.uuid = legalities.uuid where cards.types = 'Artifact' and legalities.format = 'vintage' and cards.side is null
select cards.id , cards.artist from cards inner join legalities on cards.uuid = legalities.uuid where legalities.status = 'Legal' and legalities.format = 'commander' and cards.power is null or cards.power = '*'
select cards.name , rulings.text , cards.hascontentwarning from cards inner join rulings on cards.id = rulings.uuid where cards.artist = 'Stephen Daniel'
select rulings.text from cards inner join rulings on cards.uuid = rulings.uuid where cards.name = 'Sublime Epiphany' and cards.number = '74s'
select cards.name , cards.artist , cards.ispromo from cards inner join rulings on cards.uuid = rulings.uuid where cards.ispromo = 1 group by cards.name , cards.artist order by count ( rulings.uuid ) desc limit 1
select set_translations.translation from cards inner join set_translations on cards.id = set_translations.id inner join foreign_data on cards.uuid = foreign_data.uuid where cards.name = 'annul' and cards.number = 29
select cards.name from cards inner join set_translations on cards.uuid = set_translations.id where set_translations.language = 'Japanese'
select cast ( sum ( iif ( set_translations.language = 'Chinese Simplified' , 1 , 0 ) ) as real ) * 100 / count ( cards.id ) from cards inner join set_translations on cards.id = set_translations.id
select sets.name , sets.totalsetsize from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Italian'
select count ( types ) from cards where artist = 'Aaron Boyd'
select keywords from cards where name = 'Angel of Mercy'
select count ( id ) from cards where power = '*'
select promotypes from cards where name = 'Duress'
select bordercolor from cards where name = 'Ancestor''s Chosen'
select originaltype from cards where name = 'Ancestor''s Chosen'
select set_translations.language from cards inner join set_translations on cards.setcode = set_translations.setcode where cards.name = 'Angel of Mercy'
select count ( cards.id ) from cards inner join legalities on cards.uuid = legalities.uuid where legalities.status = 'Restricted' and cards.istextless = 0
select rulings.text from cards inner join rulings on cards.uuid = rulings.uuid where cards.name = 'Condemn'
select count ( cards.id ) from cards inner join legalities on cards.uuid = legalities.id where cards.isstarter = 1 and legalities.status = 'restricted'
select legalities.status from cards inner join legalities on cards.uuid = legalities.uuid where cards.name = 'Cloudchaser Eagle'
select type from cards where name = 'Benalish Knight'
select legalities.format from cards inner join legalities on cards.uuid = legalities.uuid where cards.name = 'Benalish Knight'
select cards.artist from cards inner join foreign_data on cards.uuid = foreign_data.uuid where foreign_data.language = 'Phyrexian'
select cast ( sum ( case when bordercolor = 'borderless' then 1 else 0 end ) as real ) * 100 / count ( id ) from cards
select count ( cards.id ) from cards inner join set_translations on cards.id = set_translations.id where set_translations.language = 'German' and cards.isreprint = 1
select count ( cards.uuid ) from cards inner join set_translations on cards.uuid = set_translations.id where set_translations.language = 'Russian' and cards.bordercolor = 'borderless'
select cast ( sum ( case when foreign_data.language = 'French' then 1 else 0 end ) as real ) * 100 / count ( cards.id ) from cards inner join foreign_data on cards.uuid = foreign_data.uuid inner join set_translations on cards.uuid = set_translations.id where cards.isstoryspotlight = 1
select count ( id ) from cards where toughness = 99
select name from cards where artist = 'Aaron Boyd'
select count ( bordercolor ) from cards where bordercolor = 'black' and availability = 'mtgo'
select id from cards where convertedmanacost = 0
select layout from cards where keywords = 'flying'
select count ( * ) from cards where originaltype = 'Summon - Angel' and subtypes != 'Angel'
select id from cards where cardkingdomfoilid is not null and power = ( select power from cards where cardkingdomid = 1 )
select id from cards where dueldeck = 'a'
select edhrecrank from cards where frameversion = 2015
select cards.artist from cards inner join set_translations on cards.id = set_translations.id where set_translations.language = 'Chinese Simplified'
select cards.name from cards inner join set_translations on cards.id = set_translations.id where cards.availability = 'paper' and set_translations.language = 'Japanese'
select count ( cards.id ) from cards inner join legalities on cards.uuid = legalities.uuid where legalities.status = 'Banned' and cards.bordercolor = 'white'
select cards.uuid , foreign_data.language from cards inner join legalities on cards.uuid = legalities.uuid inner join foreign_data on cards.uuid = foreign_data.uuid where legalities.format = 'legacy'
select rulings.text from rulings inner join cards on rulings.uuid = cards.uuid where cards.name = 'Beacon of Immortality'
select count ( cards.id ) from cards inner join legalities on cards.uuid = legalities.uuid where cards.frameversion = 'future' and legalities.status = 'legal'
select cards.id , cards.colors from cards inner join sets on cards.setcode = sets.code where sets.code = 'OGW'
select cards.name , set_translations.translation from cards inner join set_translations on cards.setcode = set_translations.setcode where cards.convertedmanacost = 5 and set_translations.setcode = '10E'
select cards.name , rulings.date from rulings inner join cards on rulings.uuid = cards.uuid where cards.originaltype = 'Creature - Elf'
select cards.colors , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid where cards.id >= 1 and cards.id < 20
select cards.name , set_translations.translation from cards inner join set_translations on cards.id = set_translations.id inner join foreign_data on set_translations.language = foreign_data.language where cards.originaltype = 'Artifact' and cards.colors = 'B' and foreign_data.language = 'English'
select cards.name from cards inner join rulings on cards.uuid = rulings.uuid where cards.rarity = 'uncommon' order by rulings.date asc
select count ( * ) from cards where artist = 'John Avon' and power = 0
select count ( id ) from cards where bordercolor = 'white' and cardkingdomid is not null
select count ( hand ) from cards where artist = 'UDON' and availability = 'mtgo' and hand = -1
select count ( * ) from cards where frameversion = 1993 and availability = 'paper' and hascontentwarning = 1
select manacost from cards where layout = 'normal' and frameversion = 2003 and bordercolor = 'black' and availability = 'paper' or availability = 'mtgo'
select sum ( manacost ) from cards where artist = 'Rob Alexander'
select subtypes , supertypes from cards where availability = 'arena'
select distinct cards.setcode from cards inner join set_translations on cards.setcode = set_translations.setcode where set_translations.language = 'Spanish'
select cast ( sum ( case when hand = +3 then 1 else 0 end ) as real ) * 100 / count ( hand ) from cards where frameeffects = 'legendary'
select cast ( sum ( case when istextless = 1 then 1 else 0 end ) as real ) * 100 / count ( id ) from cards where isstoryspotlight = 1
select cast ( count ( case when set_translations.language = 'Spanish' then 1 else null end ) as real ) * 100 / count ( cards.name ) , cards.name from cards inner join set_translations on cards.id = set_translations.id
select distinct set_translations.language from cards inner join set_translations on cards.setcode = set_translations.setcode inner join sets on set_translations.setcode = sets.code where sets.basesetsize = 309
select count ( sets.code ) from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Portuguese (Brasil)' and sets.block = 'Commander'
select cards.id from cards inner join legalities on cards.uuid = legalities.uuid where legalities.status = 'legal' and cards.types = 'Creature'
select cards.type from cards inner join set_translations on cards.id = set_translations.id where set_translations.language = 'German' and cards.subtypes is not null and cards.supertypes is not null
select count ( id ) from cards where power is null
select count ( cards.uuid ) from cards inner join legalities on cards.uuid = legalities.uuid inner join rulings on legalities.id = rulings.uuid where legalities.format = 'Pre-modern' and rulings.text = 'This is a triggered mana ability' and cards.side is null
select id from cards where artist = 'Erica Yang' and availability = 'paper'
select artist from cards where text = 'Das perfekte Gegenmittel zu einer dichten Formation'
select foreign_data.name from cards inner join foreign_data on cards.id = foreign_data.id inner join set_translations on foreign_data.id = set_translations.id where cards.artist = 'Matthew D. Wilson' and cards.layout = 'Normal' and cards.bordercolor = 'black' and foreign_data.language = 'French'
select count ( cards.uuid ) from cards inner join rulings on cards.uuid = rulings.uuid where rulings.date = '2009-01-10' and cards.rarity = 'rare'
select set_translations.language from sets inner join set_translations on sets.code = set_translations.setcode where sets.block = 'Ravnica' and sets.basesetsize = 180
select cast ( sum ( case when cards.hascontentwarning = 0 then 1 else 0 end ) as real ) * 100 / count ( cards.id ) from legalities inner join cards on legalities.uuid = cards.uuid where legalities.format = 'commander' and legalities.status = 'legal'
select cast ( sum ( case when cards.power is null or cards.power = '*' then 1 else 0 end ) as real ) * 100 / count ( cards.power ) from cards inner join foreign_data on cards.uuid = foreign_data.uuid inner join set_translations on foreign_data.id = set_translations.id where foreign_data.language = 'French'
select cast ( sum ( case when sets.type = 'expansion' then 1 else 0 end ) as real ) * 100 / count ( sets.code ) from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Japanese'
select printings from cards where artist = 'Daren Bader'
select count ( bordercolor ) from cards where edhrecrank > 12000 and bordercolor = 'borderless'
select count ( id ) from cards where isoversized = 1 and isreprint = 1 and ispromo = 1
select name from cards where power is null or power like '%' and promotypes = 'arenaleague' order by power asc limit 3
select foreign_data.language from cards inner join foreign_data on cards.uuid = foreign_data.uuid where cards.multiverseid = 149934
select cardkingdomfoilid , id from cards where cardkingdomfoilid is not null order by power desc limit 3
select cast ( sum ( case when layout = 'normal' then 1 else 0 end ) as real ) * 100 / count ( istextless ) from cards where istextless = 1
select id from cards where subtypes = 'Angel' and subtypes = 'Wizard' and side is null
select name from sets where mtgocode = '' or mtgocode = '' order by name asc limit 3
select set_translations.language from sets inner join set_translations on sets.code = set_translations.setcode where sets.mcmname = 'Archenemy' and set_translations.setcode = 'ARC'
select sets.name , set_translations.translation from sets inner join set_translations on sets.code = set_translations.setcode where sets.id = 5
select foreign_data.language , sets.type from sets inner join set_translations on sets.code = set_translations.setcode inner join foreign_data on foreign_data.id = set_translations.id where sets.id = 206
select sets.id , cards.name from sets inner join set_translations on sets.code = set_translations.setcode inner join cards on sets.id = cards.id inner join foreign_data on set_translations.id = foreign_data.id where sets.block = 'Shadowmoor' and foreign_data.language = 'Italian' order by cards.name asc limit 2
sql placeholder
select sets.name from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Russian' order by sets.basesetsize desc limit 1
select cast ( sum ( case when sets.isonlineonly = 1 then 1 else 0 end ) as real ) * 100 / count ( sets.id ) from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Chinese Simplified'
select count ( sets.code ) from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Japanese' or sets.mtgocode is null or sets.mtgocode = ''
select count ( id ) from cards where bordercolor = 'black'
select count ( id ) from cards where frameeffects = 'extendedart'
select name from cards where isfullart = 1 and bordercolor = 'black'
select set_translations.language from set_translations inner join sets on set_translations.setcode = sets.code where sets.id = 174
select name from sets where code = 'ALL'
select language from foreign_data where name = 'A Pedra Fellwar'
select cards.setcode from cards inner join sets on cards.setcode = sets.code where sets.releasedate = '07/13/2007'
select basesetsize , code from sets where block in ( 'Masques' , 'Mirage' )
select code from sets where type = 'expansion'
select foreign_data.name , foreign_data.type from cards inner join foreign_data on cards.uuid = foreign_data.uuid where cards.watermark = 'boros'
select foreign_data.language , foreign_data.flavortext , cards.type from cards inner join foreign_data on cards.id = foreign_data.id where cards.watermark = 'colorpie'
select cast ( sum ( case when cards.convertedmanacost = 10 then 1 else 0 end ) as real ) * 100 / count ( cards.convertedmanacost ) from cards inner join sets on cards.setcode = sets.code where sets.name = 'Abyssal Horror'
select code from sets where type = 'expansion' and type = 'commander'
select foreign_data.name , cards.type from cards inner join foreign_data on cards.uuid = foreign_data.uuid where cards.watermark = 'abzan'
select set_translations.language , foreign_data.type from cards inner join set_translations on cards.id = set_translations.id inner join foreign_data on foreign_data.uuid = cards.uuid where cards.watermark = 'azorius'
select count ( power ) from cards where artist = 'Aaron Miller' and cardkingdomfoilid = cardkingdomid and cardkingdomid is not null
select count ( availability ) from cards where availability like '%paper%' and hand = '+%'
select name from cards where istextless = 0
select convertedmanacost from cards where name = 'Ancestors Chosen'
select count ( id ) from cards where bordercolor = 'white' and power = '*'
select name from cards where ispromo = 1 and side is not null
select subtypes , supertypes from cards where name = 'Molimo , Maro-Sorcerer'
select purchaseurls from cards where promotypes = 'bundle'
select count ( artist ) from cards where bordercolor = 'black' and availability like '%arena%' and printings in ('mtgo' , 'arena' )
select case when ( select convertedmanacost from cards where name = 'Serra Angel' ) > ( select convertedmanacost from cards where name = 'Shrine Keeper' ) then 'Serra Angel' else 'Shrine Keeper' end
select artist from cards where flavorname = 'Battra , Dark Destroyer'
select name from cards where convertedmanacost = 4 and frameversion = '2003' order by convertedmanacost desc limit 3
select sets.name from cards inner join sets on cards.id = sets.id inner join set_translations on sets.code = set_translations.setcode where cards.name = 'Ancestor''s Chosen' and set_translations.language = 'Italian'
select count ( set_translations.translation ) from sets inner join set_translations on sets.code = set_translations.setcode where sets.name = 'Angel of Mercy'
select cards.name from cards inner join set_translations on cards.setcode = set_translations.setcode where set_translations.translation = 'Hauptset Zehnte Edition'
select distinct set_translations.language from cards inner join set_translations on cards.setcode = set_translations.setcode where cards.name = 'Ancestor''s Chosen' and set_translations.language = 'Korean'
select count ( cards.id ) from cards inner join set_translations on cards.id = set_translations.setcode where set_translations.translation = 'Hauptset Zehnte Edition' and cards.artist = 'Adam Rex'
select sets.basesetsize from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Hauptset Zehnte Edition'
select set_translations.translation from cards inner join set_translations on cards.setcode = set_translations.setcode inner join sets on sets.code = set_translations.setcode where sets.name = 'Eighth Edition' and set_translations.language = 'Simplified Chinese'
select case when sets.mtgocode is not null then 'Yes' else 'No' end from sets inner join cards on sets.code = cards.setcode where cards.name = 'Angel of Mercy'
select sets.releasedate from cards inner join sets on cards.setcode = sets.code where cards.name like 'Ancestor%s Chosen'
select distinct sets.type from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Hauptset Zehnte Edition'
select count ( sets.id ) from sets inner join set_translations on sets.code = set_translations.setcode where sets.block = 'Ice Age' and set_translations.language = 'Italian'
select sets.isforeignonly from cards inner join sets on cards.id = sets.id where cards.name = 'Adarkar Valkyrie'
select count ( sets.id ) from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Italian' and sets.basesetsize < 10
select count ( cards.id ) from cards inner join sets on cards.id = sets.id where sets.name = 'Coldsnap' and cards.bordercolor = 'black'
select cards.name from cards inner join sets on cards.id = sets.id where sets.name = 'Coldsnap' order by cards.convertedmanacost desc limit 1
select cards.artist from cards inner join sets on cards.setcode = sets.code where sets.name = 'Coldsnap' and cards.artist in ( 'Jeremy Jarvis' , 'Aaron Miller' , 'Chippy' )
select cards.number from cards inner join sets on cards.id = sets.code where sets.name = 'Coldsnap'
select count ( cards.id ) from cards inner join sets on cards.id = sets.id inner join set_translations on sets.code = set_translations.setcode where sets.name = 'Coldsnap' and set_translations.language = 'English' and cards.power = '*' or cards.power is null
select cards.flavortext from cards inner join foreign_data on cards.flavortext = foreign_data.flavortext where cards.name = 'Ancestor''s Chosen' and foreign_data.language = 'Italian'
select distinct foreign_data.language from cards inner join foreign_data on cards.id = foreign_data.id where cards.name = 'Ancestor''s Chosen' and cards.flavortext is not null
select set_translations.translation from set_translations inner join cards on set_translations.id = cards.id inner join foreign_data on cards.id = foreign_data.uuid where cards.name = 'Ancestor''s Chosen' and set_translations.language = 'German'
select rulings.text from sets inner join set_translations on sets.code = set_translations.setcode inner join rulings on sets.id = rulings.id where sets.name = 'Coldsnap' and set_translations.language = 'Italian'
select cards.name from cards inner join set_translations on cards.id = set_translations.id inner join sets on set_translations.setcode = sets.code where sets.name = 'Coldsnap' and set_translations.language = 'Italian' order by cards.convertedmanacost desc limit 1
select rulings.date from cards inner join rulings on cards.uuid = rulings.uuid where cards.name = 'Reminisce'
select cast ( sum ( case when convertedManaCost = 7 then 1 else 0 end ) as real ) * 100 / count ( cards.id ) from cards inner join sets on cards.id = sets.id where sets.name = 'Coldsnap'
select cast ( sum ( iif ( cards.artist = 'Cards.artist' , 1 , 0 ) ) as real ) * 100 / count ( cards.id ) from cards inner join sets on cards.id = sets.id where sets.name = 'Coldsnap'
select code from sets where releasedate = '2017-07-14'
select keyrunecode from sets where code = 'PKHC'
select sets.mcmid from sets inner join cards on sets.id = cards.id where sets.code = 'SS2'
select sets.mcmname from cards inner join sets on cards.mcmid = sets.mcmid where sets.releasedate = '2017-06-09'
select type from sets where name like 'From the Vault: Lore'
select parentcode from sets where name = 'Commander 2014 Oversized'
select cards.name , rulings.text , cards.hascontentwarning from rulings inner join cards on rulings.uuid = cards.uuid where cards.artist = 'Jim Pavelec'
select sets.releasedate from sets inner join cards on sets.code = cards.setcode where cards.name = 'Evacuation'
select sum ( cards.number ) from cards inner join sets on cards.id = sets.id inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Rinascita di Alara'
select distinct sets.type from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Huitième édition'
select sets.name from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Tendo Ice Bridge' and set_translations.language = 'French'
select count ( set_translations.translation ) from sets inner join set_translations on sets.code = set_translations.setcode where sets.name = 'Salvat 2011' and set_translations.translation is not null
select sets.name from cards inner join set_translations on cards.setcode = set_translations.setcode inner join sets on sets.code = set_translations.setcode where cards.name = 'Fellwar Stone' and set_translations.language = 'Japanese'
select cards.name from cards inner join sets on cards.setcode = sets.code where sets.name like 'Journey into Nyx Hero%s Path' order by cards.convertedmanacost desc limit 1
select sets.releasedate from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Ola de fro'
select sets.type from cards inner join sets on cards.id = sets.code where cards.name = 'Samite Pilgrim'
select count ( cards.id ) from cards inner join sets on cards.id = sets.id where sets.name = 'World Championship Decks 2004' and cards.convertedmanacost = 3
select set_translations.translation from sets inner join set_translations on sets.code = set_translations.setcode where sets.name = 'Mirrodin' and set_translations.language = 'Chinese Simplified'
select cast ( sum ( case when sets.isnonfoilonly = 1 then 1 else 0 end ) as real ) * 100 / count ( sets.id ) from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Japanese'
sql placeholder
select printings from cards where artist = 'Aleksi Briclot' and istextless = 1
select id from sets order by basesetsize desc limit 1
select artist from cards where side is null order by convertedmanacost desc limit 1
select frameeffects from cards where cardkingdomfoilid is not null group by frameeffects order by count ( frameeffects ) desc limit 1
select count ( id ) from cards where dueldeck = 'a' and hasfoil = 0 and power = '*'
select id from sets where type = 'commander' order by totalsetsize desc limit 1
select cards.name from cards inner join legalities on cards.uuid = legalities.uuid where legalities.format = 'duel' order by cards.manacost desc limit 10
select min ( cards.originalreleasedate ) , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid where legalities.status = 'legal' and cards.rarity = 'mythic'
sql placeholder
select count ( cards.id ) from cards inner join legalities on cards.id = legalities.uuid where cards.rarity = 'rare' and cards.types = 'Enchantment' and cards.name = 'Abundance' and legalities.status = 'Legal'
select legalities.format , cards.name from legalities inner join cards on legalities.uuid = cards.uuid where legalities.status = 'banned' group by legalities.format , cards.name order by count ( legalities.status ) desc limit 1
select set_translations.language from sets inner join set_translations on sets.code = set_translations.setcode where sets.name = 'Battlebond'
select cards.artist , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid group by cards.artist , legalities.format order by count ( cards.artist ) asc limit 1
select distinct legalities.status from cards inner join legalities on cards.id = legalities.uuid where legalities.format = 'legacy' and cards.artist = 'D. Alexander Gregory' and cards.frameversion = '1997' and hascontentwarning = 1
select cards.name , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid where cards.edhrecrank = 1 and legalities.status = 'banned'
select cast ( count ( sets.id ) as real ) / count ( distinct sets.releasedate ) , foreign_data.language from sets inner join set_translations on sets.code = set_translations.setcode inner join foreign_data on set_translations.id = foreign_data.uuid where sets.releasedate between '2012-01-01' and '2015-12-31' group by sets.id , foreign_data.language
select artist from cards where bordercolor = 'black' and availability = 'arena'
select cards.uuid from legalities inner join cards on legalities.uuid = cards.uuid where legalities.format = 'oldschool' and legalities.status = 'banned' or legalities.status = 'restricted'
select count ( name ) from cards where artist = 'Matthew D. Wilson' and availability = 'paper'
select rulings.text from cards inner join rulings on cards.uuid = rulings.uuid where cards.artist = 'Kev Walker' order by rulings.date desc
select cards.name , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid inner join sets on sets.id = legalities.uuid where sets.name = 'Hour of Devastation' and legalities.status = 'legal'
select sets.name from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language not like '%Japanese%' and set_translations.translation = 'Korean'
select cards.frameversion , cards.name , legalities.status from cards inner join legalities on cards.uuid = legalities.uuid where cards.artist = 'Allen Williams' and legalities.status = 'banned'
select displayname from users where displayname in ( 'Harlan' , 'Jarrod Dixon' ) order by reputation desc limit 1
select displayname from users where strftime ( '%Y' , creationdate ) = '2014'
select count ( id ) from users where lastaccessdate > '2014-09-01 00:00:00'
select displayname from users order by views desc limit 1
select count ( id ) from users where upvotes > 100 and downvotes > 1
select count ( accountid ) from users where strftime ( '%Y' , creationdate ) > '2013' and views > 10
select count ( posts.id ) from users inner join posts on users.id = posts.owneruserid inner join posthistory on posts.id = posthistory.postid where users.displayname = 'csgillespie'
select posts.title from users inner join posthistory on users.id = posthistory.userid inner join posts on posthistory.postid = posts.id where users.displayname = 'csgillespie'
select ownerdisplayname from posts where title = 'Eliciting priors from experts'
select posts.title from users inner join posthistory on users.id = posthistory.userid inner join posts on posthistory.postid = posts.id where users.displayname = 'csgillespie' order by posts.viewcount desc limit 1
select users.displayname from posts inner join users on posts.owneruserid = users.id order by posts.favoritecount desc limit 1
sql placeholder
select posts.answercount from posts inner join posthistory on posts.owneruserid = posthistory.userid where posts.ownerdisplayname = 'csgillespie' order by posts.answercount desc limit 1
select users.displayname from posts inner join comments on posts.id = comments.postid inner join posthistory on comments.userid = posthistory.userid inner join users on posthistory.userdisplayname = users.id where posts.title = 'Examples for teaching: Correlation does not mean causation'
select count ( posts.parentid ) from users inner join posthistory on users.id = posthistory.userid inner join posts on posthistory.postid = posts.id where users.displayname = 'csgillespie' and posts.parentid is null
select users.displayname from posts inner join users on posts.owneruserid = users.id where posts.closeddate is not null
select count ( posts.owneruserid ) from posts inner join users on posts.owneruserid = users.id where posts.score > 19 and users.age > 65
select users.location from posts inner join users on posts.owneruserid = users.id where posts.title = 'Eliciting priors FROM experts'
select posts.body from posts inner join tags on posts.id = tags.excerptpostid where tags.tagname = 'bayesian'
select posts.body from posts inner join tags on posts.id = tags.excerptpostid order by tags.count desc limit 1
select count ( badges.name ) from users inner join badges on users.id = badges.userid where users.displayname = 'csgillespie'
select badges.name from users inner join badges on users.id = badges.userid where users.displayname = 'csgillespie'
select count ( badges.name ) from users inner join badges on users.id = badges.userid where users.displayname = 'csgillespie' and strftime ( '%Y' , badges.date ) = '2011'
select users.displayname from badges inner join users on badges.userid = users.id group by users.displayname order by count ( badges.id ) desc limit 1
select avg ( posts.score ) from posts inner join comments on posts.id = comments.postid inner join users on posts.owneruserid = users.id where users.displayname = 'csgillespie'
select cast ( count ( badges.id ) as real ) / count ( distinct posts.ownerdisplayname ) from users inner join badges on users.id = badges.userid inner join posts on users.id = posts.owneruserid where users.views > 200
select cast ( sum ( case when users.age > 65 then 1 else 0 end ) as real ) * 100 / count ( posts.owneruserid ) from posts inner join users on posts.owneruserid = users.id where posts.score > 20
select count ( votes.id ) from users inner join votes on users.id = votes.userid where users.creationdate = '2010-07-19' and users.id = 58
select creationdate from votes group by creationdate order by count ( id ) desc limit 1
select count ( id ) from badges where name = 'Revival'
select posts.title from comments inner join posts on comments.postid = posts.id order by comments.score desc limit 1
select count ( commentcount ) from posts where viewcount = 1910
select posts.favoritecount from comments inner join posthistory on comments.postid = posthistory.postid inner join posts on posthistory.postid = posts.id where comments.creationdate = '2014-04-23 20:29:39.0' and comments.userid = '3025'
select comments.text from comments inner join posts on comments.postid = posts.id where posts.parentid = 107829 and posts.commentcount = 1
select posts.closeddate from comments inner join posthistory on comments.postid = posthistory.postid inner join posts on posthistory.postid = posts.id where comments.userid = 23853 and comments.creationdate = '2013-07-12 09:08:18.0' and posts.closeddate is null
select users.reputation from posts inner join users on posts.owneruserid = users.id where posts.id = 65041
select count ( posts.id ) from posts inner join posthistory on posts.id = posthistory.postid inner join users on posthistory.userid = users.id where users.displayname = 'Tiago Pasqualini'
select users.displayname from votes inner join users on votes.userid = users.id where votes.id = 6347
select sum ( votes.votetypeid ) from posts inner join votes on posts.id = votes.postid where posts.title like '%data visualization%'
select badges.name from users inner join badges on users.id = badges.userid where users.displayname = 'DatEpicCoderGuyWhoPrograms'
select cast ( count ( posts.id ) as real ) / count ( votes.id ) from posts inner join votes on posts.id = votes.postid where posts.owneruserid = '24'
select viewcount from posts where title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
select text from comments where score = 17
select displayname from users where websiteurl = 'http://stackoverflow.com'
select badges.name from users inner join badges on users.id = badges.userid where users.displayname = 'SilentGhost'
select users.displayname from comments inner join posthistory on comments.userid = posthistory.userid inner join users on posthistory.postid = users.id where comments.text = 'thank you user93!'
select posthistory.text from comments inner join posthistory on comments.userid = posthistory.userid inner join users on posthistory.userid = users.id where users.displayname = 'A Lion'
select users.displayname , users.reputation from posts inner join posthistory on posts.id = posthistory.postid inner join users on posthistory.userid = users.id where posts.title = 'Understanding what Dassault iSight is doing?'
select comments.text from posts inner join posthistory on posts.id = posthistory.postid inner join comments on posthistory.comment = comments.postid where posts.title = 'How does gentle boosting differ from AdaBoost?'
select users.displayname from users inner join badges on users.id = badges.userid where badges.name = 'Necromancer' limit 10
select owneruserid from posts where title = 'Open source tools for visualizing multi-dimensional data'
select posts.title from users inner join posthistory on users.id = posthistory.userid inner join posts on posthistory.postid = posts.id where users.displayname = 'Vebjorn Ljosa'
select sum ( posts.score ) , users.websiteurl from posts inner join users on posts.lasteditoruserid = users.id where users.displayname = 'Yevgeny'
select comments.text from comments inner join posts on comments.postid = posts.id where posts.title = 'Why square the difference instead of taking the absolute value in standard deviation?'
select sum ( votes.bountyamount ) from posts inner join votes on posts.id = votes.postid where posts.title like '%data%'
select users.displayname from posts inner join votes on posts.id = votes.postid inner join users on posts.owneruserid = users.id where posts.title = 'Variance' and votes.bountyamount = 50
select avg ( posts.viewcount ) , posts.title , comments.text from posts inner join comments on posts.id = comments.postid where posts.tags = 'humor'
select count ( id ) from comments where userid = 13
select id from users order by reputation desc limit 1
select id from users order by views asc limit 1
select count ( userid ) from badges where strftime ( '%Y' , date ) = '2011' and name = 'Supporter'
select count ( userid ) from badges group by userid having count ( name ) > 5
select count ( users.id ) from users inner join badges on users.id = badges.userid where badges.name in ( 'Teachers' , 'Supporter' ) and users.location = 'New York City'
sql placeholder
select users.id from users inner join posthistory on users.id = posthistory.userid where users.views >= 1000 group by users.id having posthistory.userid = 1
select badges.name from comments inner join badges on comments.userid = badges.userid group by comments.userid order by count ( comments.userid ) desc limit 1
select count ( users.id ) from users inner join badges on users.id = badges.userid where badges.name = 'Teacher' and users.location = 'India'
select cast ( sum ( case when strftime ( '%Y' , date ) = 2010 then 1 else 0 end ) as real ) * 100 / count ( name ) - cast ( sum ( case when strftime ( '%Y' , date ) = 2011 then 1 else 0 end ) as real ) * 100 / count ( name ) from badges where name = 'Students'
sql placeholder
select posts.id , posts.viewcount from posts inner join postlinks on posts.id = postlinks.postid where posts.id = 61217 group by posts.id , posts.viewcount
select posts.score , postlinks.linktypeid from posts inner join postlinks on posts.id = postlinks.postid where posts.id = 395
select posts.id , posts.owneruserid from comments inner join posts on comments.postid = posts.id where comments.score > 60
select sum ( posts.favoritecount ) from votes inner join posts on votes.postid = posts.id where strftime ( '%Y' , votes.creationdate ) = '2011' and votes.userid = 686
select avg ( users.upvotes ) , avg ( users.age ) from votes inner join users on votes.userid = users.id where votes.postid > 10
select count ( userid ) from badges where name = 'Announcer'
select badges.name from users inner join badges on users.id = badges.userid where badges.date = '2010-07-19 19:39:08'
select count ( score ) from comments where score > 60
select text from comments where creationdate = '2010-07-19 19:25:47'
select count ( posts.id ) from comments inner join posts on comments.postid = posts.id where comments.score = 10
select badges.name from users inner join badges on users.id = badges.userid where users.reputation = ( select max ( reputation ) from users )
select users.reputation from users inner join badges on users.id = badges.userid where badges.date = '2010-07-19 19:39:08.0'
select badges.name from users inner join badges on users.id = badges.userid where users.displayname = 'Pierre'
select badges.date from users inner join badges on users.id = badges.userid where users.location = 'Rochester , NY'
select cast ( count ( case when badges.name = 'Teacher' then 1 else null end ) as real ) * 100 / count ( users.id ) from badges inner join users on badges.userid = users.id
select cast ( sum ( case when users.age between 13 and 18 then 1 else 0 end ) as real ) * 100 / count ( users.id ) from users inner join badges on users.id = badges.userid where badges.name = 'Organizer'
select comments.score from posts inner join comments on posts.id = comments.postid where comments.creationdate = '2010-07-19 19:19:56.0'
select comments.text from comments inner join posthistory on comments.postid = posthistory.postid where comments.creationdate = '2010-07-19 19:37:33.0'
select users.age from users inner join badges on users.id = badges.userid where users.location = 'Vienna , Austria'
select count ( users.id ) from users inner join badges on users.id = badges.userid where badges.name = 'Supporter' and users.age >= 19 and users.age <= 65
select sum ( users.views ) from users inner join badges on users.id = badges.userid where badges.date = '2010-07-19 19:39:08.0'
select badges.name from users inner join badges on users.id = badges.userid where users.reputation = ( select min ( reputation ) from users )
select badges.name from users inner join badges on users.id = badges.userid where users.displayname = 'Sharpie'
select count ( users.id ) from users inner join badges on users.id = badges.userid where badges.name = 'Supporter' and users.age > 65
select displayname from users where id = 30
select count ( id ) from users where location = 'New York City'
select count ( userid ) from votes where strftime ( '%Y' , creationdate ) = '2010'
select count ( id ) from users where age > 19 and age <= 65
select displayname from users where views = ( select max ( views ) from users )
select cast ( sum ( case when strftime ( '%Y' , creationdate ) = '2010' then 1 else 0 end ) as real ) / sum ( case when strftime ( '%Y' , creationdate ) = '2011' then 1 else 0 end ) from votes
select tags.tagname from posts inner join users on posts.owneruserid = users.id inner join tags on posts.id = tags.excerptpostid where users.displayname = 'John Stauffer'
select count ( posts.id ) from users inner join posthistory on users.id = posthistory.userid inner join posts on posthistory.postid = posts.id where users.displayname = 'Daniel Vassallo'
select count ( votes.id ) from users inner join votes on users.id = votes.userid where users.displayname = 'Harlan'
select id from posts where ownerdisplayname = 'slashnick' order by answercount desc limit 1
select ownerdisplayname from posts where ownerdisplayname in ( 'Harvey Motulsky' , 'Noah Snyder' ) order by viewcount desc limit 1
select count ( posts.id ) from posts inner join votes on posts.id = votes.postid inner join posthistory on posts.id = posthistory.postid where posts.ownerdisplayname = 'Matt Parker' and votes.postid > 4
select count ( comments.score ) from users inner join posts on users.id = posts.owneruserid inner join posthistory on posts.id = posthistory.postid inner join comments on posthistory.comment = comments.postid where users.displayname = 'Neil McGuigan' and comments.score < 60
select tags.tagname from posts inner join tags on posts.id = tags.excerptpostid inner join posthistory on posts.id = posthistory.postid where posts.ownerdisplayname = 'Mark Meckes' and posthistory.userdisplayname != 'Mark Meckes'
select users.displayname from users inner join badges on users.id = badges.userid where badges.name = 'Organizer'
select cast ( sum ( case when tags.tagname = 'r' then 1 else 0 end ) as real ) * 100 / count ( tags.tagname ) from posts inner join tags on posts.id = tags.excerptpostid where posts.ownerdisplayname = 'Community'
select sum ( case when ownerdisplayname = 'Mornington' then viewcount else 0 end ) - sum ( case when ownerdisplayname = 'Amos' then viewcount else 0 end ) from posts
select count ( userid ) from badges where strftime ( '%Y' , date ) = '2014' and name = 'commentator'
sql placeholder
select displayname , age from users order by views desc limit 1
select lasteditdate , lasteditoruserid from posts where title = 'Detecting a given face in a database of facial images'
select count ( score ) from comments where userid = 13 and score < 60
select distinct posts.title , users.displayname from comments inner join posts on comments.postid = posts.id inner join users on posts.owneruserid = users.id where comments.score > 60
select badges.name from users inner join badges on users.id = badges.userid where users.location = 'North Pole' and strftime ( '%Y' , badges.date ) = '2011'
select users.displayname , users.websiteurl from posts inner join posthistory on posts.id = posthistory.postid inner join comments on posthistory.postid = comments.postid inner join users on posthistory.userid = users.id where posts.favoritecount > 150
sql placeholder
select users.lastaccessdate , users.location from users inner join badges on users.id = badges.userid where badges.name = 'Outliers'
select postlinks.relatedpostid from posts inner join postlinks on posts.id = postlinks.postid where posts.title = 'How to tell if something happened in a data set which monitors a value over time'
select posthistory.postid , badges.name from users inner join posthistory on users.id = posthistory.userid inner join badges on posthistory.userid = badges.userid where users.displayname = 'Samuel' and strftime ( '%Y' , posthistory.creationdate ) = '2013'
select ownerdisplayname from posts where viewcount = ( select max ( viewcount ) from posts )
select users.displayname , users.location from tags inner join posts on tags.excerptpostid = posts.id inner join users on posts.owneruserid = users.id where tags.tagname = 'hypothesis-testing'
select posts.title , postlinks.linktypeid from posts inner join postlinks on posts.id = postlinks.relatedpostid where posts.title = 'What are principal component scores?'
select posts.ownerdisplayname from posts inner join comments on posts.id = comments.postid where comments.score = ( select max ( score ) from comments )
select users.displayname , users.websiteurl from votes inner join users on votes.userid = users.id where votes.votetypeid = 8 order by votes.bountyamount desc limit 1
select title from posts where viewcount = ( select max ( viewcount ) from posts ) limit 5
select count ( tags.tagname ) from posts inner join tags on posts.id = tags.excerptpostid where tags.count between 5000 and 7000
select owneruserid from posts order by favoritecount desc limit 1
select age from users where reputation = ( select max ( reputation ) from users )
select count ( posts.id ) from posts inner join votes on posts.id = votes.postid where strftime ( '%Y' , votes.creationdate ) = '2011' and votes.bountyamount = 50
select id from users where age = ( select min ( age ) from users )
select score from posts where tags = ( select tagname from tags order by count desc limit 1 )
select cast ( count ( postlinks.postid ) as real ) / 12 from posts inner join postlinks on posts.id = postlinks.postid where strftime ( '%Y' , postlinks.creationdate ) = '2010' and posts.answercount <= 2
select votes.postid from votes inner join posts on votes.postid = posts.id where votes.userid = 1465 order by posts.favoritecount desc limit 1
select posts.title from posts inner join postlinks on posts.id = postlinks.postid order by posts.creaiondate asc limit 1
select users.displayname from users inner join badges on users.id = badges.userid group by users.displayname order by count ( badges.name ) desc limit 1
select votes.creationdate from users inner join posthistory on users.id = posthistory.userid inner join votes on posthistory.postid = votes.postid where users.displayname = 'chl' order by votes.creationdate asc limit 1
select posts.creaiondate from posts inner join posthistory on posts.id = posthistory.postid inner join users on posthistory.userid = users.id order by users.age asc limit 1
select users.displayname from badges inner join users on badges.userid = users.id where badges.name = 'Autobiographer' order by badges.date asc limit 1
select count ( users.id ) from posts inner join users on posts.owneruserid = users.id where users.location = 'United Kingdom' and posts.favoritecount >= 4
select avg ( votes.postid ) from votes inner join users on votes.userid = users.id where users.age = ( select max ( age ) from users )
select displayname from users where reputation = ( select max ( reputation ) from users )
select count ( id ) from users where reputation > 2000 and views > 1000
select displayname from users where age >= 19 and age <= 65
select count ( posthistory.postid ) from users inner join posthistory on users.id = posthistory.userid inner join comments on posthistory.postid = comments.postid where users.displayname = 'Jay Stevens' and strftime ( '%Y' , posthistory.creationdate ) = '2010'
select posts.id , posts.title from users inner join posthistory on users.id = posthistory.userid inner join posts on posthistory.postid = posts.id where users.displayname = 'Harvey Motulsky' order by posts.viewcount desc limit 1
select id , title from posts where score = ( select max ( score ) from comments )
sql placeholder
sql placeholder
select posts.id , posts.ownerdisplayname from posts inner join posthistory on posts.id = posthistory.postid where strftime ( '%Y' , posthistory.creationdate ) = '2010' order by posts.favoritecount desc limit 1
select cast ( sum ( case when users.reputation > 1000 then 1 else 0 end ) as real ) * 100 / count ( posts.owneruserid ) from posts inner join users on posts.owneruserid = users.id where strftime ( '%Y' , posts.creaiondate ) = '2011'
select cast ( sum ( case when age between 13 and 18 then 1 else 0 end ) as real ) * 100 / count ( id ) from users
select posts.viewcount , users.displayname from posthistory inner join users on posthistory.userid = users.id inner join posts on posthistory.postid = posts.id where posthistory.text = 'Computer Game Datasets'
select count ( id ) from posts where viewcount > ( select avg ( viewcount ) from posts )
select count ( comments.postid ) from posts inner join comments on posts.id = comments.postid where comments.score = ( select max ( score ) from comments )
select count ( id ) from posts where viewcount > 3500 and commentcount = 0
select users.displayname , users.location from posts inner join posthistory on posts.id = posthistory.postid inner join users on posthistory.userid = users.id where posts.id = 183 order by posts.lasteditdate desc limit 1
select badges.name from users inner join badges on users.id = badges.userid where users.displayname = 'Emmatt' order by badges.date desc limit 1
select count ( id ) from users where upvotes > 5000 and age > 19 and age <= 65
select cast ( substr ( badges.date , 1 , 4 ) as real ) - users.creationdate from users inner join badges on users.id = badges.userid where users.displayname = 'Zolomon'
select count ( posts.id ) from comments inner join posthistory on comments.userid = posthistory.userid inner join posts on posthistory.postid = posts.id inner join users on posts.owneruserid = users.id order by users.creationdate desc limit 1
sql placeholder
select count ( userid ) from badges where name = 'Citizen Patrol'
select count ( posts.id ) from posts inner join tags on posts.id = tags.id where tags.tagname = 'careers'
select reputation , views from users where displayname = 'Jarrod Dixon'
select count ( comments.text ) , posts.answercount from posts inner join comments on posts.id = comments.postid where posts.title = 'Clustering 1D data'
select creationdate from users where displayname = 'IrishStat'
select count ( postid ) from votes where bountyamount >= 30
select cast ( sum ( case when posts.score >= 50 then 1 else 0 end ) as real ) * 100 / count ( posts.id ) from users inner join posts on users.id = posts.owneruserid where users.reputation = ( select max ( reputation ) from users )
select count ( posts.id ) from posts inner join comments on posts.id = comments.postid where comments.score < 20
select count ( id ) from tags where id < 15 and count <= 20
select excerptpostid , wikipostid from tags where tagname = 'sample'
select users.reputation , users.upvotes from comments inner join users on comments.userid = users.id inner join votes on users.id = votes.userid where comments.text = 'fine , you win :)'
select comments.text from posts inner join comments on posts.id = comments.postid where posts.title = 'How can I adapt ANOVA for binary data?'
select comments.text from comments inner join posts on comments.postid = posts.id where posts.viewcount between 100 and 150 order by comments.score desc limit 1
select users.creationdate , users.age from comments inner join users on comments.userid = users.id where users.websiteurl like 'http://'
select count ( posts.viewcount ) from posts inner join comments on posts.id = comments.postid where comments.score = 0 and posts.viewcount < 5
select count ( score ) from posts where commentcount = 1 and score = 0
select count ( users.id ) from comments inner join users on comments.userid = users.id where comments.score = 0 and users.age = 40
select posts.id , comments.text from comments inner join posthistory on comments.postid = posthistory.postid inner join posts on posthistory.postid = posts.id where posts.title = 'Group differences on a five point Likert item'
select users.upvotes from comments inner join users on comments.userid = users.id where comments.text = 'R is also lazy evaluated.'
select posthistory.text from users inner join posthistory on users.id = posthistory.userid where users.displayname = 'Harvey Motulsky'
select distinct users.displayname from comments inner join users on comments.userid = users.id where comments.score between 1 and 5 and users.downvotes = 0
select cast ( sum ( case when users.upvotes = 0 then 1 else 0 end ) as real ) * 100 / count ( users.id ) from comments inner join users on comments.userid = users.id where comments.score between 5 and 10
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = '3-D Man'
select count ( superhero.id ) from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Super Strength'
select count ( superhero.id ) from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Super Strength' and superhero.height_cm > 200
select superhero.full_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id group by superhero.full_name having count ( superhero.full_name ) > 15
select count ( superhero.eye_colour_id ) from superhero inner join colour on superhero.eye_colour_id = colour.id where colour.colour = 'Blue'
select colour.colour from superhero inner join colour on superhero.skin_colour_id = colour.id where superhero.superhero_name = 'Apocalypse'
sql placeholder
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join colour on superhero.eye_colour_id = colour.id and superhero.hair_colour_id = colour.id inner join superpower on hero_power.power_id = superpower.id where colour.colour = 'Blue' and superhero.hair_colour_id = 'Blond' and superpower.power_name = 'Agility'
select count ( * ) from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics'
select superhero.full_name from publisher inner join superhero on publisher.id = superhero.publisher_id where publisher.publisher_name = 'Marvel Comics' order by superhero.height_cm desc limit 1
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.superhero_name = 'Sauron'
select count ( * ) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join colour on superhero.eye_colour_id = colour.id where publisher.publisher_name = 'Marvel Comics' and colour.colour = 'Blue'
select avg ( superhero.height_cm ) from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics'
select cast ( sum ( case when superpower.power_name = 'Super Strength' then 1 else 0 end ) as real ) * 100 / count ( * ) from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id inner join publisher on publisher.id = superhero.publisher_id where publisher.publisher_name = 'Marvel Comics'
select count ( * ) from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'DC Comics'
select publisher.publisher_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id inner join publisher on superhero.publisher_id = publisher.id where attribute.attribute_name = 'Speed' order by hero_attribute.attribute_value asc limit 1
select count ( * ) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join colour on superhero.eye_colour_id = colour.id where publisher.publisher_name = 'Marvel Comics' and colour.colour = 'Gold'
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.superhero_name = 'Blue Beetle II'
select count ( * ) from superhero inner join colour on superhero.hair_colour_id = colour.id where colour.colour = 'Blond'
select superhero.full_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Intelligence' order by hero_attribute.attribute_value asc limit 1
select race.race from superhero inner join race on superhero.race_id = race.id where superhero.superhero_name = 'Copycat'
select count ( superhero.id ) from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Durability' and hero_attribute.attribute_value < 50
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Death Touch'
select count ( superhero.id ) from superhero inner join gender on superhero.gender_id = gender.id inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Strength' and hero_attribute.attribute_value = 100 and gender.gender = 'Female'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id group by superhero.superhero_name order by count ( superpower.power_name ) desc limit 1
select count ( * ) from superhero inner join race on superhero.race_id = race.id where race.race = 'Vampire'
select cast ( sum ( case when alignment.alignment = 'Bad' then 1 else 0 end ) as real ) * 100 / count ( * ) , sum ( case when publisher.publisher_name = 'Marvel Comics' then 1 else 0 end ) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join alignment on alignment.id = superhero.alignment_id where publisher.publisher_name = 'Marvel Comics'
select iif ( sum ( iif ( publisher.publisher_name = 'Marvel Comics' , 1 , 0 ) ) - sum ( iif ( publisher.publisher_name = 'DC Comics' , 1 , 0 ) ) > 0 , 0 , 0 ) as diff from superhero inner join publisher on superhero.publisher_id = publisher.id
select publisher.id from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Star Trek'
select avg ( hero_attribute.attribute_value ) from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id
select count ( id ) from superhero where full_name is null
select colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.id = 75
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = 'Deathlok'
select avg ( weight_kg ) from superhero where gender_id = 2
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id inner join gender on superhero.gender_id = gender.id where gender.gender = 'Male' limit 5
select superhero.superhero_name from race inner join superhero on race.id = superhero.race_id where race.race = 'Alien'
select superhero_name from superhero where height_cm between 170 and 190 and eye_colour_id = 1
select superpower.power_name from hero_power inner join superpower on hero_power.power_id = superpower.id where hero_power.hero_id = 56
select superhero.full_name from superhero inner join race on superhero.race_id = race.id where race.race = 'Demi-God' limit 5
select count ( * ) from superhero inner join alignment on superhero.alignment_id = alignment.id where alignment.alignment = 'Bad'
select race.race from race inner join superhero on race.id = superhero.race_id where superhero.weight_kg = 169
select colour.colour from superhero inner join race on superhero.race_id = race.id inner join colour on superhero.hair_colour_id = colour.id where superhero.height_cm = 185 and race.race = 'Human'
select colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id order by superhero.weight_kg desc limit 1
select cast ( sum ( case when publisher.publisher_name = 'Marvel Comics' then 1 else 0 end ) as real ) * 100 / count ( * ) from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.height_cm between 150 and 180
select superhero.full_name from gender inner join superhero on gender.id = superhero.gender_id where gender.gender = 'Male' and superhero.weight_kg * 100 > ( select avg ( weight_kg ) * 79 from superhero )
select t.power_name from ( select superpower.power_name , count ( superpower.power_name ) as num from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id group by superpower.power_name ) as t order by t.num desc limit 1
select hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id where superhero.superhero_name = 'Abomination'
select superpower.power_name from hero_power inner join superpower on hero_power.power_id = superpower.id where hero_power.hero_id = 1
select count ( hero_power.hero_id ) from hero_power inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'stealth'
select superhero.full_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Strength' order by hero_attribute.attribute_value desc limit 1
select cast ( count ( id ) as real ) / count ( case when skin_colour_id = 1 then 1 else null end ) from superhero
select count ( * ) from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Dark Horse Comics'
select superhero.superhero_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id inner join publisher on publisher.id = superhero.publisher_id where publisher.publisher_name = 'Dark Horse Comics' and attribute.attribute_name = 'Durability' order by hero_attribute.attribute_value desc limit 1
select colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.full_name = 'Abraham Sapien'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Flight'
select superhero.eye_colour_id , superhero.hair_colour_id , superhero.skin_colour_id from superhero inner join gender on superhero.gender_id = gender.id inner join publisher on publisher.id = superhero.publisher_id where gender.gender = 'Female' and publisher.publisher_name = 'Dark Horse Comics'
select superhero.superhero_name , publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.eye_colour_id = 'Eye Colour_id' and superhero.hair_colour_id = superhero.skin_colour_id
select race.race from superhero inner join race on superhero.race_id = race.id where superhero.superhero_name = 'A-Bomb'
select cast ( sum ( case when colour.colour = 'Blue' then 1 else 0 end ) as real ) * 100 / count ( * ) from superhero inner join gender on superhero.gender_id = gender.id inner join colour on superhero.eye_colour_id = colour.id where gender.gender = 'Female'
select superhero.superhero_name , race.race from superhero inner join race on superhero.race_id = race.id where superhero.full_name = 'Charles Chandler'
select gender.gender from superhero inner join gender on superhero.gender_id = gender.id where superhero.superhero_name = 'Agent 13'
select superhero.full_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Adaptation'
select count ( hero_power.power_id ) from superhero inner join hero_power on superhero.id = hero_power.hero_id where superhero.superhero_name = 'Amazo'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.full_name = 'Hunter Zolomon'
select superhero.height_cm from superhero inner join colour on superhero.eye_colour_id = colour.id where colour.colour = 'Amber'
select superhero.superhero_name from superhero inner join colour on superhero.eye_colour_id = colour.id and superhero.hair_colour_id = colour.id where colour.colour = 'Black'
select superhero.eye_colour_id from superhero inner join colour on superhero.skin_colour_id = colour.id where colour.colour = 'Gold'
select superhero.full_name from superhero inner join race on superhero.race_id = race.id where race.race = 'Vampire'
select superhero.superhero_name from alignment inner join superhero on alignment.id = superhero.alignment_id where alignment.alignment = 'Neutral'
select count ( hero_attribute.hero_id ) from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id where attribute.attribute_name = 'Strength' order by hero_attribute.attribute_value desc limit 1
select race.race , alignment.alignment from superhero inner join race on race.id = superhero.race_id inner join alignment on superhero.alignment_id = alignment.id where superhero.superhero_name = 'Cameron Hicks'
select cast ( sum ( case when gender.gender = 'Female' then 1 else 0 end ) as real ) * 100 / count ( gender.id ) from superhero inner join gender on superhero.gender_id = gender.id inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics'
select avg ( superhero.weight_kg ) from race inner join superhero on race.id = superhero.race_id where race.race = 'Alien'
select sum ( case when full_name = 'Emil Blonsky' then weight_kg else 0 end ) - sum ( case when full_name = 'Charles Chandler' then weight_kg else 0 end ) from superhero
select avg ( height_cm ) from superhero
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = 'Abomination'
select count ( * ) from race inner join superhero on race.id = superhero.race_id where race.race = 'god/eternal' and superhero.gender_id = 1
select superhero.superhero_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Speed' order by hero_attribute.attribute_value desc limit 1
select count ( * ) from superhero inner join alignment on superhero.alignment_id = alignment.id where alignment.alignment = 'Neutral'
select attribute.attribute_name , hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where superhero.superhero_name = '3-D Man'
select superhero_name from superhero where eye_colour_id = 7 and hair_colour_id = 9
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.superhero_name in ( 'Hawkman' , 'Karate Kid' , 'Speedy' )
select count ( id ) from superhero where publisher_id = 1
select cast ( count ( case when eye_colour_id = 7 then 1 else null end ) as real ) * 100 / count ( eye_colour_id ) from superhero
select cast ( sum ( case when gender.gender = 1 then 1 else 0 end ) as real ) / sum ( case when gender.gender = 2 then 1 else 0 end ) from superhero inner join gender on superhero.gender_id = gender.id
select superhero_name from superhero order by height_cm desc limit 1
select id from superpower where power_name = 'cryokinesis'
select superhero_name from superhero where id = 294
select full_name from superhero where weight_kg is null or weight_kg = 0
select colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.full_name = 'Karen Beecher-Duncan'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.full_name = 'Helen Parr'
select race.race from superhero inner join race on superhero.race_id = race.id where superhero.weight_kg = 108 and superhero.height_cm = 188
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.id = 38
select race.race from superhero inner join race on race.id = superhero.race_id inner join hero_attribute on superhero.id = hero_attribute.hero_id order by hero_attribute.attribute_value desc limit 1
select alignment.alignment , superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id inner join alignment on alignment.id = superhero.alignment_id where superhero.superhero_name = 'Atom IV'
select superhero.full_name from superhero inner join colour on superhero.eye_colour_id = colour.id where colour.colour = 'Blue' limit 5
select cast ( sum ( hero_attribute.attribute_value ) as real ) / count ( superhero.id ) from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join alignment on alignment.id = superhero.alignment_id where alignment.alignment = 3
select colour.colour from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join colour on superhero.skin_colour_id = colour.id where hero_attribute.attribute_value = 100
select count ( * ) from alignment inner join superhero on alignment.id = superhero.alignment_id inner join gender on superhero.gender_id = gender.id where alignment.alignment = 1 and gender.gender = 2
select superhero.superhero_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id where hero_attribute.attribute_value between 75 and 80
select race.race from superhero inner join gender on superhero.gender_id = gender.id inner join race on race.id = superhero.race_id inner join colour on superhero.hair_colour_id = colour.id where gender.gender = 'Male' and colour.colour = 'blue'
select cast ( sum ( case when gender.id = 2 then 1 else 0 end ) as real ) * 100 / count ( * ) from alignment inner join superhero on alignment.id = superhero.alignment_id inner join gender on superhero.gender_id = gender.id where alignment.alignment = 2
select sum ( case when eye_colour_id = 7 then 1 else 0 end ) - sum ( case when eye_colour_id = 1 then 1 else 0 end ) from superhero where weight_kg is null
select hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where superhero.superhero_name = 'Hulk' and attribute.attribute_name = 'Strength'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = 'Ajax'
select count ( * ) from superhero inner join alignment on superhero.alignment_id = alignment.id inner join colour on superhero.skin_colour_id = colour.id where alignment.alignment = 'Bad' and colour.colour = 'Green'
select count ( gender.id ) from superhero inner join gender on superhero.gender_id = gender.id inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics' and gender.gender = 'Female'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Wind Control' order by superhero.superhero_name asc
select gender.gender from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on hero_power.power_id = superpower.id inner join gender on superhero.gender_id = gender.id where superpower.power_name = 'Phoenix Force'
select superhero.superhero_name from publisher inner join superhero on publisher.id = superhero.publisher_id where publisher.publisher_name = 'DC Comics' order by superhero.weight_kg desc limit 1
select avg ( superhero.height_cm ) from race inner join superhero on race.id = superhero.race_id inner join publisher on publisher.id = superhero.publisher_id where publisher.publisher_name = 'Dark Horse Comics' and race.race != 'Human'
select count ( superhero.superhero_name ) from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Speed' and hero_attribute.attribute_value = 100
select case when sum ( case when publisher.publisher_name = 'DC Comics' then 1 else 0 end ) > sum ( case when publisher.publisher_name = 'Marvel Comics' then 1 else 0 end ) then 'DC Comics' else 'Marvel Comics' end from superhero inner join publisher on superhero.publisher_id = publisher.id
select attribute.attribute_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where superhero.superhero_name = 'Black Panther' order by hero_attribute.attribute_value asc limit 1
select colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.superhero_name = 'Abomination'
select full_name from superhero order by height_cm desc limit 1
select superhero_name from superhero where full_name = 'Charles Chandler'
select cast ( sum ( case when gender.gender = 'Female' then 1 else 0 end ) as real ) * 100 / count ( * ) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join gender on superhero.gender_id = gender.id where publisher.publisher_name = 'George Lucas'
select cast ( sum ( case when alignment.alignment = 'Good' then 1 else 0 end ) as real ) * 100 / count ( * ) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join alignment on superhero.alignment_id = alignment.id where publisher.publisher_name = 'Marvel Comics'
select count ( superhero_name ) from superhero where full_name like 'John%'
select hero_attribute.hero_id from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id order by hero_attribute.attribute_value asc limit 1
select full_name from superhero where superhero_name = 'Alien'
select superhero.full_name from superhero inner join colour on superhero.eye_colour_id = colour.id where colour.colour = 'Brown' and superhero.weight_kg < 100
select hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id where superhero.superhero_name = 'Aquababy'
select superhero.weight_kg , race.race from superhero inner join race on superhero.race_id = race.id where superhero.id = 40
select avg ( superhero.height_cm ) from alignment inner join superhero on alignment.id = superhero.alignment_id where alignment.alignment = 'Neutral'
select hero_power.hero_id from superpower inner join hero_power on superpower.id = hero_power.power_id where superpower.power_name = 'Intelligence'
select colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.superhero_name = 'Blackwulf'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on superpower.id = hero_power.power_id where superhero.height_cm * 100 > ( select avg ( height_cm ) from superhero ) * 80
select drivers.driverref from qualifying inner join drivers on qualifying.driverid = drivers.driverid where qualifying.raceid = 18 group by drivers.driverref order by sum ( qualifying.q1 ) desc limit 5
select drivers.surname from laptimes inner join drivers on laptimes.driverid = drivers.driverid inner join qualifying on drivers.driverid = qualifying.driverid where qualifying.raceid = 19 order by laptimes.lap asc limit 1
select races.year from races inner join circuits on races.circuitid = circuits.circuitid where circuits.location = 'Shanghai'
select circuits.url from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Circuit de Barcelona-Catalunya'
select races.name from races inner join circuits on races.circuitid = circuits.circuitid where circuits.country = 'Germany'
select circuits.location from constructors inner join circuits on constructors.constructorid = circuits.circuitref where constructors.name = 'Renault'
select count ( races.raceid ) from circuits inner join races on circuits.circuitid = races.circuitid where races.year = 2010 and circuits.country != 'Asia' or circuits.country = 'Europe'
select races.name from races inner join circuits on races.circuitid = circuits.circuitid where circuits.country = 'Spain'
select circuits.lat , circuits.lng from races inner join circuits on races.circuitid = circuits.circuitid where races.name = 'Australian Grand Prix'
select races.url from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Sepang International Circuit'
select races.time from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Sepang International Circuit'
select circuits.lat , circuits.lng from races inner join circuits on races.circuitid = circuits.circuitid where races.name = 'Abu Dhabi Grand Prix'
select constructors.nationality from results inner join constructorresults on results.constructorid = constructorresults.constructorid inner join constructors on constructorresults.constructorid = constructors.constructorid where results.raceid = 24 and results.points = 1
select qualifying.q1 from drivers inner join qualifying on drivers.driverid = qualifying.driverid inner join results on results.driverid = drivers.driverid where drivers.forename = 'Bruno' and drivers.surname = 'Senna' and qualifying.raceid = 354
select distinct drivers.nationality from qualifying inner join drivers on qualifying.driverid = drivers.driverid where qualifying.raceid = 355 and qualifying.q2 = '0:01:40'
select drivers.number from qualifying inner join drivers on qualifying.driverid = drivers.driverid where qualifying.q3 = '0:01:54' and qualifying.raceid = 903
select count ( results.driverid ) from results inner join races on results.raceid = races.raceid where races.name = 'Bahrain Grand Prix' and races.year = 2007
select seasons.year from seasons inner join races on seasons.year = races.year where races.raceid = 901
select count ( results.driverid ) from results inner join races on results.raceid = races.raceid where races.date = '2015-11-29'
select drivers.dob from results inner join races on results.raceid = races.raceid inner join drivers on results.driverid = drivers.driverid where races.raceid = 592 and races.time is not null order by drivers.dob asc limit 1
sql placeholder
select drivers.nationality from results inner join drivers on results.driverid = drivers.driverid where results.raceid = 933 order by results.fastestlapspeed desc limit 1
select circuits.location from races inner join circuits on races.circuitid = circuits.circuitid where races.name = 'Malaysian Grand Prix'
select constructors.url from results inner join constructorresults on results.constructorid = constructorresults.constructorid inner join constructors on constructorresults.constructorid = constructors.constructorid where results.raceid = 9 order by constructorresults.points desc limit 1
select qualifying.q1 from drivers inner join results on drivers.driverid = results.driverid inner join qualifying on results.driverid = qualifying.driverid where qualifying.raceid = 345 and drivers.forename = 'Lucas' and drivers.surname = 'di Grassi'
select drivers.nationality from qualifying inner join drivers on qualifying.driverid = drivers.driverid where qualifying.raceid = 347 and qualifying.q2 = '0:01:15'
sql placeholder
select results.time from drivers inner join results on drivers.driverid = results.driverid where drivers.forename = 'Bruce' and drivers.surname = 'McLaren' and results.raceid = 743
select results.driverid from results inner join races on results.raceid = races.raceid where races.name = 'San Marino Grand Prix' and races.year = 2006 and results.position = 2
select seasons.year from seasons inner join races on seasons.year = races.year where races.raceid = 901
select count ( results.driverid ) from results inner join races on results.raceid = races.raceid inner join status on results.statusid = status.statusid where races.date = '2015-11-29' and status.status = 'Finished'
select drivers.driverid from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.raceid = 872 order by drivers.dob desc limit 1
select drivers.forename , drivers.surname from drivers inner join results on drivers.driverid = results.driverid inner join laptimes on results.driverid = laptimes.driverid where results.raceid = 348 order by laptimes.time asc limit 1
select drivers.nationality from results inner join drivers on results.driverid = drivers.driverid where results.fastestlapspeed = ( select max ( fastestlapspeed ) from results )
select cast ( ( sum ( case when results.raceid = 854 then fastestlapspeed else 0 end ) - sum ( case when results.raceid = 853 then fastestlapspeed else 0 end ) ) as real ) * 100 / sum ( case when results.raceid = 853 then fastestlapspeed else 0 end ) from results inner join drivers on results.driverid = drivers.driverid inner join laptimes on results.driverid = laptimes.driverid where drivers.forename = 'Paul' and drivers.surname = 'di Resta'
sql placeholder
select year from races where name = 'Singapore Grand Prix' order by year asc limit 1
select count ( name ) from races where year = 2005 order by name desc
sql placeholder
select name , date from races where year = 1999 order by round desc limit 1
select year from races group by year order by count ( round ) desc limit 1
select races.name from races inner join circuits on races.circuitid = circuits.circuitid where races.year = 2017 and circuits.name != 'Circuits.name' and races.year = '2000'
select circuits.country , circuits.location from races inner join circuits on races.circuitid = circuits.circuitid where races.name = 'European Grand Prix' order by races.year asc limit 1
select races.year from circuits inner join races on circuits.circuitid = races.circuitid where races.name = 'British Grand Prix' and circuits.name = 'Brands Hatch' order by races.year desc limit 1
select count ( distinct races.year ) from circuits inner join races on circuits.circuitid = races.circuitid where races.name = 'British Grand Prix' and circuits.name = 'Silverstone Circuit'
select drivers.driverref , driverstandings.position from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid inner join driverstandings on results.driverid = driverstandings.driverid where races.name = '2010 Singapore Grand Prix'
select drivers.forename , drivers.surname from results inner join driverstandings on results.driverid = driverstandings.driverid inner join drivers on driverstandings.driverid = drivers.driverid order by results.points desc limit 1
select drivers.forename , drivers.surname , results.points from results inner join drivers on results.driverid = drivers.driverid inner join driverstandings on drivers.driverid = driverstandings.driverid inner join races on driverstandings.raceid = races.raceid where races.name = '2017 Chinese Grand Prix' order by results.points desc limit 3
select results.fastestlaptime , drivers.driverref , races.name from drivers inner join results on drivers.driverid = results.driverid inner join laptimes on results.driverid = laptimes.driverid inner join races on results.raceid = races.raceid order by laptimes.time asc limit 1
select avg ( laptimes.time ) from drivers inner join laptimes on drivers.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid where drivers.forename = 'Sebastian' and drivers.surname = 'Vettel' and races.name = 'Chinese Grand Prix' and races.year = 2009
select cast ( count ( case when driverstandings.position > 1 then 1 else null end ) as real ) * 100 / count ( races.raceid ) from races inner join driverstandings on races.raceid = driverstandings.raceid inner join drivers on driverstandings.driverid = drivers.driverid where drivers.surname = 'Hamilton' and races.year >= 2010
select drivers.nationality , avg ( driverstandings.points ) from drivers inner join driverstandings on drivers.driverid = driverstandings.driverid inner join results on results.driverid = driverstandings.driverid group by drivers.nationality order by count ( driverstandings.wins ) desc limit 1
select dob , iif ( nationality = 'Japanese' , '2022' , '' ) from drivers where nationality = 'Japanese' order by dob desc limit 1
select circuits.name from races inner join circuits on races.circuitid = circuits.circuitid where races.year between 1990 and 2000 group by circuits.name having count ( races.date ) = 4
select circuits.name , circuits.location , races.name from circuits inner join races on circuits.circuitid = races.circuitid where races.year = 2006 and circuits.country = 'USA'
select races.name , circuits.name , circuits.location from races inner join circuits on races.circuitid = circuits.circuitid where races.year = 2005 and races.date like '2005%9%'
select races.name from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.surname = 'Yoong' and drivers.forename = 'Alex' and results.position < 10
select count ( results.raceid ) from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid inner join circuits on races.circuitid = circuits.circuitid where drivers.surname = 'Schumacher' and circuits.name = 'Sepang International Circuit' order by results.points desc limit 1
select races.name , races.year from races inner join laptimes on races.raceid = laptimes.raceid inner join drivers on laptimes.driverid = drivers.driverid inner join results on laptimes.driverid = drivers.driverid where drivers.forename = 'Michael' and drivers.surname = 'Schumacher' order by laptimes.milliseconds asc limit 1
sql placeholder
select races.name , results.points from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where drivers.forename = 'Lewis' and drivers.surname = 'Hamilton' order by races.year asc limit 1
select races.name , circuits.country from races inner join circuits on races.circuitid = circuits.circuitid where races.year = 2017 order by races.date asc
select races.name , races.year , circuits.location from results inner join races on results.raceid = races.raceid inner join circuits on races.circuitid = circuits.circuitid group by races.name , races.year , circuits.location order by sum ( results.laps ) desc limit 1
select cast ( sum ( case when circuits.country = 'Germany' then 1 else 0 end ) as real ) * 100 / count ( races.raceid ) from circuits inner join races on circuits.circuitid = races.circuitid where races.name = 'Europearn Grand Prix'
select lat , lng from circuits where name = 'Silverstone'
select name from circuits where location in ( 'Silverstone' , 'Hockenheimring' , 'Hungaroring' ) order by lat desc limit 1
select circuitref from circuits where name = 'Marina Bay Street Circuit'
select country from circuits order by alt desc limit 1
select count ( driverid ) from drivers where code is null
sql placeholder
select surname from drivers where nationality = 'italian'
select url from drivers where forename = 'Anthony' and surname = 'Davidson'
select driverref from drivers where forename = 'Lewis' and surname = 'Hamilton'
select circuits.name from races inner join circuits on races.circuitid = circuits.circuitid where races.name = 'Spanish Grand Prix' and races.year = 2009
select distinct races.year from circuits inner join races on circuits.circuitid = races.circuitid where circuits.name = 'Silverstone Circuit'
select races.url from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Silverstone Circuit'
select races.time from circuits inner join races on circuits.circuitid = races.circuitid where races.year = 2010 and circuits.location = 'Abu Dhabi'
select count ( races.raceid ) from races inner join circuits on races.circuitid = circuits.circuitid where circuits.country = 'Italy'
select races.date from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Barcelona-Catalunya'
select circuits.url from races inner join circuits on races.circuitid = circuits.circuitid where races.name = 'Spanish Grand Prix' and races.year = 2009
select min ( results.fastestlaptime ) from drivers inner join results on drivers.driverid = results.driverid inner join laptimes on results.driverid = laptimes.driverid where drivers.forename = 'Lewis' and drivers.surname = 'Hamilton'
select drivers.forename , drivers.surname from results inner join drivers on results.driverid = drivers.driverid where results.fastestlapspeed is not null order by results.fastestlapspeed asc limit 1
select drivers.driverref from results inner join drivers on results.driverid = drivers.driverid inner join races on results.raceid = races.raceid where races.name = 'Australian Grand Prix' and races.year = 2008 and results.rank = 1
select races.name from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.forename = 'Lewis' and drivers.surname = 'Hamilton'
select races.name from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where drivers.forename = 'Lewis' and drivers.surname = 'Hamilton' order by results.rank desc limit 1
select results.fastestlapspeed from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where races.name = 'Spanish Grand Prix' and races.year = 2009 order by results.fastestlapspeed desc limit 1
select distinct races.year from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.forename = 'Lewis' and drivers.surname = 'Hamilton'
select results.positionorder from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where drivers.forename = 'Lewis' and races.year = 2008 and races.name = 'Australian Grand Prix'
select drivers.forename , drivers.surname from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and races.year = 2008 and results.grid = 4
select count ( results.driverid ) from results inner join races on results.raceid = races.raceid where races.name = 'Australian Grand Prix' and results.time is not null
sql placeholder
select results.time from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where races.name = 'Australian Grand Prix' and races.year = 2008 and results.rank = 2
select drivers.surname , drivers.url from results inner join drivers on results.driverid = drivers.driverid inner join races on results.raceid = races.raceid where races.name = 'Australian Grand Prix' and races.year = 2008
select count ( drivers.driverid ) from results inner join drivers on results.driverid = drivers.driverid inner join races on results.raceid = races.raceid where races.year = 2008 and races.name = 'Australian Grand Prix' and drivers.nationality = 'American'
select count ( distinct results.driverid ) from results inner join races on results.raceid = races.raceid where races.name = 'Australian Grand Prix' and results.time > 0
select sum ( results.points ) from drivers inner join results on drivers.driverid = results.driverid inner join driverstandings on results.driverid = driverstandings.driverid where drivers.forename = 'Lewis' and drivers.surname = 'Hamilton'
select avg ( results.fastestlaptime ) from drivers inner join results on drivers.driverid = results.driverid inner join laptimes on results.driverid = laptimes.driverid where drivers.forename = 'Lewis' and drivers.surname = 'Hamilton'
select cast ( sum ( case when races.time is not null then 1 else 0 end ) as real ) * 100 / count ( races.raceid ) from races inner join laptimes on races.raceid = laptimes.raceid inner join results on results.raceid = laptimes.raceid where races.year = 2008 and races.name = 'Australian Grand Prix'
sql placeholder
select count ( name ) from circuits where location = 'Melbourne' and country = 'Australia'
select lat , lng from circuits where country = 'USA'
select count ( * ) from drivers where nationality = 'British' and strftime ( '%Y' , dob ) > '1980'
select avg ( constructorresults.points ) from constructors inner join constructorresults on constructors.constructorid = constructorresults.constructorid where constructors.nationality = 'British'
select constructors.name from constructorstandings inner join constructors on constructorstandings.constructorid = constructors.constructorid order by constructorstandings.points desc limit 1
select constructors.name from results inner join constructorresults on results.constructorid = constructorresults.constructorid inner join constructors on constructorresults.constructorid = constructors.constructorid where results.raceid = 291 and constructorresults.points = 0
select count ( constructors.constructorid ) from constructors inner join constructorresults on constructors.constructorid = constructorresults.constructorid inner join results on constructorresults.raceid = results.raceid where constructors.nationality = 'Japanese' group by results.raceid having count ( distinct results.raceid ) = 2
select constructors.name from results inner join constructors on results.constructorid = constructors.constructorid where results.rank = 1
select count ( constructors.constructorid ) from results inner join constructors on results.constructorid = constructors.constructorid where constructors.nationality = 'French' and results.laps > 50
select cast ( sum ( case when races.time is not null then 1 else 0 end ) as real ) * 100 / count ( races.time ) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.year between 2007 and 2009 and drivers.nationality = 'Japanese'
select avg ( laptimes.milliseconds ) from races inner join laptimes on races.raceid = laptimes.raceid where races.year is not null
select drivers.forename , drivers.surname from results inner join drivers on results.driverid = drivers.driverid where results.rank = 2 and strftime ( '%Y' , drivers.dob ) > '1975'
select count ( results.driverid ) from results inner join drivers on results.driverid = drivers.driverid where drivers.nationality = 'Italian' and results.time is null
select drivers.forename , drivers.surname from results inner join drivers on results.driverid = drivers.driverid where results.fastestlaptime is not null order by results.fastestlaptime desc limit 1
select results.fastestlap from laptimes inner join races on laptimes.raceid = races.raceid inner join results on results.driverid = laptimes.driverid where races.year = 2009 order by laptimes.time desc limit 1
select avg ( results.fastestlapspeed ) from races inner join results on races.raceid = results.raceid where races.name = 'Spanish Grand Prix' and races.year = 2009
select races.name , races.year from results inner join races on results.raceid = races.raceid inner join laptimes on results.raceid = laptimes.raceid where laptimes.milliseconds is null order by laptimes.milliseconds asc limit 1
select cast ( sum ( case when laptimes.lap > 50 and drivers.dob < 1985 then 1 else 0 end ) as real ) * 100 / count ( * ) from results inner join drivers on results.driverid = drivers.driverid inner join laptimes on results.driverid = laptimes.driverid where strftime ( '%Y' , laptimes.lap ) between '2000' and '2005'
select count ( distinct drivers.driverid ) from drivers inner join laptimes on drivers.driverid = laptimes.driverid where drivers.nationality = 'French' and laptimes.time < '02:00.00'
select distinct code from drivers where nationality = 'America'
select count ( raceid ) from races where year = 2009
select count ( distinct drivers.driverid ) from drivers inner join results on drivers.driverid = results.driverid where results.raceid = 18
select distinct code from drivers where nationality = 'Netherlandic' and dob = ( select max ( dob ) from drivers )
select driverref from drivers where surname = 'Kubica'
select count ( * ) from drivers where strftime ( '%Y' , dob ) = '1980' and nationality = 'Australian'
select drivers.driverid from drivers inner join laptimes on drivers.driverid = laptimes.driverid where drivers.nationality = 'German' and drivers.dob between 1980 and 1990 order by laptimes.time asc limit 3
select driverref from drivers where nationality = 'German' order by dob asc limit 1
sql placeholder
select drivers.number from drivers inner join laptimes on drivers.driverid = laptimes.driverid inner join results on laptimes.driverid = results.driverid where drivers.nationality = 'Spanish' and strftime ( '%Y' , laptimes.time ) < '1982' order by laptimes.time desc limit 10
select distinct races.year from races inner join laptimes on races.raceid = laptimes.raceid inner join results on races.raceid = results.raceid order by results.fastestlaptime desc limit 1
select distinct races.year from races inner join laptimes on races.raceid = laptimes.raceid where laptimes.time = ( select min ( time ) from results )
select results.driverid from results inner join laptimes on results.fastestlap = laptimes.time order by laptimes.time asc limit 5
select count ( results.raceid ) from results inner join status on results.statusid = status.statusid where results.raceid between 50 and 100 and status.status = 2
select count ( circuitid ) , location , lng from circuits where country = 'Austria'
select raceid from results group by raceid order by count ( time ) desc limit 1
select drivers.nationality , drivers.dob from qualifying inner join drivers on qualifying.driverid = drivers.driverid where qualifying.raceid = 23 and qualifying.q2 is not null
select distinct races.year , races.name , races.date , races.time from races inner join qualifying on races.raceid = qualifying.raceid inner join drivers on qualifying.driverid = drivers.driverid order by drivers.dob desc limit 1
select count ( results.driverid ) from drivers inner join results on drivers.driverid = results.driverid inner join status on results.statusid = status.statusid where status.status = 2 and drivers.nationality = 'American'
select constructors.name , constructors.url from constructors inner join constructorresults on constructors.constructorid = constructorresults.constructorid where constructors.nationality = 'Italian' order by constructorresults.points desc limit 1
sql placeholder
select drivers.forename from drivers inner join results on drivers.driverid = results.driverid inner join laptimes on results.driverid = laptimes.driverid inner join races on results.raceid = races.raceid where races.name = 'French Grand Prix' order by laptimes.time desc limit 1
select races.name , results.fastestlaptime from races inner join results on races.raceid = results.raceid order by results.fastestlaptime asc limit 1
select avg ( results.fastestlaptime ) from results inner join races on results.raceid = races.raceid inner join drivers on results.driverid = drivers.driverid where races.year = 2006 and races.name = 'United States Grand Prix' and results.rank between 1 and 10
select drivers.driverid from drivers inner join pitstops on drivers.driverid = pitstops.driverid where drivers.nationality = 'German' and strftime ( '%Y' , pitstops.duration ) between '1980' and '1985' order by pitstops.duration asc limit 5
select drivers.forename , drivers.surname , results.time from results inner join races on results.raceid = races.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Canadian Grand Prix' and races.year = 2008 order by results.time desc , results.milliseconds desc limit 1
select constructors.constructorref , races.url from races inner join results on races.raceid = results.raceid inner join constructors on results.constructorid = constructors.constructorid where races.name = 'Singapore Grand Prix' and races.year = 2009 order by races.time desc limit 1
select forename , surname , dob from drivers where nationality = 'Austria' and strftime ( '%Y' , dob ) between '1981' and '1991'
select forename , surname , dob from drivers where nationality = 'German' and dob between '1971' and '1985' order by dob desc
select location , country , lng from circuits where name = 'Hungaroring'
select constructors.name , results.points , constructors.nationality from races inner join results on races.raceid = results.raceid inner join constructorresults on results.constructorid = constructorresults.constructorid inner join constructors on results.constructorid = constructors.constructorid where races.name = 'Monaco Grand Prix' and races.year between 1980 and 2010 group by constructors.name , results.points order by sum ( results.points ) desc limit 1
select sum ( results.points ) / count ( races.raceid ) from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where races.name = 'Turkish Grand Prix' and drivers.forename = 'Lewis'
select cast ( count ( raceid ) as real ) / 10 from races where date between '2000-01-01' and '2010-12-31'
select nationality from drivers group by nationality order by count ( nationality ) desc limit 1
select sum ( driverstandings.wins ) from results inner join driverstandings on results.driverid = driverstandings.driverid where driverstandings.driverid = 91
select races.name from results inner join races on results.raceid = races.raceid where results.fastestlaptime = ( select min ( fastestlaptime ) from results )
select circuits.name , circuits.location , circuits.country from races inner join circuits on races.circuitid = circuits.circuitid order by races.date desc limit 1
select drivers.forename , drivers.surname from drivers inner join qualifying on drivers.driverid = qualifying.driverid inner join races on qualifying.raceid = races.raceid inner join circuits on races.circuitid = circuits.circuitid where races.year = 2008 and circuits.name = 'Marina Bay Street Circuit' order by qualifying.q3 asc limit 1
select drivers.forename , drivers.surname , drivers.nationality , races.name from drivers inner join races on drivers.driverid = races.raceid order by drivers.dob desc limit 1
sql placeholder
select sum ( driverstandings.wins ) , drivers.forename , drivers.surname from results inner join driverstandings on results.driverid = driverstandings.driverid inner join drivers on driverstandings.driverid = drivers.driverid order by drivers.dob asc limit 1
select max ( pitstops.duration ) from drivers inner join pitstops on drivers.driverid = pitstops.driverid
select results.fastestlaptime from results inner join races on results.raceid = races.raceid inner join circuits on races.circuitid = circuits.circuitid where circuits.name is not null order by results.fastestlapspeed desc limit 1
select pitstops.duration from drivers inner join pitstops on drivers.driverid = pitstops.driverid where drivers.driverref = 'Lewis' order by pitstops.duration desc limit 1
select pitstops.lap from drivers inner join pitstops on drivers.driverid = pitstops.driverid inner join races on pitstops.raceid = races.raceid where races.year = 2011 and races.name = 'Australian Grand Prix' and drivers.forename = 'Lewis'
select pitstops.duration from drivers inner join pitstops on drivers.driverid = pitstops.driverid inner join races on pitstops.raceid = races.raceid where races.year = 2011 and races.name = 'Australian Grand Prix'
select laptimes.time from drivers inner join laptimes on drivers.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid where drivers.forename = 'Lewis' and drivers.surname = 'Hamilton' order by laptimes.time desc limit 1
select drivers.forename , drivers.surname from drivers inner join results on drivers.driverid = results.driverid inner join laptimes on results.driverid = laptimes.driverid where results.fastestlaptime is not null order by laptimes.time asc limit 1
select laptimes.position from drivers inner join laptimes on drivers.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid where drivers.driverref = 'Lewis Hamilton' order by laptimes.time asc limit 1
select results.fastestlaptime from results inner join races on results.raceid = races.raceid inner join circuits on races.circuitid = circuits.circuitid where races.name = 'Austrian Grand Prix' order by results.fastestlaptime desc limit 1
select results.fastestlaptime from results inner join races on results.time = races.time inner join circuits on circuits.circuitid = races.circuitid where circuits.country = 'Italy' order by results.fastestlaptime desc limit 1
select races.name from races inner join laptimes on races.raceid = laptimes.raceid inner join circuits on circuits.circuitid = races.circuitid where races.name = 'Austrian Grand Prix' order by laptimes.lap desc limit 1
select pitstops.duration from races inner join laptimes on races.raceid = laptimes.raceid inner join pitstops on laptimes.raceid = pitstops.raceid where races.name = 'Austrian Grand Prix' order by laptimes.time desc limit 1
select circuits.lat , circuits.lng from results inner join circuits on results.fastestlaptime = circuits.circuitid where results.fastestlaptime = '1:29.488'
select avg ( pitstops.milliseconds ) from drivers inner join pitstops on drivers.driverid = pitstops.driverid where drivers.forename = 'Lewis' and drivers.surname = 'Hamilton'
select cast ( sum ( laptimes.milliseconds ) as real ) / count ( laptimes.lap ) from circuits inner join races on circuits.circuitid = races.circuitid inner join laptimes on races.raceid = laptimes.raceid where circuits.country = 'Italy'
select player.player_name , player_attributes.player_api_id from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id order by player_attributes.overall_rating desc limit 1
select height , player_name from player order by height desc limit 1
select preferred_foot from player_attributes order by potential asc limit 1
select count ( * ) from player_attributes where overall_rating between 60 and 65 and defensive_work_rate like 'low'
select player.player_name , player_attributes.id from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player_attributes.crossing desc limit 5
select league.name from match inner join league on match.league_id = league.id where match.season = '2015/2016' group by league.name order by sum ( match.home_team_goal + match.away_team_goal ) desc limit 1
select home_team_goal from match where season = '2015/2016' and home_team_goal - away_team_goal < 0 order by home_team_goal - away_team_goal asc limit 1
select player.player_name from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_api_id order by player_attributes.penalties desc limit 10
select match.away_team_api_id from match inner join league on match.league_id = league.id where league.name = 'Scotland Premier League' and match.season = 2010 order by match.away_team_goal - match.home_team_goal desc limit 1
select team_attributes.buildupplayspeed from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id order by team_attributes.buildupplayspeed desc limit 4
select league.name from match inner join league on match.league_id = league.id where match.season = '2015/2016' group by league.name order by sum ( match.home_team_goal + match.away_team_goal ) desc limit 1
sql placeholder
select league.name , count ( match.league_id ) from match inner join league on match.league_id = league.id group by league.name order by count ( match.league_id ) desc limit 1
select avg ( height ) from player where birthday between '1990-01-01 00:00:00' and '1996-01-01 00:00:00'
select player.player_api_id from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.overall_rating > 0.5 and substr ( date , 1 , 4 ) = '2010' order by player_attributes.overall_rating desc limit 1
select distinct team_attributes.team_fifa_api_id from team_attributes inner join team on team_attributes.team_api_id = team.team_api_id where team_attributes.buildupplayspeed between 51 and 59
select team.team_long_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team_attributes.buildupplaypassing > ( select avg ( team_attributes.buildupplaypassing ) from team_attributes inner join team on team_attributes.team_api_id = team.team_api_id ) and team.team_short_name = '2012'
select cast ( sum ( case when player_attributes.preferred_foot = 'left' then 1 else 0 end ) as real ) * 100 / count ( player.player_fifa_api_id ) from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player.birthday between '1987-01-01 00:00:00' and '1992-12-31 00:00:00'
select league.name from match inner join league on match.league_id = league.id group by league.name order by sum ( match.home_team_goal + match.away_team_goal ) asc limit 5
select cast ( sum ( player_attributes.long_shots ) as real ) / count ( player.player_api_id ) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Ahmed Samir Farag'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.height > 180 group by player.player_name order by cast ( sum ( player_attributes.heading_accuracy ) as real ) / count ( player_attributes.player_api_id ) desc limit 10
sql placeholder
select distinct league.name from match inner join league on match.league_id = league.id where match.season = 2009-2010 and match.home_team_goal > ( select avg ( away_team_goal ) from match inner join league on match.league_id = league.id where match.season = 2010 )
select team_short_name from team where team_long_name = 'Queens Park Rangers'
select player_name from player where substr ( birthday , 1 , 4 ) = '1970' and substr ( birthday , 6 , 2 ) = '10'
select player_attributes.attacking_work_rate from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player.player_name = 'Franco Zennaro'
select team_attributes.buildupplaypositioningclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'ADO Den Haag'
select player_attributes.heading_accuracy from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Francois Affolter' and player_attributes.date = '2014-09-18 00:00:00'
select player_attributes.overall_rating from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player.player_name = 'Gabriel Tamas' and strftime ( '%Y' , player_attributes.date ) = '2011'
select sum ( case when league.name = 'Scotland Premier League' then 1 else 0 end ) from match inner join league on match.league_id = league.id where match.season = 2015/2016
select player_attributes.preferred_foot from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player.birthday is not null order by player.birthday desc limit 1
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player_attributes.potential desc limit 1
select sum ( case when player_attributes.preferred_foot = 'left' then 1 else 0 end ) from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id where player.weight < 130
select team.team_short_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team_attributes.chancecreationpassingclass = 'Risky'
select player_attributes.defensive_work_rate from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'David Wilson'
select player.birthday from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_api_id order by player_attributes.overall_rating desc limit 1
select league.name from match inner join league on match.league_id = league.id inner join country on country.id = league.country_id where country.name = 'Netherlands'
select avg ( match.home_team_goal ) from match inner join country on match.country_id = country.id where country.name = 'Poland' and match.season = 2010/2011
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.finishing = ( select max ( finishing ) from player_attributes ) and player.height = ( select min ( height ) from player ) group by player.player_name order by sum ( player_attributes.finishing ) desc limit 1
select player_name from player where height > 180
select count ( id ) from player where strftime ( '%Y' , birthday ) > '1990'
select count ( player.player_name ) from player inner join team_attributes on player.player_api_id = team_attributes.team_fifa_api_id inner join team on team_attributes.team_fifa_api_id = team.team_fifa_api_id where player.player_name = 'Adam' and player.weight > 170 and team_attributes.buildupplayspeedclass = 'Fast'
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.overall_rating > 80 and player_attributes.date between '2008' and '2010'
select player_attributes.potential from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Aaron Doran'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player_attributes.preferred_foot = 'left'
select team.team_long_name from team inner join team_attributes on team.team_fifa_api_id = team_attributes.team_api_id where team_attributes.buildupplayspeedclass = 'Fast'
select team_attributes.buildupplaypassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_short_name = 'CLB'
select team.team_short_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team_attributes.buildupplaypassing > 70
select avg ( player_attributes.overall_rating ) from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.date between '2010' and '2015' and player.height > 170
select player_name from player order by height asc limit 1
select country.name from match inner join league on match.league_id = league.country_id inner join country on country.id = league.country_id where league.name = 'Italy Serie A'
select team.team_short_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team_attributes.buildupplayspeed = 31 and team_attributes.buildupplaydribbling = 53 and team_attributes.buildupplaypassing = 32
select avg ( player_attributes.overall_rating ) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Aaron Doran'
select sum ( case when match.date between '2008-08' and '2008-10' then 1 else 0 end ) from match inner join league on match.league_id = league.id where league.name = 'Germany 1. Bundesliga'
select team.team_short_name from match inner join team on team.team_api_id = match.home_team_api_id where match.home_team_goal = 10
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.balance = 7 and player_attributes.potential = 61 order by player_attributes.balance desc limit 1
select avg ( player_attributes.ball_control ) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Abdou Diallo' or player.player_name = 'Aaron Appindangoye'
select team_long_name from team where team_short_name = 'GEN'
select player_name from player where player_name = 'Aaron Lennon' or player.player_name = 'Abdelaziz Barrada' order by birthday asc limit 1
select player_name from player order by height desc limit 1
select sum ( case when player_attributes.attacking_work_rate = 'low' then 1 else 0 end ) from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.preferred_foot = 'left'
select country.name from match inner join league on match.league_id = league.id inner join country on country.id = league.country_id where league.name = 'Belgium Jupiler League'
select league.name from match inner join league on match.league_id = league.id inner join country on country.id = league.country_id where country.name = 'Germany'
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id order by player_attributes.overall_rating desc limit 1
select count ( player.player_name ) from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id where strftime ( '%Y' , player.birthday ) < '1986' and player_attributes.defensive_work_rate = 'high'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name in ( 'Alexis' , 'Ariel Borysiuk' , 'Arouna Kone' ) order by player_attributes.crossing desc limit 1
select player_attributes.heading_accuracy from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player.player_name = 'Ariel Borysiuk'
select count ( player.player_name ) from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_api_id where player.height > 180 and player_attributes.volleys > 70
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.volleys > 70 and player_attributes.dribbling > 70
select sum ( case when country.name = 'Belgium' then 1 else 0 end ) from match inner join country on country.id = match.country_id where match.season = 2008-2009
select player_attributes.long_passing from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.birthday is not null order by player.birthday asc limit 1
select sum ( case when match.date like '2009-04%' then 1 else 0 end ) from match inner join league on match.league_id = league.id where league.name = 'Belgium Jupiler League'
select league_id from match where season = '2008/2009' group by league_id order by count ( league_id ) desc limit 1
select avg ( player_attributes.overall_rating ) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where strftime ( '%Y' , player.birthday ) < '1986'
select cast ( ( sum ( case when player.player_name = 'Ariel Borysiuk' then player_attributes.overall_rating else 0 end ) - sum ( case when player.player_name = 'Paulin Puel' then player_attributes.overall_rating else 0 end ) ) as real ) * 100 / sum ( case when player.player_name = 'Paulin Puel' then player_attributes.overall_rating else 0 end ) from player_attributes inner join player on player_attributes.player_api_id = player.player_fifa_api_id
select avg ( team_attributes.buildupplayspeed ) from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'Heart of Midlothian'
select avg ( player_attributes.overall_rating ) from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id where player.player_name = 'Pietro Marino'
select sum ( player_attributes.crossing ) from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Aaron Lennox'
select team_attributes.chancecreationpassing , team_attributes.chancecreationpassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'Ajax' order by team_attributes.chancecreationpassing desc limit 1
select player_attributes.preferred_foot from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id where player.player_name = 'Abdou Diallo'
select player_attributes.overall_rating from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Dorlan Pabon' order by player_attributes.overall_rating desc limit 1
select cast ( sum ( match.away_team_goal ) as real ) / count ( match.away_team_goal ) from team inner join match on team.team_api_id = match.away_team_api_id inner join country on match.country_id = country.id where team.team_long_name = 'Parma' and country.name = 'Italy'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.overall_rating = 77 and player_attributes.date = '2016-06-23' order by player.birthday asc limit 1
select player_attributes.overall_rating from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id where player.player_name = 'Aaron Mooy' and player_attributes.date = '2016-02-04 00:00:00'
select player_attributes.potential from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id where player.player_name = 'Francesco Parravicini' and player_attributes.date = '2010-08-30 00:00:00'
select player_attributes.attacking_work_rate from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id where player.player_name = 'Francesco Migliore' and player_attributes.date = '2015-05-01 00:00:00'
select player_attributes.defensive_work_rate from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Kevin Berigaud' and player_attributes.date = '2013-02-22 00:00:00'
select player_attributes.date from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Kevin Constant' order by player_attributes.crossing desc limit 1
select team_attributes.buildupplayspeedclass from team inner join team_attributes on team.team_fifa_api_id = team_attributes.team_api_id where team.team_long_name = 'Willem II' and team_attributes.date = '2012-02-22 00:00:00'
select team_attributes.buildupplaydribblingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_short_name = 'LEI' and team_attributes.date = '2015-09-10 00:00:00'
select team_attributes.buildupplaypassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'FC Lorient' and team_attributes.date = '2010-02-22'
select team_attributes.chancecreationpassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'PEC Zwolle' and team_attributes.date = '2013-09-20 00:00:00'
select team_attributes.chancecreationcrossingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'Hull City' and team_attributes.date = '2010-02-22 00:00:00'
select team_attributes.defenceaggressionclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'Hannover 96' and team_attributes.date = '2015-09-10 00:00:00'
select avg ( player_attributes.overall_rating ) from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player.player_name = 'Marko Arnautovic' and player_attributes.date between '2007-02-22 00:00:00' and '2016-04-21 00:00:00'
select cast ( ( sum ( case when player_name = 'Landon Donovan' then overall_rating else 0 end ) - sum ( case when player_name = 'Jordan Bowery' then overall_rating else 0 end ) ) as real ) * 100 / sum ( case when player_name = 'Landon Donovan' then overall_rating else 0 end ) from player_attributes inner join player on player_attributes.player_api_id = player.player_fifa_api_id where player_attributes.date = '2013-07-12'
select player_name from player order by height desc limit 5
select player_api_id from player order by weight desc limit 10
select player_name from player where birthday and strftime ( '%Y' , 'localtime' ) > 34
select sum ( case when player.player_name = 'Aaron Lennon' then 1 else 0 end ) from match inner join player on match.home_player_11 = player.player_api_id
select sum ( match.away_team_goal ) from player inner join match on player.player_api_id = match.away_player_1 where player.player_name = 'Daan Smith' or player.player_name = 'Filipe Ferreira'
select sum ( match.home_team_goal ) from player inner join match on player.player_api_id = match.home_team_api_id where player.birthday - strftime ( '%Y' , match.date ) < 31
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id order by player_attributes.overall_rating desc limit 10
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player_attributes.potential desc limit 1
select player.player_name from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_api_id where player_attributes.attacking_work_rate = 'high'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player_attributes.finishing = 1 order by player.birthday - strftime ( '%Y' , 'localtime' ) desc limit 1
sql placeholder
sql placeholder
sql placeholder
select team.team_long_name from team_attributes inner join team on team_attributes.team_fifa_api_id = team.team_api_id where team_attributes.buildupplayspeedclass = 'Slow'
select team.team_short_name from team_attributes inner join team on team_attributes.team_api_id = team.team_api_id where team_attributes.chancecreationpassingclass = 'Safe'
sql placeholder
select player_name from player where height > 180 order by height desc limit 3
select count ( player_fifa_api_id ) from player where player_name like 'Aaron%' and birthday > '1990'
select sum ( case when id = 6 then jumping else 0 end ) - sum ( case when id = 23 then jumping else 0 end ) from player_attributes
select player.id from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.preferred_foot = 'right' order by player_attributes.potential asc limit 3
select count ( id ) from player_attributes where preferred_foot = 'left' and potential = ( select max ( potential ) from player_attributes )
select cast ( sum ( case when stamina > 80 and strength > 80 then 1 else 0 end ) as real ) * 100 / count ( id ) from player_attributes
select country.name from match inner join league on match.league_id = league.country_id inner join country on country.id = league.country_id where league.name = 'Poland Ekstraklasa'
select home_team_goal , away_team_goal from match where date like '2008-09-24%' and home_team_goal is not null
select player_attributes.sprint_speed , player_attributes.agility , player_attributes.acceleration from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id where player.player_name = 'Alexis Blin'
select team_attributes.buildupplayspeedclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team.team_long_name = 'KSV Cercle Brugge'
select sum ( case when match.season = '2015/2016' then 1 else 0 end ) from match inner join league on match.league_id = league.id inner join country on league.country_id = country.id where league.name = 'Serie A'
select max ( match.home_team_goal ) from match inner join league on match.league_id = league.country_id where league.name = 'Netherlands Eredivisie'
select player_attributes.finishing , player_attributes.curve from player inner join player_attributes on player.player_api_id = player_attributes.player_api_id order by player.weight desc limit 1
select team.team_long_name from team inner join match on team.team_api_id = match.home_team_api_id where match.season = '2015/2016' group by team.team_long_name order by count ( team.id ) desc limit 1
select team.team_long_name from team inner join match on team.team_api_id = match.away_team_api_id group by team.team_long_name order by sum ( match.away_team_goal ) desc limit 1
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id order by player_attributes.overall_rating desc limit 1
select cast ( sum ( case when player_attributes.strength > 70 and player.height < 180 then 1 else 0 end ) as real ) * 100 / count ( * ) from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_api_id
select sum ( case when admission = '+' then 1 else 0 end ) - sum ( case when admission = '-' then 1 else 0 end ) from patient where sex = 'M'
select cast ( sum ( case when sex = 'F' then 1 else 0 end ) as real ) * 100 / count ( birthday ) from patient where strftime ( '%Y' , birthday ) > '1930'
select cast ( sum ( case when admission = '+' then 1 else 0 end ) as real ) * 100 / count ( birthday ) from patient where strftime ( '%Y' , birthday ) between '1930' and '1940'
select cast ( sum ( case when admission = '+' then 1 else 0 end ) as real ) / sum ( case when admission = '-' then 1 else 0 end ) from patient where diagnosis = 'SLE'
select patient.diagnosis , laboratory.date from patient inner join laboratory on patient.id = laboratory.id where patient.id = 30609
sql placeholder
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.hgb > 500
select patient.id , strftime ( '%Y' , 'now' ) - strftime ( '%Y' , patient.birthday ) as age from patient inner join examination on patient.id = examination.id where examination.rvvt = '+'
select patient.id , patient.sex , patient.diagnosis from patient inner join examination on patient.id = examination.id where examination.thrombosis = 2
sql placeholder
select patient.id , patient.sex , patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.alb < 3.5
select cast ( sum ( case when laboratory.tp < '6.0' then 1 else 0 end ) as real ) * 100 / count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'F'
sql placeholder
select count ( id ) from patient where strftime ( '%Y' , admission ) = '1997' and sex = 'F' and admission = '-'
sql placeholder
select count ( patient.id ) from patient inner join examination on patient.id = examination.id where strftime ( '%Y' , examination.thrombosis ) = '1997' and patient.sex = 'F'
select max ( strftime ( '%Y' , patient.birthday ) ) - min ( strftime ( '%Y' , patient.birthday ) ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.tg > 200
select examination.symptoms , examination.diagnosis from patient inner join examination on patient.id = examination.id order by patient.birthday asc limit 1
select cast ( count ( patient.id ) as real ) / 12 from patient inner join laboratory on patient.id = laboratory.id where strftime ( '%Y' , laboratory.date ) = '1998' and patient.sex = 'M'
select laboratory.date , strftime ( '%Y' , current_timestamp ) - strftime ( '%Y' , patient.birthday ) as age from patient inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SJS' order by patient.birthday desc limit 1
select cast ( sum ( case when patient.sex = 'M' then 1 else 0 end ) as real ) / sum ( case when patient.sex = 'F' then 1 else 0 end ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ua < '8.0'
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select cast ( sum ( case when strftime ( '%Y' , patient.birthday ) - strftime ( '%Y' , patient.birthday ) = '1999' then 1 else 0 end ) as real ) / count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.date >= '1991-10-01' and laboratory.date <= '1991-10-30'
sql placeholder
sql placeholder
sql placeholder
select sex from patient where diagnosis = 'AORTITIS' order by id asc limit 1
select laboratory.igm from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where patient.diagnosis = 'SLE' and patient.description = '1994-02-19' and laboratory.date = '1993-11-12' and laboratory.igg = 1
select case when patient.sex = 'M' then 'Man' else 'Woman' end as yorn from patient inner join laboratory on patient.id = laboratory.id where laboratory.date = '1992-06-12' and laboratory.got = 9 and laboratory.gpt = 9
select '1992' - strftime ( '%Y' , patient.birthday ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.date = '1991-10-21' and laboratory.ua = 8.4
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select patient.id from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.date between '1987-07-06' and '1996-01-31' and laboratory.igg > 30 and laboratory.alb < 4
select id from patient where strftime ( '%Y' , birthday ) = '1964' and sex = 'F' and admission = '+'
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select patient.sex from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where examination.diagnosis = 'PSS' and laboratory.crp > 2 and laboratory.cre = 1 and laboratory.ldh = 123
select avg ( laboratory.alb ) from patient inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SLE' and patient.sex = 'F' and laboratory.plt > 400
select examination.symptoms from patient inner join examination on patient.id = examination.id where patient.diagnosis = 'SLE' group by examination.symptoms order by count ( examination.symptoms ) desc limit 1
select description , diagnosis from patient where id = 48473 order by description desc limit 1
select count ( id ) from patient where diagnosis = 'APS' and sex = 'F'
select count ( distinct patient.id ) from patient inner join laboratory on patient.id = laboratory.id where strftime ( '%Y' , laboratory.date ) = '1997' and laboratory.tp > 6 and laboratory.tp < 8.5
select cast ( sum ( case when examination.diagnosis like '%ITP%' then 1 else 0 end ) as real ) * 100 / count ( examination.id ) from examination inner join patient on examination.id = patient.id where examination.symptoms = 'thrombocytopenia' and examination.diagnosis = 'SLE'
select cast ( sum ( case when patient.sex = 'F' then 1 else 0 end ) as real ) * 100 / count ( patient.sex ) from patient inner join examination on patient.id = examination.id where strftime ( '%Y' , patient.birthday ) = '1980' and patient.diagnosis = 'RA'
sql placeholder
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'F' and laboratory.wbc < 3.5
sql placeholder
select case when laboratory.ua > 8.0 and patient.sex = 'M' then 'Yes' else 'No' end from patient inner join laboratory on patient.id = laboratory.id where patient.id = 57266
select laboratory.date from patient inner join laboratory on patient.id = laboratory.id where patient.id = 48473 and laboratory.got >= 60
select distinct patient.sex , patient.birthday from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where strftime ( '%Y' , laboratory.date ) = '1994' and laboratory.got < 60
select patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.gpt >= 60 and patient.sex = 'M'
select patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.gpt > 60 order by patient.birthday desc
select cast ( sum ( laboratory.ldh ) as real ) / count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ldh < 500
select patient.id , strftime ( '%Y' , current_timestamp ) - strftime ( '%Y' , patient.birthday ) as age from patient inner join laboratory on patient.id = laboratory.id where laboratory.ldh between 600 and 800
select case when patient.admission = '+' then 'Inpatient' else 'Outpatient' end from patient inner join laboratory on patient.id = laboratory.id where laboratory.alp < 300
select patient.id , laboratory.alp from patient inner join laboratory on patient.id = laboratory.id where patient.birthday = '1982-04-01' and laboratory.alp < 300
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.tp < 6.0
select laboratory.tp - laboratory.tp from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'F' and laboratory.tp > 8.5
select distinct patient.id , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.alb < 3.5 or laboratory.alb >= 5.5
select distinct case when laboratory.alb >= 3.5 and laboratory.alb <= 5.5 then 'Yes' when laboratory.alb < 5.5 then 'No' end from patient inner join laboratory on patient.id = laboratory.id where strftime ( '%Y' , patient.birthday ) = '1982'
select cast ( sum ( case when patient.sex = 'F' and laboratory.ua > 8.0 then 1 else 0 end ) as real ) * 100 / count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ua > 6.5 and patient.sex = 'M'
select cast ( sum ( laboratory.ua ) as real ) / count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ua < 8.0 and patient.sex = 'M' or patient.sex = 'F'
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.un = 29
sql placeholder
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.cre >= 1.5
select case when count ( case when patient.sex = 'M' then 1 else null end ) > count ( case when patient.sex = 'F' then 1 else null end ) then 'True' else 'FALSE' end from patient inner join laboratory on patient.id = laboratory.id where laboratory.cre >= 1.5
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select distinct patient.id , patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.tg > 100
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.tg > 200 and strftime ( '%Y' , 'now' ) - strftime ( '%Y' , patient.birthday ) > 50
select distinct patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.cpk < 250 and patient.admission = '-'
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where strftime ( '%Y' , patient.birthday ) between '1936' and '1956' and patient.sex = 'M' and laboratory.cpk >= 250
sql placeholder
select patient.id , laboratory.glu from patient inner join laboratory on patient.id = laboratory.id where strftime ( '%Y' , patient.description ) >= '1991' and laboratory.glu < 180
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.wbc between 3.5 and 9 order by patient.sex asc
select distinct patient.diagnosis , patient.id , strftime ( '%Y' , current_timestamp ) - strftime ( '%Y' , patient.birthday ) as age from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.rbc < 3.5
select case when patient.admission = '+' then 'YES' when patient.admission = 'NO' then 'NO' end from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'F' and strftime ( '%Y' , current_timestamp ) - strftime ( '%Y' , patient.birthday ) >= 50 and laboratory.rbc < 3.5 or laboratory.rbc >= 6.0
select distinct patient.id , patient.sex from patient inner join laboratory on patient.id = laboratory.id where laboratory.hgb < 10 and patient.admission = '-'
select patient.id , patient.sex from patient inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SLE' and laboratory.hgb > 10 and laboratory.hgb <= 17 order by patient.birthday asc limit 1
select patient.id , strftime ( '%Y' , current_timestamp ) - strftime ( '%Y' , patient.birthday ) as age from patient inner join laboratory on patient.id = laboratory.id where laboratory.hct >= 52 group by patient.id having count ( laboratory.id ) > 2
select avg ( hct ) from laboratory where date like '1991%' and hct < 29
select sum ( case when laboratory.plt < 100 then 1 else 0 end ) - sum ( case when laboratory.plt > 400 then 1 else 0 end ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.plt < 100
select distinct patient.id from patient inner join laboratory on patient.id = laboratory.id where strftime ( '%Y' , 'now' ) - strftime ( '%Y' , patient.birthday ) < 50 and laboratory.plt between 100 and 400
select cast ( sum ( case when patient.sex = 'F' then 1 else 0 end ) as real ) * 100 / count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where strftime ( '%Y' , laboratory.date ) - strftime ( '%Y' , patient.birthday ) > 55
sql placeholder
sql placeholder
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.thrombosis = 3 and laboratory.aptt > 45
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.wbc between 3.5 and 9.0 and laboratory.fg between 150 and 450
select count ( distinct patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.birthday > '1980-01-01' and laboratory.fg between 150 and 450
sql placeholder
sql placeholder
select count ( distinct examination.id ) from laboratory inner join examination on laboratory.id = examination.id where examination.symptoms = 'abortion' and laboratory.igg < 900
select count ( distinct examination.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.igg between 900 and 2000 and examination.symptoms is not null
select distinct patient.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.iga between 80 and 500 order by laboratory.iga desc limit 1
sql placeholder
select patient.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.igm < 40 and 400 group by patient.diagnosis order by count ( patient.diagnosis ) desc limit 1
select count ( distinct patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.crp like '+' or laboratory.crp like '-' or laboratory.crp < 1.0
select count ( distinct patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.crp >= 1.0 and strftime ( '%Y' , laboratory.date ) - strftime ( '%Y' , patient.birthday ) < 18
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.ra in ( '-' , '+-' ) and examination.kct = '+' and patient.diagnosis = 'RA'
select distinct patient.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where strftime ( '%Y' , patient.birthday ) > '1995' and laboratory.ra in ( '-' , '+-' )
select patient.id from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where examination.diagnosis = 'Normal' and strftime ( '%Y' , laboratory.date ) - strftime ( '%Y' , patient.birthday ) > 60
select count ( patient.id ) from patient inner join examination on patient.id = examination.id where examination.thrombosis = 0 and examination.diagnosis = 'Normal' and patient.sex = 'M'
sql placeholder
sql placeholder
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'APS' and laboratory.c4 > 10
select count ( distinct patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.rnp = '-' or laboratory.ra = '+-' and patient.admission = '+'
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.rnp is not null and laboratory.ra like '+-' order by patient.birthday desc limit 1
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where examination.thrombosis = '1' and laboratory.sm in ( '-' , '+-' ) and laboratory.sm = 'negative'
select patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.sm in ( '-' , '+-' ) order by patient.birthday desc limit 3
sql placeholder
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.sc170 in ( '-' , '+-' ) and patient.sex = 'M' and examination.symptoms = 'vertigo'
sql placeholder
sql placeholder
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.ssb in ( '-' , '+-' ) and patient.diagnosis = 'SLE'
select count ( distinct examination.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.ssb in ( '-' , '+-' ) and examination.symptoms is not null
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.centromea in ( '-' , '+-' ) and laboratory.ssb in ( '-' , '+-' )
select distinct patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.dna >= 8
select count ( distinct patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.dna < 8 and patient.description is null
sql placeholder
select cast ( sum ( case when patient.diagnosis = 'SLE' then 1 else 0 end ) as real ) * 100 / count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.got >= 60
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.got < 60 and patient.sex = 'M'
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.got >= 60 order by patient.birthday desc limit 1
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.gpt < 60 order by laboratory.gpt desc limit 3
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.got < 60 and patient.sex = 'M'
sql placeholder
select max ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ldh > 500
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.alp >= 300 and patient.admission = '+'
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.admission = '-' and laboratory.alp < 300
select distinct patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.tp < 6.0
select count ( distinct patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SJS' and laboratory.tp between 6 and 8
select distinct laboratory.date from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.alb between 3.5 and 5.5 order by laboratory.alb desc limit 1
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.alb between 3.5 and 5.5 and laboratory.tp between 6.0 and 8.5
select distinct laboratory.igg , laboratory.iga from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where patient.sex = 'F' and laboratory.ua > 6.50 order by laboratory.ua desc limit 1
select max ( examination.ana ) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.cre < 1.5 and examination.diagnosis = 'Normal'
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.tg < 200 and examination.symptoms is not null
select distinct patient.diagnosis from patient inner join laboratory on patient.id = laboratory.id where laboratory.tg < 200 order by laboratory.tg desc limit 1
select patient.id from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.thrombosis = 0 and laboratory.cpk < 250
select count ( distinct examination.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.cpk < 250 and examination.kct = '+' or examination.rvvt = '+' or examination.lac = '+'
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.glu > 180 order by patient.birthday asc limit 1
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.glu < 180 and examination.thrombosis = 0
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.admission = '+' and laboratory.wbc between 3.5 and 9.0
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SLE' and laboratory.wbc between 3.5 and 9
select patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.rbc < 3.5 or laboratory.rbc >= 6.0 and patient.admission = '-'
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.plt between 100 and 400
select case when laboratory.plt > 100 and laboratory.plt < 400 then 'Normal' else 'MCTD' end from patient inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'MCTD'
select avg ( laboratory.pt ) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.pt < 14
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.thrombosis = 1 or 2 and laboratory.pt < 14
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Angela' and member.last_name = 'Sanders'
select count ( member.member_id ) from member inner join major on member.link_to_major = major.major_id where major.college = 'College of Engineering'
select member.first_name , member.last_name from major inner join member on major.major_id = member.link_to_major where major.department = 'Art and Design Department'
select count ( member.member_id ) from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where event.event_name = 'Women''s Soccer'
select member.phone from member inner join attendance on member.member_id = attendance.link_to_member inner join event on attendance.link_to_event = event.event_id where event.event_name = 'Women''s Soccer'
select count ( member.member_id ) from member inner join attendance on member.member_id = attendance.link_to_member inner join event on attendance.link_to_event = event.event_id where event.event_name = 'Women''s Soccer' and member.t_shirt_size = 'Medium'
select event.event_name from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event group by event.event_name order by count ( attendance.link_to_event ) desc limit 1
select major.college from major inner join member on major.major_id = member.link_to_major where member.position = 'Vice President'
select event.event_name from member inner join attendance on member.member_id = attendance.link_to_member inner join event on attendance.link_to_event = event.event_id where member.first_name = 'Maya' and member.last_name = 'Mclean'
select count ( attendance.link_to_event ) from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where member.first_name = 'Sacha' and member.last_name = 'Harrison' and strftime ( '%Y' , event.event_date ) = '2019'
select count ( * ) from ( select event.event_id from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where event.type = 'Meeting' group by event.event_id having count ( event.event_id ) > 10 ) t
select event.event_name from event inner join attendance on event.event_id = attendance.link_to_event group by event.event_name having count ( event.event_id ) > 20
select cast ( count ( attendance.link_to_event ) as real ) / count ( distinct event.event_name ) from event inner join attendance on event.event_id = attendance.link_to_event where strftime ( '%Y' , event.event_date ) = '2020' and event.type = 'Meeting'
select expense_description from expense where cost = ( select max ( cost ) from expense )
select count ( member.member_id ) from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Environmental Engineering'
select member.first_name , member.last_name from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where event.event_name = 'Laugh Out Loud' and member.position = 'Member'
select member.last_name from major inner join member on major.major_id = member.link_to_major where major.major_name = 'Law and Constitutional Studies'
select zip_code.county from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Sherri' and member.last_name = 'Ramsey'
select major.college from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Tyler' and member.last_name = 'Hwitt'
select income.amount from member inner join income on member.member_id = income.link_to_member where member.position = 'Vice President'
select budget.spent from budget inner join event on budget.link_to_event = event.event_id where event.event_name = 'September Meeting' and budget.category = 'Food'
select zip_code.city , zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code where member.position = 'President'
select member.first_name , member.last_name from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.state = 'Illinois'
select sum ( budget.spent ) from event inner join budget on event.event_id = budget.link_to_event inner join expense on expense.link_to_budget = budget.budget_id where event.event_name = 'September Meeting' and budget.category = 'Advertisement'
select major.department from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Pierce' and member.last_name = 'Guidi'
select sum ( budget.amount ) from event inner join budget on event.event_id = budget.link_to_event where event.event_name = 'October Speaker'
select expense.approved from expense inner join event on expense.expense_id = event.event_id where event.event_name = 'October Meeting' and event.event_date = '2019-10-08'
select sum ( expense.cost ) / 2 from member inner join expense on member.member_id = expense.link_to_member where member.first_name = 'Elijah' and member.last_name = 'Allen' and strftime ( '%m' , expense.expense_date ) = '9' and strftime ( '%Y' , expense.expense_date ) = '10'
select sum ( case when strftime ( '%Y' , event.event_date ) = '2019' then budget.amount else 0 end ) - sum ( case when strftime ( '%Y' , event.event_date ) = '2020' then budget.amount else 0 end ) from budget inner join event on budget.link_to_event = event.event_id
select location from event where event_name = 'Spring Budget Review'
select expense.cost from expense inner join event on expense.expense_date = event.event_id where event.event_date like '2019-09-04%' and expense.expense_description like 'Posters'
select remaining from budget where category = 'Food' order by amount desc limit 1
select notes from income where date_received = '2019-09-14' and source = 'Fundraising'
select count ( major_id ) from major where college = 'College of Humanities and Social Sciences'
select phone from member where first_name = 'Carlo' and last_name = 'Jacobs'
select zip_code.county from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Adela' and member.last_name = 'O''Gallagher'
select count ( budget.budget_id ) from budget inner join event on budget.link_to_event = event.event_id where event.event_name = 'November Meeting' and budget.remaining < 0
select sum ( budget.amount ) from budget inner join event on budget.link_to_event = event.event_id where event.event_name = 'September Speaker'
select distinct event.status from expense inner join event on expense.expense_id = event.event_id where expense.expense_description = 'Post Cards , Posters' and expense.expense_date = '2019-8-20'
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Brent' and member.last_name = 'Thomason'
select count ( member.member_id ) from major inner join member on major.major_id = member.link_to_major where major.major_name = 'Human Development and Family Studies' and member.t_shirt_size = 'Large'
select zip_code.type from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Christof' and member.last_name = 'Nielson'
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.position = 'Vice President'
select zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Sacha' and member.last_name = 'Harrison'
select major.department from major inner join member on major.major_id = member.link_to_major where member.position = 'President'
select income.date_received from member inner join income on member.member_id = income.link_to_member where member.first_name = 'Connor' and member.last_name = 'Hilton' and income.source = 'Dues'
select member.first_name , member.last_name from member inner join income on member.member_id = income.link_to_member where income.source = 'Dues' order by income.date_received asc limit 1
select cast ( sum ( case when event.event_name = 'Yearly Kickoff' then budget.amount else 0 end ) as real ) / sum ( case when event.event_name = 'October Meeting' then budget.amount else 0 end ) from budget inner join event on budget.link_to_event = event.event_id
select cast ( sum ( case when budget.category = 'Parking' then budget.amount else 0 end ) as real ) * 100 / sum ( budget.amount ) from budget inner join event on budget.link_to_event = event.event_id where event.event_name = 'November Speaker'
select sum ( cost ) from expense where expense_description = 'Pizza'
select count ( city ) from zip_code where county = 'Orange County' and state = 'Virginia'
select department from major where college = 'College of Humanities and Social Sciences'
select zip_code.city , zip_code.county , zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Amy' and member.last_name = 'Firth'
select expense.expense_description from expense inner join budget on expense.link_to_budget = budget.budget_id order by budget.remaining asc limit 1
select member.first_name , member.last_name from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where event.event_name = 'October Meeting'
select major.college from member inner join major on member.link_to_major = major.major_id group by major.college order by count ( major.college ) desc limit 1
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.phone = '809-555-3360'
select event.event_name from budget inner join event on budget.link_to_event = event.event_id order by budget.amount desc limit 1
select expense.expense_description from expense inner join member on expense.link_to_member = member.member_id where member.position = 'Vice President'
select count ( member.member_id ) from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where event.event_name = 'Women''s Soccer'
select income.date_received from member inner join income on member.member_id = income.link_to_member where member.first_name = 'Casey' and member.last_name = 'Mason'
select count ( member.zip ) from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.state = 'Maryland'
select count ( attendance.link_to_event ) from member inner join attendance on member.member_id = attendance.link_to_member where member.phone = '954-555-6240'
select member.first_name , member.last_name from major inner join member on major.major_id = member.link_to_major where major.department = 'School of Applied Sciences , Technology and Education'
select event.event_name from budget inner join event on budget.link_to_event = event.event_id where event.status = 'Closed' order by budget.spent / budget.amount desc limit 1
select count ( member_id ) from member where position = 'President'
select budget.spent from event inner join budget on event.event_id = budget.link_to_event order by budget.spent desc limit 1
select count ( event_id ) from event where strftime ( '%Y' , event_date ) = '2020' and type = 'Meeting'
select sum ( spent ) from budget where category = 'Food'
select member.first_name , member.last_name from member inner join attendance on member.member_id = attendance.link_to_member group by member.first_name , member.last_name having count ( attendance.link_to_event ) > 7
select member.first_name , member.last_name from major inner join member on major.major_id = member.link_to_major inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where event.event_name = 'Community Theater' and major.major_name = 'Interior Design'
select member.first_name , member.last_name from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.city = 'Georgetown' and zip_code.state = 'South Carolina'
select sum ( income.amount ) from member inner join income on member.member_id = income.link_to_member where member.first_name = 'Grant' and member.last_name = 'Gilmour'
select member.first_name , member.last_name from member inner join income on member.member_id = income.link_to_member where income.amount > 40
select sum ( expense.cost ) from event inner join expense on event.event_id = expense.expense_id where event.event_name = 'Baseball game'
select member.first_name , member.last_name from member inner join budget on member.member_id = budget.link_to_event inner join event on event.event_id = budget.link_to_event where event.event_name = 'Yearly Kickoff'
select member.first_name , member.last_name , income.source from member inner join income on member.member_id = income.link_to_member order by income.amount desc limit 1
select event.event_name from expense inner join event on event.event_id = expense.expense_id order by expense.cost asc limit 1
select cast ( sum ( case when event.event_name = 'Yearly Kickoff' then expense.cost else 0 end ) as real ) * 100 / sum ( expense.cost ) from event inner join expense on event.event_id = expense.expense_id
select cast ( sum ( case when major.major_name = 'Finance' then 1 else 0 end ) as real ) / sum ( case when major.major_name = 'Physics' then 1 else 0 end ) from major inner join member on major.major_id = member.link_to_major
select source , amount from income where date_received >= '2019-09-01' and date_received < '2019-09-30' order by amount desc limit 1
select first_name , last_name , email from member where position = 'Secretary'
select count ( member.member_id ) from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Physics Teaching'
select count ( member.member_id ) from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where strftime ( '%Y' , event.event_date ) = '2019' and event.event_name = 'Community Theater'
select count ( attendance.link_to_event ) , major.major_name from attendance inner join member on attendance.link_to_member = member.member_id inner join major on major.major_id = member.link_to_major where member.first_name = 'Luisa' and member.last_name = 'Guidi'
select avg ( spent ) from budget where category = 'Food' and event_status = 'Closed'
select event.event_name from budget inner join event on budget.link_to_event = event.event_id where budget.category = 'Advertisement' order by budget.spent desc limit 1
select attendance.link_to_member from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where member.first_name = 'Maya' and member.last_name = 'Mclean' and event.event_name = 'Women''s Soccer'
select cast ( sum ( case when type = 'Community Service' then 1 else 0 end ) as real ) * 100 / count ( event_id ) from event where event_date like '2019%'
select expense.cost from event inner join expense on event.event_id = expense.expense_id where event.event_name = 'September Speaker' and expense.expense_description = 'Posters'
select t_shirt_size from member group by t_shirt_size order by count ( t_shirt_size ) desc limit 1
select event.event_name from budget inner join event on budget.event_status = event.event_id inner join expense on event.event_id = expense.link_to_budget where event.status = 'Closed' order by budget.remaining asc limit 1
select expense.expense_description , sum ( expense.cost ) from event inner join expense on event.event_id = expense.expense_id where event.event_name = 'October Meeting'
select budget.amount , budget.category from budget inner join event on budget.link_to_event = event.event_id where event.event_name = 'April Speaker' order by budget.amount asc
select budget_id from budget where category = 'Food' order by amount desc limit 1
select budget_id from budget where category = 'Advertisement' order by amount desc limit 3
select sum ( cost ) from expense where expense_description = 'Parking'
select sum ( cost ) from expense where expense_date = '2019-08-20'
select member.first_name , member.last_name , expense.cost from member inner join expense on member.member_id = expense.link_to_member where member.member_id = 'rec4BLdZHS2Blfp4v'
select expense.expense_description from expense inner join member on expense.link_to_member = member.member_id where member.first_name = 'Sacha' and member.last_name = 'Harrison'
select expense.expense_description from member inner join expense on member.member_id = expense.link_to_member where member.t_shirt_size = 'X-Large'
select distinct member.zip from member inner join expense on member.member_id = expense.link_to_member where expense.cost < 50
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Phillip' and member.last_name = 'Cullen'
select member.position from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Business'
select count ( member.link_to_major ) from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Business' and member.t_shirt_size = 'Medium'
select distinct event.type from budget inner join event on budget.budget_id = event.event_id where budget.remaining > 30
select distinct budget.category from budget inner join event on budget.link_to_event = event.event_id where event.location = 'MU 215'
select budget.category from budget inner join event on budget.link_to_event = event.event_id where event.event_date = '2020-03-24T12:00:00'
select major.major_name from major inner join member on major.major_id = member.link_to_major where member.position = 'Vice President'
select cast ( sum ( case when major.major_name = 'Mathematics' then 1 else 0 end ) as real ) * 100 / count ( member.member_id ) from member inner join major on member.link_to_major = major.major_id
select distinct budget.category from budget inner join event on budget.link_to_event = event.event_id where event.location = 'MU 215'
select count ( income_id ) from income where amount = 50
select count ( member_id ) from member where t_shirt_size = 'X-Large' and position = 'Member'
select count ( major_id ) from major where college = 'College of Agriculture and Applied Sciences' and department = 'School of Applied Sciences , Technology and Education'
select member.last_name , major.department , major.college from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Environmental Engineering'
select distinct budget.category from budget inner join event on budget.budget_id = event.event_id where event.location = 'MU 215' and event.type = 'Guest Speaker' and budget.spent = 0
select zip_code.city , zip_code.state from major inner join member on major.major_id = member.link_to_major inner join zip_code on member.zip = zip_code.zip_code where major.department = 'Electrical and Computer Engineering Department' and member.position = 'Member'
select event.event_name from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where member.position = 'Vice President' and event.location = '900 E. Washington St.' and event.type = 'Social'
select member.last_name , member.position from expense inner join member on expense.link_to_member = member.member_id where expense.expense_description = 'Pizza' and expense.expense_date = '2019-09-10'
select member.last_name from member inner join attendance on member.member_id = attendance.link_to_member inner join event on event.event_id = attendance.link_to_event where event.event_name = 'Women''s Soccer' and member.position = 'Member'
select cast ( sum ( case when income.amount = 50 then 1 else 0 end ) as real ) * 100 / count ( member.member_id ) from member inner join income on member.member_id = income.link_to_member where member.t_shirt_size = 'Medium' and member.position = 'Member'
select distinct county from zip_code where type = 'PO Box'
select zip_code from zip_code where state = 'Puerto Rico' and county = 'San Juan Municipio' and type = 'PO Box'
select event_name from event where type like 'Game' and status = 'Closed' and event_date between '2019-03-15' and '2020-03-20'
select attendance.link_to_event from expense inner join attendance on expense.link_to_member = attendance.link_to_member inner join event on attendance.link_to_event = event.event_id where expense.cost > 50
select member.first_name , member.last_name , attendance.link_to_event from member inner join attendance on member.member_id = attendance.link_to_member inner join expense on attendance.link_to_member = expense.link_to_member where expense.approved = 'true' and expense.expense_date between '2019-01-10' and '2019-11-19'
select major.college from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Katy' and member.link_to_major = 'rec1N0upiVLy5esTO'
select member.phone from major inner join member on major.major_id = member.link_to_major where major.major_name = 'Business' and major.college = 'College of Agriculture and Applied Sciences'
select member.email from expense inner join member on expense.link_to_member = member.member_id where expense.cost > 20 and expense.expense_date between '2019-09-10' and '2019-11-19'
select count ( member.member_id ) from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Education' and member.position = 'Member' and major.college = 'College of Education & Human Services'
select cast ( sum ( case when budget.remaining < 0 then 1 else 0 end ) as real ) * 100 / count ( event.event_id ) from budget inner join event on budget.link_to_event = event.event_id
select event_id , location , status from event where event_date between '2019-11-01' and '2020-03-31'
select expense_description from expense group by expense_description having sum ( cost ) / count ( expense_id ) > 50
select first_name , last_name from member where t_shirt_size = 'X-Large'
select cast ( count ( case when type = 'PO Box' then zip_code.zip_code else null end ) as real ) * 100 / count ( zip_code.zip_code ) from zip_code
select event.event_name , event.location from budget inner join event on budget.link_to_event = event.event_id where budget.remaining > 0
select event.event_name , event.event_date from expense inner join event on expense.expense_date = event.event_date where expense.expense_description = 'Pizza' and expense.cost > 50 and expense.cost < 100
select member.first_name , member.last_name , major.major_name from member inner join expense on member.member_id = expense.link_to_member inner join major on member.link_to_major = major.major_id where expense.cost > 100
select zip_code.city , zip_code.county from income inner join zip_code on income.income_id = zip_code.zip_code where income.income_id > 40
select t.first_name , t.last_name from ( select member.first_name , member.last_name , sum ( expense.cost ) as num from member inner join expense on member.member_id = expense.link_to_member group by member.first_name , member.last_name ) as t order by t.num desc limit 1
select avg ( expense.cost ) from member inner join expense on member.member_id = expense.link_to_member where member.position != 'Member'
select event.event_name from budget inner join event on budget.link_to_event = event.event_id inner join expense on event.event_id = expense.link_to_budget where budget.category = 'Parking' and expense.cost < ( select avg ( expense.cost ) from expense inner join budget on expense.link_to_budget = budget.budget_id where budget.category = 'Parking' )
select cast ( sum ( expense.cost ) as real ) * 100 / count ( event.event_id ) from event inner join expense on event.event_id = expense.expense_id where event.type = 'Game'
select budget.budget_id from expense inner join budget on expense.link_to_budget = budget.budget_id where expense.expense_description = 'Water , chips , cookies' order by expense.cost desc limit 1
select member.first_name , member.last_name from member inner join expense on member.member_id = expense.link_to_member order by expense.cost desc limit 5
select member.first_name , member.last_name , member.phone from member inner join expense on member.member_id = expense.link_to_member group by member.first_name , member.last_name , member.phone having expense.cost > ( select avg ( cost ) from expense )
select cast ( sum ( case when zip_code.state = 'Maine' then 1 else 0 end ) as real ) * 100 / count ( member.position ) - cast ( sum ( case when zip_code.state = 'Vermont' then 1 else 0 end ) as real ) * 100 / count ( member.position ) from member inner join zip_code on member.zip = zip_code.zip_code
select major.major_name , major.department from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Garrett' and member.last_name = 'Gerke'
select member.first_name , member.last_name , expense.cost from member inner join expense on member.member_id = expense.link_to_member where expense.expense_description = 'Water , Veggie tray , supplies'
select member.last_name , member.phone from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Elementary Education'
select budget.category , budget.amount from budget inner join event on budget.budget_id = event.event_id where event.event_name = 'January Speaker'
select event.event_name from budget inner join event on budget.link_to_event = event.event_id where budget.category = 'Food'
select member.first_name , member.last_name , income.amount from member inner join income on member.member_id = income.link_to_member where income.date_received = '9/9/19'
select budget.category from expense inner join budget on expense.link_to_budget = budget.budget_id where expense.expense_description = 'Posters'
select member.first_name , member.last_name , major.college from major inner join member on major.major_id = member.link_to_major inner join zip_code on member.zip = zip_code.zip_code where member.position = 'Secretary'
select sum ( budget.spent ) , event.event_name from budget inner join event on budget.link_to_event = event.event_id where budget.category = 'Speaker Gifts'
select zip_code.city from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Garrett' and member.last_name = 'Girke'
select member.first_name , member.last_name , member.position from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.city = 'Lincolnton' and zip_code.state = 'North Carolina' and zip_code.zip_code = 28092
select count ( gasstationid ) from gasstations where country = 'CZE' and segment = 'Premium'
select cast ( sum ( case when customers.currency = 'EUR' then 1 else 0 end ) as real ) / sum ( case when customers.currency = 'CZK' then 1 else 0 end ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid
select customers.customerid from customers inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.consumption = 0 and customers.segment = 'LAM' and yearmonth.date between '2012-01-01' and '2012-12-31' order by yearmonth.consumption asc limit 1
select avg ( yearmonth.consumption ) / 12 from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'SME' and yearmonth.date between '2013-01' and '2013-12'
select customers.customerid from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'CZK' and yearmonth.date between 201101 and 201112 order by yearmonth.consumption desc limit 1
select count ( customers.customerid ) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.consumption < 30000 and customers.segment = 'KAM' and yearmonth.date between '2012-01-01' and '2012-12-31'
select sum ( case when customers.currency = 'CZK' then yearmonth.consumption else 0 end ) - sum ( case when customers.currency = 'EUR' then yearmonth.consumption else 0 end ) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.date between '2012-01' and '2012-12'
select yearmonth.customerid from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'EUR' order by yearmonth.consumption desc limit 1
select customers.segment from customers inner join yearmonth on customers.customerid = yearmonth.customerid order by yearmonth.consumption asc limit 1
select strftime ( '%Y' , yearmonth.consumption ) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'CZK' group by strftime ( '%Y' , yearmonth.consumption ) order by sum ( yearmonth.consumption ) desc limit 4
select yearmonth.consumption from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'SME' and strftime ( '%Y' , yearmonth.date ) = '2013' order by yearmonth.consumption desc limit 1
select sum ( yearmonth.consumption ) / count ( customers.customerid ) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'CZK' and customers.segment in ( 'SME' , 'LAM' , 'KAM' ) and yearmonth.date in ( '2013' , '2013' ) group by customers.customerid order by sum ( yearmonth.consumption ) asc limit 1
select customers.segment from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'EUR' and customers.segment = 'SME' or customers.segment = 'LAM' or customers.segment = 'KAM' order by yearmonth.consumption - yearmonth.consumption desc limit 1
select sum ( consumption ) from yearmonth where customerid = 6 and date between '201308' and '201311'
select sum ( case when country = 'Czech Rep.' then 1 else 0 end ) - sum ( case when country = 'Slovakia' then 1 else 0 end ) from gasstations
select sum ( consumption ) from yearmonth where date like '2013-04%' and customerid = ( select customerid from customers where date like '2013-04%' )
select sum ( case when customers.currency = 'Czech Koruna' then 1 else 0 end ) , sum ( case when customers.currency = 'Euro' then 1 else 0 end ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid
select customers.customerid from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'Euro' and customers.segment = 'LAM' and yearmonth.date = '2013-10' order by yearmonth.consumption desc limit 1
select customers.customerid , yearmonth.consumption from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'KAM' group by customers.customerid , yearmonth.consumption order by sum ( yearmonth.consumption ) desc limit 1
select sum ( yearmonth.consumption ) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'KAM' and yearmonth.date = '2013-05'
select cast ( sum ( case when yearmonth.consumption > 46.73 then 1 else 0 end ) as real ) * 100 / count ( customers.customerid ) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'LAM'
select country from gasstations where segment = 'Value for money' group by country order by count ( gasstationid ) desc limit 1
select cast ( sum ( case when customers.currency = 'EUR' then 1 else 0 end ) as real ) * 100 / count ( customers.customerid ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where customers.segment = 'KAM'
select cast ( sum ( consumption ) as real ) * 100 / count ( customerid ) from yearmonth where date like '2012-02%'
select cast ( sum ( case when segment = 'Premium' then 1 else 0 end ) as real ) * 100 / count ( gasstationid ) from gasstations
select customerid from yearmonth where date like '2013-09%' order by consumption desc limit 1
select customers.segment from customers inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.date like '2013-09%' order by yearmonth.consumption asc limit 1
select customers.customerid from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'SME' and yearmonth.date = '201206' order by yearmonth.consumption asc limit 1
select consumption from yearmonth where date like '%2012%' order by consumption desc limit 1
select yearmonth.consumption from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'eur' order by yearmonth.consumption desc limit 1
sql placeholder
select distinct gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.date like '2013-06%'
sql placeholder
select distinct products.description from products inner join transactions_1k on products.productid = transactions_1k.productid where transactions_1k.transactionid = 'ECB'
select sum ( price ) / count ( transactionid ) from transactions_1k where date like '2012-01%'
select count ( customers.customerid ) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'eur' and yearmonth.consumption > 1000
select distinct products.description from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid inner join products on transactions_1k.productid = products.productid where gasstations.country = 'CZE'
select distinct transactions_1k.time from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.chainid = 11
select count ( transactions_1k.transactionid ) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and transactions_1k.price > 1000
select count ( transactions_1k.transactionid ) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and transactions_1k.date > '2012-01-01'
select sum ( transactions_1k.price ) / count ( transactions_1k.transactionid ) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE'
select sum ( transactions_1k.price ) / count ( transactions_1k.customerid ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where customers.currency = 'eur'
select customers.customerid from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.date = '2012-08-25' order by transactions_1k.amount desc limit 1
select gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.date = '2012-08-25' order by transactions_1k.customerid asc limit 1
select distinct customers.currency from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.date = '2012-08-24' and transactions_1k.time = '16:25:00'
select distinct customers.segment from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.date = '2012-08-23' and transactions_1k.time = '21:20:00'
select count ( transactions_1k.transactionid ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where customers.currency = 'EUR' and strftime ( '%Y-%m-%d' , transactions_1k.time ) < '13:00:00'
select segment from customers where customerid = ( select customerid from yearmonth order by date asc limit 1 )
select gasstations.country from transactions_1k inner join gasstations on transactions_1k.gasstationid = gasstations.gasstationid where transactions_1k.time = '12:42:00' and transactions_1k.date = '2012-08-24'
select productid from transactions_1k where date = '2012-08-23' and time = '21:20:00'
select yearmonth.consumption , yearmonth.date , transactions_1k.amount from transactions_1k inner join yearmonth on transactions_1k.customerid = yearmonth.customerid where transactions_1k.amount = 124.05 and transactions_1k.date in ( '2012-08-24' , '2012-08-24' )
select count ( transactions_1k.transactionid ) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and transactions_1k.time between '8:00' and '9:00'
select distinct customers.currency from customers inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.date like '2013-06%'
select gasstations.country from transactions_1k inner join gasstations on transactions_1k.gasstationid = gasstations.gasstationid inner join customers on transactions_1k.customerid = customers.customerid where transactions_1k.cardid = 667467
select gasstations.country from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join gasstations on transactions_1k.gasstationid = gasstations.gasstationid where transactions_1k.amount = 548.4 and transactions_1k.date = '2012-08-24'
select cast ( sum ( case when customers.currency = 'EUR' then 1 else 0 end ) as real ) * 100 / count ( customers.customerid ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.date = '2012-08-25'
select cast ( ( yearmonth.consumption - yearmonth.consumption ) as real ) * 100 / yearmonth.consumption from yearmonth inner join transactions_1k on transactions_1k.customerid = yearmonth.customerid where transactions_1k.date = '2012-08-25' and transactions_1k.amount = 634.8
select gasstations.gasstationid from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid order by transactions_1k.amount desc limit 1
select cast ( sum ( case when segment = 'Premium' then 1 else 0 end ) as real ) * 100 / sum ( segment ) from gasstations where country = 'SVK'
select transactions_1k.amount from yearmonth inner join transactions_1k on yearmonth.customerid = transactions_1k.customerid where yearmonth.customerid = 38508 and strftime ( '%Y-%m' , yearmonth.date ) = '2012-01'
select distinct products.description from products inner join transactions_1k on products.productid = transactions_1k.productid order by transactions_1k.transactionid desc limit 5
select customers.customerid , transactions_1k.price / transactions_1k.amount , customers.currency from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid group by customers.customerid order by sum ( transactions_1k.price ) desc limit 1
select gasstations.country from transactions_1k inner join gasstations on transactions_1k.gasstationid = gasstations.gasstationid where transactions_1k.productid = 2 order by transactions_1k.price desc limit 1
select distinct yearmonth.customerid , yearmonth.consumption from transactions_1k inner join yearmonth on transactions_1k.customerid = yearmonth.customerid where transactions_1k.productid = 5 and transactions_1k.price > 29
