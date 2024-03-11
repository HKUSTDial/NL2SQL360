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
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select schools.charter from frpm inner join schools on frpm.cdscode = schools.cdscode inner join satscores on schools.cdscode = satscores.cds where satscores.avgscrread = 499 group by schools.charter
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
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select schools.streetabr , schools.city , schools.zip , schools.state from satscores inner join schools on satscores.cds = schools.cdscode where satscores.numge1500 = 'NumTsttakr' order by satscores.numge1500 asc limit 1
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
select schools.school , schools.closeddate from schools inner join frpm on schools.cdscode = frpm.cdscode group by schools.county order by count ( schools.county ) desc limit 1
sql placeholder
sql placeholder
select count ( satscores.avgscrread ) from satscores inner join schools on satscores.avgscrread = schools.cdscode where schools.mailcity = 'Lakeport' and satscores.numge1500
select count ( schools.cdscode ) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.mailcity = 'Fresno'
select mailzip , admfname1 , admfname2 from schools where admfname1 is not null
select cast ( sum ( iif ( schools.mailstate = 'CA' , 1 , 0 ) ) as real ) / sum ( iif ( schools.county = 'Humboldt' , 1 , 0 ) ) from frpm inner join schools on frpm.cdscode = schools.cdscode where schools.mailstate = 'CA'
sql placeholder
sql placeholder
select schools.phone , schools.ext , schools.school name from frpm inner join schools on frpm.cdscode = schools.cdscode where schools.zip = 95203-3704
select website from schools where admfname1 in ( 'Mike Larson' , 'Dante Alvarez' )
select schools.website from frpm inner join schools on frpm.cdscode = schools.cdscode where schools.charter = 1 and schools.virtual = 'P'
select count ( schools.cdscode ) from frpm inner join schools on frpm.cdscode = schools.cdscode where schools.city = 'Hickman' and schools.charter = 1 and schools.district = 'Elementary School District'
sql placeholder
select schools.admfname1 , schools.admlname1 , schools.city from frpm inner join schools on frpm.cdscode = schools.cdscode where schools.charter = 1
sql placeholder
select cast ( sum ( iif ( schools.fundingtype = 'Locally funded' , 1 , 0 ) ) as real ) * 100 / count ( schools.cdscode ) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.county = 'Santa Clara'
select count ( schools.school ) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.county = 'Stanislaus' and schools.fundingtype = 'Directly funded'
select sum ( schools.district ) from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.city = 'San Francisco' and strftime ( '%Y' , schools.closeddate ) = '1989'
sql placeholder
sql placeholder
sql placeholder
select frpm.cdscode from frpm inner join schools on frpm.cdscode = schools.cdscode where schools.city = 'Fresno' and schools.magnet = 0
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select schools.gsserved from frpm inner join schools on frpm.cdscode = schools.cdscode where schools.city = 'Adelanto' group by schools.gsserved order by count ( schools.gsserved ) desc limit 1
select schools.county from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.county in ( 'San Diego' , 'Santa Barbara' ) group by schools.county order by count ( schools.county ) desc limit 1
select schools.school type , schools.school name , schools.latitude from frpm inner join schools on frpm.cdscode = schools.cdscode order by schools.latitude desc limit 1
sql placeholder
select schools.gsoffered from schools inner join frpm on schools.cdscode = frpm.cdscode where schools.longitude = ( select max ( longitude ) from schools )
sql placeholder
select schools.admfname1 , schools.district from frpm inner join schools on frpm.cdscode = schools.cdscode group by schools.district order by count ( schools.district ) desc limit 2
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select count ( account.account_id ) from account inner join district on account.district_id = district.district_id where district.a3 = 'east Bohemia' and account.frequency = 'POPLATEK PO OBRATU'
select count ( account.account_id ) from account inner join loan on account.account_id = loan.account_id inner join district on district.district_id = account.district_id where district.a3 = 'Pragma'
sql placeholder
select count ( * ) from client inner join district on client.district_id = district.district_id where client.gender = 'F' and district.a11 > 6000 and district.a9 < 10000
select count ( client.client_id ) from client inner join district on client.district_id = district.district_id where district.a3 = 'north Bohemia' and client.gender = 'M' and district.a11 = 'average salary'
select count ( client.client_id ) , sum ( case when client.gender = 'F' then 1 else 0 end ) - sum ( case when client.birth_date > client.birth_date then 1 else 0 end ) as gap from client inner join account on client.client_id = account.account_id where client.gender = 'F'
select count ( account.account_id ) from client inner join disp on client.client_id = disp.client_id inner join account on account.account_id = disp.account_id where client.birth_date < client.birth_date order by client.gender desc limit 1
select count ( client.client_id ) from client inner join disp on client.client_id = disp.client_id inner join account on disp.account_id = account.account_id where disp.type = 'OWNER' and account.frequency = 'POPLATEK TYDNE'
select client.client_id from disp inner join client on disp.client_id = client.client_id where disp.type = 'DISPONENT'
select account.account_id , account.date from loan inner join account on loan.account_id = account.account_id where loan.date = 1997 order by loan.amount asc limit 1
select loan.amount from loan inner join account on loan.account_id = account.account_id where loan.duration > 12 group by loan.amount order by sum ( loan.amount ) desc limit 1
select count ( client.client_id ) from client inner join district on client.district_id = district.district_id inner join account on district.district_id = account.district_id where client.gender = 'F' and strftime ( '%Y' , client.birth_date ) < '1950'
select account.account_id from account inner join trans on account.account_id = trans.account_id where trans.date = '1995' order by trans.date asc limit 1
select distinct trans.account_id from account inner join trans on account.account_id = trans.account_id where trans.amount > 300000 and strftime ( '%Y' , trans.date ) >= '1997'
select client.client_id from card inner join disp on card.disp_id = disp.disp_id inner join client on disp.client_id = client.client_id where card.issued = '1994-03-03'
select trans.date from account inner join trans on account.account_id = trans.account_id where trans.amount = 840 and trans.date = '1998-10-14'
select account.account_id from loan inner join account on loan.account_id = account.account_id inner join district on district.district_id = account.district_id where loan.date = '1994-08-25'
select trans.amount from card inner join disp on card.disp_id = disp.disp_id inner join client on disp.client_id = client.client_id inner join trans on client.client_id = trans.trans_id where card.issued = '1996-10-21' order by trans.amount desc limit 1
sql placeholder
select trans.amount from loan inner join trans on loan.account_id = trans.account_id inner join client on client.client_id = loan.account_id inner join account on account.account_id = loan.account_id group by trans.amount order by count ( loan.account_id ) desc limit 1
select count ( client.gender ) from client inner join district on client.district_id = district.district_id inner join account on district.district_id = account.district_id where district.a2 = 'Jesenik' and client.gender = 'F'
sql placeholder
select count ( account.account_id ) from account inner join district on account.district_id = district.district_id where district.a2 = 'Litomerice' and district.a3 = '1996'
select district.a2 from client inner join district on client.district_id = district.district_id inner join account on district.district_id = account.district_id where client.birth_date = '1976-1/29' and client.gender = 'F'
select client.birth_date from loan inner join client on loan.loan_id = client.client_id where loan.amount = 98832 and loan.date = '1996-01-03'
sql placeholder
select cast ( sum ( case when client.gender = 'M' then 1 else 0 end ) as real ) * 100 / count ( client.gender ) from district inner join client on district.district_id = client.district_id where district.a3 = 'south Bohemia'
sql placeholder
select cast ( sum ( amount ) as real ) * 100 / count ( loan_id ) from loan where status = 'A'
select cast ( sum ( iif ( loan.status = 'C' , 1 , 0 ) ) as real ) * 100 / count ( loan.amount ) from loan inner join account on loan.account_id = account.account_id where loan.amount < 100000
sql placeholder
select account.account_id , account.frequency from account inner join district on account.district_id = district.district_id where strftime ( '%Y' , account.date ) between '1995' and '2000' and district.a3 = 'east Bohemia'
select account.account_id , account.date from account inner join district on account.district_id = district.district_id where district.a2 = 'Prachatice'
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select cast ( sum ( case when district.a2 = 'Decin' then 1 else 0 end ) as real ) * 100 / count ( account.account_id ) from account inner join district on account.district_id = district.district_id where district.a2 = 'Decin'
select account_id from account where frequency like 'POPLATEK MESICNE'
select district.a2 , district.a9 from client inner join district on client.district_id = district.district_id inner join account on district.district_id = account.district_id where client.gender = 'F' order by client.gender desc limit 10
sql placeholder
select count ( disp.account_id ) from disp inner join client on disp.client_id = client.client_id inner join district on client.district_id = district.district_id inner join card on card.disp_id = card.disp_id where district.a3 = 'south Bohemia'
sql placeholder
select avg ( loan.amount ) from client inner join loan on client.client_id = loan.account_id where client.gender = 'M'
sql placeholder
select count ( account.account_id ) from account inner join district on account.district_id = district.district_id where district.a16 = 'number of committed crimes 1996' group by district.a9 , district.a15 , account.account_id order by count ( district.a16 ) desc limit 1
select count ( trans.account_id ) from account inner join trans on account.account_id = trans.account_id where trans.operation = 'VYBER KARTOU' and trans.balance < 0 and account.frequency = 'POPLATEK MESICNE'
select count ( loan.amount ) from loan inner join account on loan.account_id = account.account_id where loan.amount > 250000 and loan.date between '1995-01-01' and '1997-12-31' and account.frequency = 'POPLATEK MESICNE'
select count ( * ) from client inner join loan on client.district_id = loan.account_id inner join account on loan.account_id = account.account_id inner join trans on account.account_id = trans.account_id where trans.bank = 1 and loan.status = 'C' and client.birth_date = 'D'
select count ( client.gender ) from client inner join district on client.district_id = district.district_id inner join account on district.district_id = account.district_id where district.a15 = 1995 order by client.gender desc limit 1
select count ( card.disp_id ) from card inner join disp on card.disp_id = disp.disp_id where disp.type = 'disponent'
select count ( * ) from account where district_id = 'Pisek'
select district.district_id from account inner join trans on account.account_id = trans.account_id inner join district on district.district_id = account.district_id where strftime ( '%Y' , trans.date ) = '1997' and trans.amount > 10000
sql placeholder
sql placeholder
select avg ( trans.amount ) from account inner join trans on account.account_id = trans.account_id inner join card on card.card_id = card.card_id where trans.operation = 'VYBER KARTOU' and strftime ( '%Y' , account.date ) = '2021'
select trans.account_id from account inner join trans on account.account_id = trans.account_id where trans.operation = 'VYBER KARTOU' and strftime ( '%Y' , account.date ) = '1998'
select client.gender from card inner join disp on card.disp_id = disp.disp_id inner join client on disp.client_id = client.client_id inner join loan on loan.account_id = loan.account_id where card.card_id = 'Credit' and loan.loan_id = 'F'
select count ( client.gender ) from client inner join district on client.district_id = district.district_id inner join account on account.account_id = district.district_id where district.a3 = 'south Bohemia' and client.gender = 'F'
select disp.account_id from disp inner join client on disp.client_id = client.client_id inner join district on district.district_id = client.district_id where district.a2 = 'Tabor' and disp.type = 'OWNER'
select disp.type , district.a11 , district.a9 , loan.amount from loan inner join account on loan.account_id = account.account_id inner join district on district.district_id = district.district_id inner join disp on disp.account_id = account.account_id where disp.type = 'OWNER' and district.a11 = 8000 and district.a9 = 9000
select count ( trans.account_id ) from district inner join trans on district.district_id = trans.account_id inner join account on account.account_id = trans.account_id where district.a3 = 'north Bohemia' and trans.bank = 'AB'
sql placeholder
select avg ( district.a3 ) from district inner join account on district.district_id = account.district_id where strftime ( '%Y' , account.date ) = '1995' and district.a3 > 4000
select count ( * ) from card inner join loan on card.card_id = loan.account_id inner join disp on card.disp_id = disp.disp_id inner join account on account.account_id = loan.account_id where disp.type = 'OWNER'
select count ( client.client_id ) from client inner join district on client.district_id = district.district_id where district.a2 = 'Hl.m. Praha' and client.gender = 'M'
select cast ( sum ( case when card.type = 'gold' then 1 else 0 end ) as real ) * 100 / count ( card.card_id ) from card inner join disp on card.disp_id = disp.disp_id where strftime ( '%Y' , card.issued ) < '1998'
select disp.account_id from loan inner join disp on loan.account_id = disp.account_id order by loan.amount desc limit 1
select count ( * ) from account inner join district on account.district_id = district.district_id where district.a15 = 1995 and account.account_id = 532
sql placeholder
select trans.trans_id from client inner join trans on client.client_id = trans.account_id where trans.trans_id = 3356 and trans.type = 'VYBER'
select count ( loan.amount ) from loan inner join account on loan.account_id = account.account_id where loan.amount < 200000 and account.frequency = 'POPLATEK TYDNE'
select card.type from card inner join disp on card.disp_id = disp.disp_id inner join client on disp.client_id = client.client_id where disp.disp_id = 13539
select district.a3 from client inner join district on client.district_id = district.district_id where client.client_id = 3541
select district.district_id from account inner join loan on account.account_id = loan.account_id inner join district on district.district_id = account.district_id where loan.status = 'A' group by district.district_id order by count ( loan.account_id ) desc limit 1
sql placeholder
select distinct trans.trans_id from account inner join trans on account.account_id = trans.account_id inner join district on district.district_id = district.district_id where district.a2 = 5
select count ( account.account_id ) from account inner join district on account.district_id = district.district_id where district.a2 = 'Jesenik'
select client.client_id from card inner join disp on card.disp_id = disp.disp_id inner join client on disp.client_id = client.client_id where card.type = 'junior' and strftime ( '%Y' , card.issued ) >= '1996'
sql placeholder
select cast ( sum ( loan.amount ) as real ) / count ( loan.loan_id ) from client inner join loan on client.client_id = loan.account_id inner join account on loan.account_id = account.account_id where client.gender = 'M' and loan.amount between 1996 and 1997
select count ( account.account_id ) from account inner join trans on account.account_id = trans.account_id where trans.operation = 'VYBER KARTOU' and strftime ( '%Y' , trans.date ) >= '1995'
select sum ( case when a3 = 'east Bohemia' then 1 else 0 end ) - sum ( case when a16 = 'north Bohemia' then 1 else 0 end ) from district
select count ( disp.disp_id ) from disp inner join account on disp.account_id = account.account_id where disp.type between 'OWNER' and 'DISPONENT' and account.account_id between 1 and 10
sql placeholder
select client.birth_date from client inner join disp on client.client_id = disp.client_id inner join account on disp.account_id = account.account_id where disp.account_id = 130
select count ( account.account_id ) from account inner join disp on account.account_id = disp.account_id inner join trans on account.account_id = trans.account_id where disp.type = 'OWNER' and account.frequency = 'POPLATEK PO OBRATU'
select loan.amount , loan.payments from client inner join loan on client.client_id = loan.loan_id inner join account on account.account_id = loan.account_id where client.client_id = 992
select trans.amount , client.gender from client inner join trans on client.client_id = trans.account_id inner join account on account.account_id = trans.account_id where client.client_id = 4 and trans.trans_id = 851
select card.type from card inner join disp on card.disp_id = disp.disp_id inner join client on disp.client_id = client.client_id where client.client_id = 9
select sum ( trans.amount ) from client inner join trans on client.client_id = trans.account_id inner join account on account.account_id = trans.account_id where client.client_id = 617 and strftime ( '%Y' , trans.date ) = '1998'
select client.client_id , account.account_id from client inner join district on client.district_id = district.district_id inner join account on account.account_id = account.account_id where district.a3 = 'east Bohemia' and client.birth_date between 1983 and 1987
select client.client_id from loan inner join client on loan.loan_id = client.client_id where client.gender = 'F' group by client.client_id order by count ( loan.loan_id ) desc limit 3
sql placeholder
select count ( account.account_id ) from account inner join district on account.district_id = district.district_id where district.a2 = 'Beroun' and strftime ( '%Y' , account.date ) >= '1996'
select count ( client.client_id ) from card inner join disp on card.disp_id = disp.disp_id inner join client on disp.client_id = client.client_id where client.gender = 'F' and card.type = 'junior'
sql placeholder
select cast ( sum ( case when client.gender = 'M' then 1 else 0 end ) as real ) * 100 / count ( client.gender ) from client inner join disp on client.client_id = disp.client_id inner join account on disp.account_id = account.account_id where disp.type = 'POPLATEK TYDNE'
select count ( client.client_id ) from client inner join account on client.client_id = account.account_id where account.frequency = 'POPLATEK TYDNE'
select account.account_id from loan inner join account on loan.account_id = account.account_id where loan.duration > 24 order by loan.amount asc limit 1
select account.account_id from client inner join district on client.district_id = district.district_id inner join account on district.district_id = account.district_id where client.gender = 'F' order by district.a11 asc limit 1
select count ( client.client_id ) from client inner join district on client.district_id = district.district_id where district.a3 = 'east Bohemia' and client.birth_date = '1920'
select count ( loan.account_id ) from loan inner join account on loan.account_id = account.account_id where loan.duration = 24 and account.frequency = 'POPLATEK TYDNE'
select avg ( loan.amount ) from loan inner join trans on loan.account_id = trans.account_id inner join account on account.account_id = loan.account_id where loan.status = 'C' and account.frequency = 'POPLATEK PO OBRATU'
select client.client_id , district.district_id from client inner join disp on client.client_id = disp.client_id inner join district on client.district_id = district.district_id where disp.type = 'OWNER'
sql placeholder
select bond_type from bond group by bond_type order by count ( bond_type ) desc limit 1
select count ( molecule.molecule_id ) from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.label = '-' and atom.element = 'cl'
sql placeholder
sql placeholder
select count ( molecule.molecule_id ) from molecule inner join atom on molecule.molecule_id = atom.molecule_id inner join connected on atom.atom_id = connected.atom_id where atom.element = 'na' and molecule.label = '-'
select molecule.molecule_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.label = '+' and bond.bond_type = '#'
sql placeholder
select count ( bond_id ) from bond where bond_type = '#'
select count ( connected.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id where atom.element != 'br'
select count ( molecule_id ) from molecule where label = '+' and molecule_id between 'TR000' and 'TR099'
select molecule.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'si'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id where connected.bond_id = 'TR004_8_9'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where bond.bond_type = '= 'and atom.element = 'cl' and atom.element = 'cl'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where atom.element = 'h' group by molecule.label order by count ( molecule.label ) desc limit 1
select bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where atom.element = 'te'
select connected.atom_id from bond inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '-'
sql placeholder
select atom.element from molecule inner join atom on molecule.molecule_id = atom.molecule_id where molecule.label = '-' group by atom.element order by count ( molecule.molecule_id ) asc limit 1
select distinct bond.bond_type from connected inner join bond on connected.bond_id = bond.bond_id where connected.atom_id = 'TR004_8' or connected.atom_id = 'TR004_20'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where atom.element != 'sn'
select count ( atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where atom.element = 'i' and atom.element = 's' and bond.bond_type = '-'
select connected.atom_id from bond inner join connected on bond.bond_id = connected.bond_id where bond.bond_type = '#'
sql placeholder
select cast ( sum ( case when atom.element = 'f' then 1 else 0 end ) as real ) * 100 / count ( molecule.molecule_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+'
select cast ( count ( case when molecule.label = '+' then 1 else null end ) as real ) * 100 / count ( molecule.molecule_id ) from bond inner join molecule on bond.molecule_id = molecule.molecule_id
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR000' order by atom.element desc limit 3
select atom.atom_id from molecule inner join atom on molecule.molecule_id = atom.molecule_id inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where molecule.molecule_id = 'TR001' and bond.bond_id = 'TR001_2_6'
select sum ( case when label = '+' then 1 else 0 end ) - sum ( case when label = '-' then 1 else 0 end ) from molecule
select connected.atom_id from bond inner join connected on bond.bond_id = connected.bond_id where bond.molecule_id = 'TR_000_2_5'
select connected.bond_id from atom inner join connected on atom.atom_id = connected.atom_id2 where connected.atom_id = 'TR000_2'
sql placeholder
sql placeholder
select cast ( count ( case when label = '+' then molecule_id else null end ) as real ) * 100 / count ( molecule_id ) from molecule
select cast ( sum ( case when atom.element = 'h' then 1 else 0 end ) as real ) * 100 / count ( atom.atom_id ) from molecule inner join atom on molecule.molecule_id = atom.molecule_id inner join connected on atom.atom_id = connected.atom_id where molecule.molecule_id = 'TR206'
select distinct bond.bond_type from bond inner join molecule on bond.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR000'
sql placeholder
select bond.bond_type , molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR018' group by bond.bond_type order by count ( bond.bond_type ) desc limit 1
sql placeholder
select connected.bond_id from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id inner join molecule on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR006' order by connected.bond_id desc limit 2
sql placeholder
select count ( molecule.molecule_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'br' and molecule.label = '+'
select bond.bond_type , atom.atom_id from bond inner join connected on bond.bond_id = connected.bond_id inner join atom on atom.atom_id = connected.atom_id where connected.bond_id = 'TR001_6_9'
sql placeholder
select count ( molecule.molecule_id ) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '#'
select count ( connected.bond_id ) from atom inner join connected on atom.atom_id = connected.atom_id2 where connected.atom_id like 'TR%_19'
select atom.element from atom inner join bond on atom.molecule_id = bond.molecule_id inner join connected on atom.atom_id = connected.atom_id where bond.molecule_id = 'TR004'
select count ( * ) from molecule where label = '-'
select molecule.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where substr ( atom.atom_id , 7 , 2 ) between 21 and 25 and molecule.label like '+'
select distinct bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.molecule_id = connected.bond_id where atom.element = 'p' and atom.element = 'n'
select molecule.molecule_id from bond inner join molecule on bond.molecule_id = molecule.molecule_id where bond.bond_type = '= 'and molecule.label = '+' group by molecule.molecule_id order by count ( bond.bond_type ) desc limit 1
select cast ( count ( connected.bond_id ) as real ) / count ( distinct atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id where atom.element = 'i'
sql placeholder
sql placeholder
select atom.atom_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where molecule.molecule_id = 'TR447' and bond.bond_type = '#'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id where connected.bond_id = 'TR144_8_19'
sql placeholder
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' group by atom.element order by count ( molecule.label ) asc limit 1
select connected.atom_id from atom inner join connected on atom.atom_id = connected.atom_id where atom.element = 'pb'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where bond.bond_type = '#' and atom.element = 'cl' and atom.element = 'cl'
select cast ( count ( connected.bond_id ) as real ) * 100 / count ( distinct atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id group by connected.bond_id order by count ( connected.bond_id ) desc limit 1
select cast ( sum ( case when molecule.label = '+' then 1 else 0 end ) as real ) * 100 / count ( bond.bond_type ) from bond inner join molecule on bond.molecule_id = molecule.molecule_id where bond.bond_type = '-'
select count ( atom.atom_id ) from atom inner join connected on atom.atom_id = connected.atom_id where atom.element in ( 'c' , 'h' )
select connected.atom_id2 from atom inner join connected on atom.atom_id = connected.atom_id where atom.element = 's'
select distinct bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.molecule_id = connected.bond_id where atom.element = 'sn' and bond.bond_type = '-' and bond.bond_type = '#'
sql placeholder
sql placeholder
select bond.bond_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.label = '+'
select molecule.molecule_id from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '-' and molecule.label = '-'
sql placeholder
select label from molecule where molecule_id in ( 'TR000' , 'TR001' , 'TR002' )
select molecule_id from molecule where label = '-'
select count ( * ) from molecule where label = '+' and molecule_id = 'TR000'
select bond.bond_type from molecule inner join bond on molecule.molecule_id = bond.molecule_id inner join connected on bond.bond_id = connected.bond_id where molecule.molecule_id = 'TR000' and molecule.molecule_id = 'TR050'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id2 where connected.bond_id = 'TR001_10_11'
select count ( connected.bond_id ) from atom inner join connected on atom.atom_id = connected.atom_id2 where atom.element = 'i'
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'ca' order by molecule.label desc limit 1
select case when atom.element = 'cl' then 'YES' else 'NO' end as yorn from atom inner join connected on atom.atom_id = connected.atom_id where connected.bond_id = 'TR001_1_8'
sql placeholder
select cast ( count ( case when molecule.label = '+' then 1.0 else null end ) as real ) * 100 / count ( molecule.molecule_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'cl'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR001'
select molecule.molecule_id from bond inner join molecule on bond.molecule_id = molecule.molecule_id where bond.bond_type = '= '
select distinct atom.atom_id , connected.atom_id2 from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where bond.bond_type = '#'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id2 where connected.bond_id = 'TR005_16_26'
select count ( molecule.molecule_id ) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '-'
select molecule.label from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_id = 'TR001_10_11'
select bond.bond_id , molecule.label from bond inner join molecule on bond.molecule_id = molecule.molecule_id where bond.bond_type = '#'
select atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' group by atom.element having substr ( atom.atom_id , 7 , 1 ) = 4
select cast ( sum ( case when atom.element = 'h' then 1 else 0 end ) as real ) * 100 / count ( atom.element ) , molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.molecule_id = 'TR006'
select molecule.label from molecule inner join atom on molecule.molecule_id = atom.molecule_id where atom.element = 'ca'
select bond.bond_type from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id where atom.element = 'te' and bond.bond_type = '-' and bond.bond_type = '#'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.molecule_id where connected.bond_id = 'TR001_10_11' group by atom.element
select cast ( count ( case when bond.bond_type = '#' then 1 else null end ) as real ) * 100 / count ( connected.bond_id ) from bond inner join connected on bond.bond_id = connected.bond_id
sql placeholder
select molecule.label from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id2 where atom.atom_id = 'TR001_1'
select 'Yes' from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR151'
select atom.element from molecule inner join atom on molecule.molecule_id = atom.molecule_id inner join connected on atom.atom_id = connected.atom_id where molecule.molecule_id = 'TR151'
select count ( * ) from molecule where label = '+'
sql placeholder
select count ( atom.atom_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where molecule.label = '+'
sql placeholder
select count ( atom.atom_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' and atom.element = 'h'
select molecule.molecule_id from molecule inner join atom on molecule.molecule_id = atom.molecule_id inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where atom.atom_id = 'TR00_1_2' order by atom.atom_id asc limit 1
select atom.atom_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where atom.element = 'c' and molecule.label = '-'
select cast ( sum ( case when molecule.label = '+' then 1 else 0 end ) as real ) * 100 / count ( molecule.molecule_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id
select 'Yes' from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR124'
select atom.atom_id from atom inner join molecule on molecule.molecule_id = atom.molecule_id inner join connected on atom.atom_id = connected.atom_id where molecule.molecule_id = 'TR186'
select bond_type from bond where bond_id = 'TR007_4_19'
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on atom.molecule_id = bond.molecule_id where bond.bond_id = 'TR001_2_4'
select count ( molecule.molecule_id ) , bond.bond_type from molecule inner join bond on molecule.molecule_id = bond.molecule_id where molecule.molecule_id = 'TR006' and molecule.label = '+'
select molecule.molecule_id , atom.element from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+'
sql placeholder
sql placeholder
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on atom.molecule_id = bond.molecule_id where bond.bond_id = 'TR000_2_3'
select count ( connected.bond_id ) from atom inner join connected on atom.atom_id = connected.atom_id2 where atom.element = 'cl'
select atom.atom_id , bond.bond_type from atom inner join molecule on molecule.molecule_id = atom.molecule_id inner join connected on atom.atom_id = connected.atom_id inner join bond on bond.bond_id = connected.bond_id where atom.molecule_id = 'TR346' group by connected.atom_id , bond.bond_type
select count ( molecule.molecule_id ) , count ( distinct molecule.molecule_id ) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '= 'and molecule.label = '+'
sql placeholder
select molecule.label from bond inner join molecule on bond.molecule_id = molecule.molecule_id inner join connected on connected.bond_id = bond.bond_id where bond.bond_id = 'TR001_2_4'
select count ( atom.atom_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where molecule.molecule_id = 'TR005'
select count ( bond_id ) from bond where bond_type = '-'
select molecule.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'cl' and molecule.label = '+'
select molecule.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'c' and molecule.label = '-'
select cast ( sum ( case when molecule.label = '+' then 1 else 0 end ) as real ) * 100 / count ( molecule.molecule_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id
select molecule.molecule_id from bond inner join molecule on bond.molecule_id = molecule.molecule_id where bond.bond_id = 'TR001_1_7'
select count ( atom.element ) from atom inner join connected on atom.atom_id = connected.atom_id where connected.bond_id = 'TR001_3_4'
select bond.bond_type from bond inner join connected on bond.bond_id = connected.bond_id where connected.atom_id = 'TR000_1' or connected.atom_id = 'TR000_2'
sql placeholder
select atom.element from atom inner join connected on atom.atom_id = connected.atom_id2 where connected.atom_id = 'TR000_1'
select label from molecule where molecule_id = 'TR000'
select cast ( count ( case when bond.bond_type = '-' then 1 else null end ) as real ) * 100 / count ( connected.bond_id ) from bond inner join connected on bond.bond_id = connected.bond_id
select count ( molecule.molecule_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id where atom.element = 'n' and molecule.label = '+'
sql placeholder
select molecule_id from molecule where label = '-' group by molecule_id having count ( label ) > 5
sql placeholder
select molecule.molecule_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' group by molecule.molecule_id order by count ( atom.atom_id ) desc limit 1
select cast ( sum ( case when molecule.label = '+' then 1 else 0 end ) as real ) * 100 / count ( molecule.molecule_id ) from atom inner join connected on atom.atom_id = connected.atom_id inner join bond on connected.bond_id = bond.bond_id inner join molecule on molecule.molecule_id = molecule.molecule_id where atom.element = 'h' and bond.bond_type = '#'
select count ( * ) from molecule where label = '+'
select count ( molecule.molecule_id ) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '-' and molecule.molecule_id between 'TR004' and 'TR010'
select count ( atom.atom_id ) from atom inner join molecule on atom.molecule_id = molecule.molecule_id inner join connected on atom.atom_id = connected.atom_id where molecule.molecule_id = 'TR008' and atom.element = 'c'
sql placeholder
sql placeholder
select count ( molecule.molecule_id ) from molecule inner join bond on molecule.molecule_id = bond.molecule_id where bond.bond_type = '#' and molecule.label = '-'
select atom.element , bond.bond_type from atom inner join bond on atom.molecule_id = bond.molecule_id inner join connected on bond.molecule_id = connected.bond_id where atom.molecule_id = 'TR016'
sql placeholder
select atom.atom_id from atom inner join molecule on atom.molecule_id = molecule.molecule_id where molecule.label = '+' and atom.element = 'o'
select name from cards where cardkingdomfoilid is not null
select distinct bordercolor from cards where cardkingdomfoilid is not null and bordercolor is not null
select name from cards order by convertedmanacost desc limit 1
select name from cards where frameversion = 2015 and edhrecrank < 100
select cards.name from cards inner join legalities on cards.uuid = legalities.uuid where legalities.status = 'Banned' and legalities.format = 'gladiator' and cards.rarity = 'mythic'
select legalities.status from cards inner join legalities on cards.uuid = legalities.uuid where cards.types = 'Artifact' and cards.side is null and legalities.format = 'vintage'
select cards.id , cards.artist from cards inner join legalities on cards.uuid = legalities.uuid where legalities.status = 'Legal' and legalities.format = 'commander' and cards.power = '*'
select rulings.text , cards.name , cards.hascontentwarning from cards inner join rulings on cards.uuid = rulings.uuid where cards.artist = 'Stephen Daniele'
select rulings.text from rulings inner join cards on rulings.uuid = cards.uuid where cards.name = 'Sublime Epiphany' and cards.number = 74
select cards.name , cards.artist , cards.ispromo from rulings inner join cards on rulings.uuid = cards.uuid where cards.ispromo = 1 group by cards.name , cards.artist order by count ( rulings.uuid ) desc limit 1
select distinct set_translations.language from foreign_data inner join cards on foreign_data.uuid = cards.uuid inner join set_translations on cards.id = set_translations.id where cards.number = 29 and cards.name = 'annul'
select distinct cards.name from foreign_data inner join set_translations on foreign_data.id = set_translations.id inner join cards on foreign_data.uuid = cards.uuid where set_translations.language = 'Japanese'
select cast ( sum ( case when foreign_data.language = 'Chinese Simplified' then 1 else 0 end ) as real ) * 100 / count ( cards.availability ) from foreign_data inner join cards on foreign_data.uuid = cards.uuid
select distinct sets.totalsetsize from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Italian'
select count ( id ) from cards where artist = 'Aaron Boyd'
select keywords from cards where name = 'Angel of Mercy'
select count ( id ) from cards where power = '*'
select distinct sets.type from sets inner join cards on sets.id = cards.id where cards.name = 'Duress'
select bordercolor from cards where name = 'Ancestor''s Chosen'
select originaltype from cards where name = 'Ancestor''s Chosen'
select set_translations.language from foreign_data inner join set_translations on foreign_data.id = set_translations.setcode inner join cards on foreign_data.uuid = cards.uuid where cards.name = 'Angel of Mercy'
select count ( legalities.id ) from legalities inner join cards on legalities.uuid = cards.uuid where legalities.status = 'restricted' and cards.istextless = 0
select rulings.text from rulings inner join cards on rulings.uuid = cards.uuid where cards.name = 'Condemn'
select count ( legalities.id ) from legalities inner join cards on legalities.uuid = cards.uuid where legalities.status = 'restricted' and cards.isstarter = 1
select legalities.status from cards inner join legalities on cards.uuid = legalities.uuid where cards.name = 'Cloudchaser Eagle'
select type from cards where name = 'Benalish Knight'
select legalities.format from rulings inner join cards on rulings.uuid = cards.uuid inner join legalities on rulings.uuid = legalities.uuid where cards.name = 'Benalish Knight'
select cards.artist from cards inner join foreign_data on cards.id = foreign_data.uuid where foreign_data.language = 'Phyrexian'
select cast ( sum ( case when bordercolor = 'borderless' then 1 else 0 end ) as real ) * 100 / count ( id ) from cards
select count ( cards.id ) from foreign_data inner join cards on foreign_data.uuid = cards.uuid inner join set_translations on cards.id = set_translations.setcode where set_translations.language = 'German' and cards.isreprint = 1
select count ( foreign_data.id ) from foreign_data inner join cards on foreign_data.uuid = cards.uuid where foreign_data.language = 'Russian' and cards.bordercolor = 'borderless'
select cast ( count ( case when foreign_data.language = 'French' then 1 else null end ) as real ) * 100 / count ( foreign_data.id ) from foreign_data inner join cards on foreign_data.uuid = cards.uuid inner join set_translations on cards.uuid = set_translations.id where cards.isstoryspotlight = 1
select count ( id ) from cards where toughness = 99
select name from cards where artist = 'Aaron Boyd'
select count ( name ) from cards where bordercolor = 'black' and availability = 'mtgo'
select id from cards where manacost = 0 and convertedmanacost = 0
select layout from cards where keywords = 'flying'
select count ( name ) from cards where originaltype = 'Summon - Angel' and subtypes = 'Angel'
select id from cards where cardkingdomfoilid is not null and cardkingdomid is not null
select name , id from cards where dueldeck = 'a'
select edhrecrank from cards where frameversion = 2015
select cards.artist from cards inner join set_translations on cards.id = set_translations.id where set_translations.language = 'Chinese Simplified'
select cards.name from foreign_data inner join cards on foreign_data.uuid = cards.uuid where foreign_data.language = 'Japanese' and cards.availability = 'paper'
select count ( legalities.id ) from cards inner join legalities on cards.uuid = legalities.uuid where legalities.status = 'Banned' and cards.bordercolor = 'white'
select cards.uuid , foreign_data.language from foreign_data inner join legalities on foreign_data.uuid = legalities.uuid inner join cards on cards.uuid = legalities.uuid where legalities.format = 'legacy'
select rulings.text from rulings inner join cards on rulings.uuid = cards.uuid where cards.name = 'Beacon of Immortality'
select count ( legalities.status ) , cards.name from cards inner join legalities on cards.uuid = legalities.uuid where cards.frameversion = 'future'
select cards.id , cards.colors from cards inner join set_translations on cards.id = set_translations.setcode where set_translations.setcode = 'OGW'
select distinct set_translations.language , set_translations.translation from cards inner join set_translations on cards.setcode = set_translations.setcode where cards.setcode = '10E' and cards.convertedmanacost = 5
select cards.name , rulings.date from rulings inner join cards on rulings.uuid = cards.uuid where cards.originaltype = 'Creature - Elf'
select distinct cards.colors , legalities.format from cards inner join legalities on cards.id = legalities.id where cards.id >= 1 and cards.id < 20
select cards.name , foreign_data.language from cards inner join foreign_data on cards.id = foreign_data.id inner join set_translations on foreign_data.id = set_translations.id where cards.originaltype = 'Artifact' and cards.colors = 'B' and foreign_data.language = 'English'
select cards.name from rulings inner join cards on rulings.uuid = cards.uuid where cards.rarity = 'uncommon' order by rulings.date asc
select count ( cards.cardkingdomid ) from cards inner join sets on cards.id = sets.id where cards.artist = 'John Avon' and sets.isfoilonly = 'nonfoilonly'
select count ( id ) from cards where bordercolor = 'white' and cardkingdomid is not null
select count ( name ) from cards where artist = 'UDON' and availability = 'mtgo'
select count ( name ) from cards where frameversion = 1993 and availability = 'paper' and hascontentwarning = 1
select manacost from cards where layout = 'normal' and frameversion = '2003' and bordercolor = 'black' and availability = 'paper'
select sum ( manacost ) from cards where artist = 'Rob Alexander'
select subtypes , supertypes from cards where availability = 'arena'
select cards.setcode from cards inner join set_translations on cards.id = set_translations.setcode where set_translations.language = 'Spanish'
select cast ( sum ( case when hand = '+3' then 1 else 0 end ) as real ) * 100 / count ( id ) from cards where frameeffects = 'legendary'
select cast ( sum ( case when isstoryspotlight = 1 then 1 else 0 end ) as real ) * 100 / count ( id ) from cards where istextless = 1
select cast ( sum ( case when foreign_data.language = 'Spanish' then 1 else 0 end ) as real ) * 100 / count ( foreign_data.name ) from foreign_data inner join set_translations on foreign_data.id = set_translations.setcode inner join cards on foreign_data.uuid = cards.uuid
select distinct set_translations.language from cards inner join set_translations on cards.setcode = set_translations.setcode inner join sets on set_translations.setcode = sets.code where sets.basesetsize = 309
select count ( set_translations.setcode ) from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Portuguese (Brasil)' and sets.block = 'Commander'
select cards.id from cards inner join legalities on cards.uuid = legalities.uuid where legalities.status = 'legal' and cards.types = 'Creature'
select distinct cards.types from cards inner join set_translations on cards.id = set_translations.setcode where set_translations.language = 'German' and cards.subtypes is not null and cards.supertypes is not null
select count ( id ) from cards where power is null or power = '*'
select count ( distinct rulings.uuid ) from rulings inner join cards on rulings.uuid = cards.uuid inner join legalities on rulings.uuid = legalities.uuid where rulings.text = 'This is a triggered mana ability' and legalities.format = 'pre-modern'
select name from cards where artist = 'Erica Yang' and availability = 'paper'
select cards.artist from rulings inner join cards on rulings.uuid = cards.uuid where cards.text = 'Das perfekte Gegenmittel zu einer dichten Formation'
select foreign_data.name from cards inner join foreign_data on cards.id = foreign_data.id where cards.artist = 'Matthew D. Wilson' and foreign_data.language = 'French' and cards.bordercolor = 'black' and foreign_data.type = 'Creature'
select count ( rulings.uuid ) from rulings inner join cards on rulings.uuid = cards.uuid where rulings.date = '2009-01-10' and rulings.text = 'Rarity'
select distinct set_translations.language from sets inner join set_translations on sets.code = set_translations.setcode where sets.basesetsize = 180 and sets.block = 'Ravennica'
select cast ( sum ( case when legalities.status = 'legal' then 1 else 0 end ) as real ) * 100 / count ( legalities.id ) from legalities inner join cards on legalities.uuid = cards.uuid where legalities.format = 'commander'
select cast ( sum ( case when power is null then 1 else 0 end ) as real ) * 100 / count ( power ) from cards inner join set_translations on cards.uuid = set_translations.id where set_translations.language = 'French'
sql placeholder
select printings from cards where artist = 'Daren Bader'
select count ( id ) from cards where bordercolor = 'borderless' and edhrecrank > 12000
select count ( id ) from cards where isoversized = 1 and isreprint = 1 and ispromo = 1
select cards.name from sets inner join cards on sets.id = cards.id where sets.type = 'arenaleague' and cards.power is null order by cards.name desc limit 3
select set_translations.language from foreign_data inner join cards on foreign_data.uuid = cards.uuid inner join set_translations on cards.id = set_translations.id where cards.multiverseid = 149934
select id from cards order by power desc limit 3
select cast ( sum ( case when layout = 'normal' then 1 else 0 end ) as real ) * 100 / count ( istextless ) from cards where istextless = 1
select name from cards where subtypes = 'Angel' or subtypes = 'Wizard' and side is null
select name from sets where mtgocode is null or mtgocode = '' order by name desc limit 3
select distinct set_translations.language from set_translations inner join sets on set_translations.setcode = sets.code where sets.mcmname = 'Archenemy' and set_translations.setcode = 'ARC'
select sets.name , set_translations.translation from sets inner join set_translations on sets.code = set_translations.setcode where sets.id = 5
select distinct foreign_data.language , foreign_data.type from foreign_data inner join sets on foreign_data.id = sets.code inner join set_translations on sets.code = set_translations.setcode where foreign_data.id = 206 and sets.type = 'expansion'
sql placeholder
select sets.id from foreign_data inner join sets on foreign_data.uuid = sets.code inner join set_translations on sets.code = set_translations.setcode where foreign_data.language = 'Japanese' and sets.isforeignonly = 1 and sets.isfoilonly = 1
select sets.name from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Russian' group by sets.name order by sum ( sets.basesetsize ) desc limit 1
sql placeholder
select count ( sets.code ) from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Japanese' and sets.mtgocode is null or sets.mtgocode = ''
select count ( id ) , name from cards where bordercolor = 'black'
select count ( id ) from cards where frameeffects = 'extendedart'
select name from cards where bordercolor = 'black' and isfullart = 1
select distinct foreign_data.language from foreign_data inner join set_translations on foreign_data.id = set_translations.setcode where set_translations.id = 174
select name from sets where code = 'ALL'
select language from foreign_data where name = 'A Pedra Fellwar'
select code from sets where releasedate = '07/13/2007'
select sets.basesetsize , sets.code from sets inner join cards on sets.code = cards.setcode where sets.block = 'Masques' and sets.name = 'Mirage'
select code from sets where type = 'expansion'
select foreign_data.name , cards.type from cards inner join foreign_data on cards.uuid = foreign_data.uuid where cards.watermark = 'boros'
select foreign_data.language , foreign_data.flavortext from cards inner join foreign_data on cards.id = foreign_data.id where cards.watermark = 'Colorpie'
select cast ( sum ( case when cards.manacost = 10 then 1 else 0 end ) as real ) * 100 / count ( cards.manacost ) from cards inner join sets on cards.id = sets.id where sets.name = 'Abyssal Horror'
select code from sets where type = 'expansion commander'
select foreign_data.name , cards.type from cards inner join foreign_data on cards.uuid = foreign_data.uuid where cards.watermark = 'Abzan'
select distinct foreign_data.language , cards.type from foreign_data inner join cards on foreign_data.uuid = cards.uuid inner join set_translations on cards.id = set_translations.id where cards.watermark = 'azorius'
select count ( power ) from cards where artist = 'Aaron Miller' and cardkingdomfoilid is not null and cardkingdomid is not null
select count ( name ) from cards where hand = '+%' and availability like '%paper%'
select name from cards where istextless = 0
select convertedmanacost from cards where name = 'Ancestor''s Chosen'
select count ( name ) from cards where bordercolor = 'white' and power = '*'
select name from cards where ispromo = 1 and facename is not null
select subtypes , supertypes from cards where name = 'Molimo , Maro-Sorcerer'
select purchaseurls from cards where promotypes = 'bundle'
select count ( cards.artist ) from cards inner join sets on cards.id = sets.code where cards.availability in ( '%arena , mtgo' )
select name from cards where name in ( 'Serra Angel' , 'Shrine Keeper' ) order by convertedmanacost desc limit 1
select artist from cards where flavorname = 'Battra , Dark Destroyer'
select name from cards where frameversion = '2003' order by convertedmanacost desc limit 3
select sets.name from foreign_data inner join sets on foreign_data.id = sets.code inner join set_translations on sets.code = set_translations.setcode where foreign_data.language = 'Italian' and sets.name = 'Ancestor''s Chosen'
select count ( set_translations.translation ) from cards inner join set_translations on cards.id = set_translations.setcode where cards.name = 'Angel of Mercy'
select cards.name from cards inner join set_translations on cards.id = set_translations.setcode inner join sets on set_translations.setcode = sets.code where set_translations.translation = 'Hauptset Zehnte Edition'
select set_translations.translation from foreign_data inner join sets on foreign_data.id = sets.code inner join set_translations on sets.code = set_translations.setcode where foreign_data.name = 'Ancestor''s Chosen' and set_translations.language = 'Korean'
select count ( cards.name ) from cards inner join set_translations on cards.id = set_translations.setcode where set_translations.translation = 'Hauptset Zehnte Edition' and cards.artist = 'Adam Rex'
select sets.basesetsize from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Hauptset Zehnte Edition'
select set_translations.translation from cards inner join set_translations on cards.setcode = set_translations.setcode inner join sets on set_translations.setcode = sets.code where sets.name = 'Eighth Edition' and set_translations.language = 'Simplified Chinese'
select case when sets.mtgocode is not null then 'YES' else 'NO' end from cards inner join sets on cards.setcode = sets.code where cards.name = 'Angel of Mercy'
select sets.releasedate from cards inner join sets on cards.id = sets.code where cards.name = 'Ancestor''s Chosen'
select distinct sets.type from cards inner join set_translations on cards.setcode = set_translations.setcode inner join sets on set_translations.setcode = sets.code where set_translations.translation = 'Hauptset Zehnte Edition' and cards.type = 'expansion'
select count ( set_translations.id ) from set_translations inner join sets on set_translations.setcode = sets.code where sets.block = 'Ice Age' and set_translations.language = 'Italian'
select cards.availability from cards inner join sets on cards.id = sets.id where sets.name = 'Adarkar Valkyrie' and sets.isforeignonly = 1
select count ( sets.name ) from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation is not null and sets.basesetsize < 10 and set_translations.language = 'Italian'
select count ( cards.number ) from cards inner join sets on cards.id = sets.id where cards.name = 'Coldsnap' and cards.bordercolor = 'black'
select cards.name from cards inner join set_translations on cards.id = set_translations.setcode inner join sets on set_translations.setcode = sets.code where sets.name = 'Coldsnap' order by cards.convertedmanacost desc limit 1
select cards.artist from cards inner join sets on cards.id = sets.id where sets.name = 'Coldsnap' and sets.name = 'Jeremy Jarvis' or sets.name = 'Aaron Miller' or sets.name = 'Chippy'
select cards.number from cards inner join sets on cards.id = sets.id where sets.name = 'Coldsnap' and cards.number = 4
sql placeholder
select foreign_data.flavortext from foreign_data inner join cards on foreign_data.id = cards.id inner join set_translations on cards.id = set_translations.id where cards.name = 'Ancestor''s Chosen' and set_translations.language = 'Italian'
select distinct foreign_data.language from cards inner join foreign_data on cards.id = foreign_data.id where cards.name = 'Ancestor''s Chosen' and cards.flavortext is not null
select cards.type from foreign_data inner join cards on foreign_data.uuid = cards.uuid inner join set_translations on cards.id = set_translations.setcode where foreign_data.name = 'Ancestor''s Chosen' and set_translations.language = 'German'
select rulings.text from set_translations inner join rulings on set_translations.id = rulings.id inner join sets on set_translations.setcode = sets.code where sets.name = 'Coldsnap' and set_translations.language = 'Italian'
sql placeholder
select rulings.date from rulings inner join cards on rulings.uuid = cards.uuid where cards.name = 'Reminisce'
select cast ( sum ( case when set_translations.translation = 'Coldsnap' then 1 else 0 end ) as real ) * 100 / count ( cards.id ) from cards inner join set_translations on cards.id = set_translations.id where cards.name = 'Coldsnap' and set_translations.translation = 'Coldsnap'
select cast ( sum ( case when cards.name = 'Coldsnap' then 1 else 0 end ) as real ) * 100 / sum ( case when cards.name = 'Coldsnap' then 1 else 0 end ) from sets inner join cards on sets.id = cards.id where sets.id is not null
select code from sets where releasedate = '2017-07-14'
select keyrunecode from sets where code = 'PKHC'
select cards.id from cards inner join sets on cards.mcmid = sets.mcmid where sets.code = 'SS2'
select sets.mcmname from cards inner join sets on cards.mcmid = sets.mcmid where sets.releasedate = '2017-06-9'
select type from sets where name = 'From the Vault: Lore'
select parentcode from sets where name = 'Commander 2014 Oversized'
select rulings.text , cards.name , cards.hascontentwarning from cards inner join rulings on cards.uuid = rulings.uuid where cards.artist = 'Jim Pavelec'
select sets.releasedate from cards inner join sets on cards.id = sets.code where cards.name = 'Evacuation'
select cards.number from cards inner join set_translations on cards.id = set_translations.setcode inner join sets on set_translations.setcode = sets.code where set_translations.translation = 'Rinascita di Alara'
select distinct sets.type from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Huitième édition'
select sets.name from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'English' and set_translations.language = 'French'
select count ( set_translations.translation ) from sets inner join set_translations on sets.code = set_translations.setcode where sets.name = 'Salvat 2011' and set_translations.setcode is not null
select sets.name from foreign_data inner join set_translations on foreign_data.id = set_translations.setcode inner join sets on set_translations.setcode = sets.code where foreign_data.language = 'Japanese' and sets.name = 'Fellwar Stone'
select cards.name from cards inner join sets on cards.id = sets.code where sets.name = 'Journey into Nyx Hero''s Path' order by cards.convertedmanacost desc limit 1
select sets.releasedate from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.translation = 'Ola de fro'
sql placeholder
select count ( cards.id ) from cards inner join sets on cards.id = sets.id where sets.name = 'World Championship Decks 2004' and cards.manacost = 3
select set_translations.translation from sets inner join set_translations on sets.code = set_translations.setcode where sets.name = 'Mirrodin' and set_translations.language = 'Chinese Simplified'
select cast ( sum ( case when sets.isnonfoilonly = 1 then 1 else 0 end ) as real ) * 100 / count ( sets.id ) from sets inner join set_translations on sets.code = set_translations.setcode where set_translations.language = 'Japanese'
select cast ( sum ( case when set_translations.language = 'Portuguese (Brazil)' then 1 else 0 end ) as real ) * 100 / count ( set_translations.setcode ) from set_translations inner join cards on set_translations.id = cards.id where set_translations.language = 'Portuguese (Brazil)'
select distinct printings from cards where artist = 'Aleksi Briclot' and istextless = 1
select sets.id from cards inner join sets on cards.id = sets.id order by sets.basesetsize desc limit 1
select artist from cards where side is null order by convertedmanacost desc limit 1
select frameeffects from cards where cardkingdomfoilid is not null group by cardkingdomfoilid order by count ( frameeffects ) desc limit 1
select count ( hasfoil ) from cards where hasfoil = 0 and dueldeck = 'a' and power = '*'
select id from sets where type = 'commander' order by basesetsize desc limit 1
select cards.name from cards inner join legalities on cards.id = legalities.uuid where legalities.format = 'duel' order by cards.manacost desc limit 10
select cards.originalreleasedate , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid where cards.rarity = 'mythic' and legalities.status = 'legal' order by cards.originalreleasedate asc limit 1
select count ( foreign_data.id ) from foreign_data inner join cards on foreign_data.uuid = cards.uuid inner join set_translations on cards.id = set_translations.id where cards.artist = 'Volkan Baga' and set_translations.language = 'French'
select count ( legalities.id ) from cards inner join legalities on cards.uuid = legalities.uuid where cards.name = 'Abundance' and cards.types = 'Enchantment' and legalities.status = 'Legal' and cards.rarity = 'rare'
select legalities.format , cards.name from legalities inner join cards on legalities.uuid = cards.uuid where legalities.status = 'banned' group by legalities.format , cards.name order by count ( legalities.status ) desc limit 1
select distinct set_translations.language from foreign_data inner join set_translations on foreign_data.id = set_translations.setcode where foreign_data.name = 'Battlebond'
select cards.artist , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid group by cards.artist order by count ( cards.name ) asc limit 1
select distinct legalities.status from cards inner join legalities on cards.id = legalities.id where cards.artist = 'D. Alexander Gregory' and legalities.format = 'legacy' and cards.frameVersion = 1997
select cards.name , legalities.format from cards inner join legalities on cards.uuid = legalities.uuid where cards.edhrecrank = 1 and legalities.status = 'banned'
select avg ( sets.id ) , foreign_data.language from sets inner join foreign_data on sets.id = foreign_data.uuid inner join set_translations on sets.code = set_translations.setcode where sets.releasedate between '2012-01-01' and '2015-12-31'
select artist from cards where bordercolor = 'black' and availability = 'arena'
sql placeholder
select count ( name ) from cards where artist = 'Matthew D. Wilson' and availability = 'paper'
select rulings.text from cards inner join rulings on cards.uuid = rulings.uuid where cards.artist = 'Kev Walker' order by rulings.date desc limit 1
select cards.name , legalities.format from sets inner join legalities on sets.id = legalities.uuid inner join cards on cards.id = legalities.uuid where sets.name = 'Hour of Devastation' and legalities.status = 'legal'
sql placeholder
select cards.frameversion , cards.name , legalities.status from cards inner join legalities on cards.uuid = legalities.uuid where cards.artist = 'Allen Williams' and legalities.status = 'banned'
select displayname from users where displayname in ( 'Harlan' , 'Jarrod Dixon' ) order by reputation desc limit 1
select displayname from users where strftime ( '%Y' , creationdate ) = '2014'
select count ( id ) from users where lastaccessdate > '2014-09-01 00:00:00'
select displayname from users where views = ( select max ( views ) from users )
select count ( upvotes ) from users where downvotes > 1 and upvotes > 100
select count ( accountid ) from users where views > 10 and strftime ( '%Y' , creationdate ) > '2013'
select count ( posts.owneruserid ) from posts inner join posthistory on posts.owneruserid = posthistory.userid inner join users on posts.id = users.id where users.displayname = 'csgillespie'
select posts.title from posts inner join posthistory on posts.owneruserid = posthistory.userid inner join users on posts.id = users.id where users.displayname = 'csgillespie'
select posts.ownerdisplayname from posts inner join posthistory on posts.owneruserid = posthistory.userid where posts.title = 'Eliciting priors from experts'
select posts.title from users inner join posts on users.id = posts.owneruserid inner join posthistory on posts.id = posthistory.userid where users.displayname = 'csgillespie' order by posts.viewcount desc limit 1
select users.displayname from comments inner join posts on comments.userid = posts.owneruserid inner join users on posts.id = users.id order by posts.favoritecount desc limit 1
select sum ( posts.commentcount ) from users inner join comments on users.id = comments.userid inner join posts on comments.postid = posts.id inner join posthistory on posts.id = posthistory.userid where users.displayname = 'csgillespie'
select count ( posts.owneruserid ) from posts inner join posthistory on posts.owneruserid = posthistory.userid inner join users on posts.id = users.id where users.displayname = 'csgillespie' group by posts.owneruserid order by sum ( posts.answercount ) desc limit 1
select users.displayname from comments inner join posts on comments.userid = posts.id inner join users on posts.lasteditoruserid = users.id inner join posthistory on posts.id = posthistory.userid where posts.title = 'Examples for teaching: Correlation does not mean causation'
select count ( posts.parentid ) from posts inner join posthistory on posts.owneruserid = posthistory.userid where posts.parentid is null
select distinct users.displayname from comments inner join posts on comments.userid = posts.owneruserid inner join users on posts.id = users.id where posts.closeddate is not null
select count ( posts.owneruserid ) from comments inner join posts on comments.postid = posts.id inner join users on posts.owneruserid = users.id where posts.score >= 20 and users.age > 65
select users.location from posts inner join users on posts.owneruserid = users.id where posts.title = 'Eliciting priors from experts'
select posts.body from posts inner join tags on posts.id = tags.excerptpostid where tags.tagname = 'bayesian'
select posts.body from posts inner join tags on posts.id = tags.excerptpostid order by tags.count desc limit 1
select count ( badges.userid ) from badges inner join comments on badges.userid = comments.userid where comments.userdisplayname = 'csgillespie'
select badges.name from comments inner join badges on comments.userid = badges.userid inner join users on badges.userid = users.id where comments.userdisplayname = 'csgillespie'
sql placeholder
select users.displayname from comments inner join badges on comments.userid = badges.userid inner join users on badges.userid = users.id group by users.displayname order by count ( users.id ) desc limit 1
select avg ( comments.score ) from posts inner join comments on posts.owneruserid = comments.userid inner join posthistory on posts.id = posthistory.userid inner join users on posts.id = users.id where users.displayname = 'csgillespie'
select cast ( count ( badges.id ) as real ) / count ( distinct posts.ownerdisplayname ) from posts inner join badges on posts.id = badges.userid inner join users on badges.userid = users.id where users.views > 200
sql placeholder
select sum ( users.upvotes ) from users inner join votes on users.id = votes.userid where votes.creationdate = '2010-07-19' and users.id = 58
select creationdate from votes group by creationdate order by count ( id ) desc limit 1
select count ( id ) from badges where name = 'Revival'
select posts.title from comments inner join posts on comments.postid = posts.id order by comments.score desc limit 1
select count ( posts.commentcount ) from posts inner join comments on posts.id = comments.postid where posts.viewcount = 1910
sql placeholder
select comments.text from posts inner join comments on posts.id = comments.postid where posts.parentid = 107829 and posts.commentcount = 1
sql placeholder
select users.reputation from posts inner join users on posts.owneruserid = users.id where posts.id = 65041
select count ( posts.owneruserid ) from posts inner join posthistory on posts.owneruserid = posthistory.userid inner join users on posts.id = users.id where posts.ownerdisplayname = 'Tiago Pasqualini'
select users.displayname from votes inner join users on votes.userid = users.id where votes.id = 6347
select count ( votes.votetypeid ) from votes inner join posts on votes.postid = posts.id where posts.title = 'Data visualization'
select badges.name from comments inner join badges on comments.userid = badges.userid where comments.userdisplayname = 'DatEpicCoderGuyWhoPrograms'
select cast ( count ( posts.id ) as real ) / count ( distinct votes.votetypeid ) from votes inner join posts on votes.postid = posts.id where votes.userid = '24'
select count ( users.id ) from users inner join posts on users.id = posts.id where posts.title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
select text from comments where score = 17
select displayname from users where websiteurl = 'http://stackoverflow.com'
select badges.name from comments inner join badges on comments.userid = badges.userid where comments.userdisplayname = 'SilentGhost'
select distinct posthistory.userdisplayname from comments inner join posthistory on comments.userid = posthistory.userid where posthistory.text = 'thank you user93'
select distinct comments.text from users inner join comments on users.id = comments.userid where users.displayname = 'A Lion'
select users.displayname , users.reputation from comments inner join posts on comments.postid = posts.id inner join posthistory on posts.id = posthistory.userid inner join users on posts.id = users.id where posts.title = 'Understanding what Dassault iSight is doing?'
select comments.text from posts inner join comments on posts.id = comments.postid where posts.title = 'How does gentle boosting differ from AdaBoost?'
select users.displayname from comments inner join badges on comments.userid = badges.userid inner join users on badges.userid = users.id where badges.name = 'Necromancer' limit 10
select posts.lasteditoruserid from posts inner join posthistory on posts.id = posthistory.userid where posts.title = 'Open source tools for visualizing multi-dimensional data'
select distinct posts.title from posts inner join posthistory on posts.id = posthistory.postid inner join users on posthistory.userid = users.id where posts.lasteditordisplayname = 'Vebjorn Ljosa'
sql placeholder
select distinct posthistory.comment from posts inner join comments on posts.id = comments.postid inner join posthistory on posts.id = posthistory.userid where posts.title = 'Why square the difference instead of taking the absolute value in standard deviation?'
select sum ( votes.bountyamount ) from votes inner join posts on votes.postid = posts.id where votes.userid = 0 and posts.title like '%data%'
sql placeholder
sql placeholder
select count ( comments.userid ) from comments inner join posthistory on comments.userid = posthistory.userid where comments.userid = 13
select id from users order by reputation desc limit 1
select id from users order by views asc limit 1
select count ( userid ) from badges where name = 'Supporter' and strftime ( '%Y' , date ) = '2011'
select count ( name ) from badges where userid = 1 group by userid having count ( userid ) > 5
select count ( users.id ) from badges inner join users on badges.userid = users.id where badges.name = 'Supporter' and users.location = 'New York'
select users.reputation from posts inner join posthistory on posts.id = posthistory.postid inner join users on posts.owneruserid = users.id where posts.id = 1
select distinct users.id from users inner join posthistory on users.id = posthistory.userid where users.views >= 1000
select badges.name from comments inner join badges on comments.userid = badges.userid group by badges.userid order by count ( comments.userid ) desc limit 1
select count ( users.id ) from badges inner join users on badges.userid = users.id where badges.name = 'Teacher' and users.location = 'India'
select cast ( ( sum ( case when strftime ( '%Y' , date ) = '2010' then 1 else 0 end ) - sum ( case when strftime ( '%Y' , date ) = '2011' then 1 else 0 end ) ) as real ) * 100 / count ( name ) from badges where date = '2010'
select posthistory.posthistorytypeid , count ( posts.id ) from posts inner join posthistory on posts.id = posthistory.postid where posts.id = 3720
select distinct posts.viewcount from posts inner join postlinks on posts.id = postlinks.relatedpostid where postlinks.postid = 61217
sql placeholder
select distinct posts.id , posts.owneruserid from posts inner join comments on posts.id = comments.postid where comments.score > 60
sql placeholder
select avg ( users.upvotes ) , avg ( users.age ) from votes inner join users on votes.userid = users.id group by users.upvotes , users.age having count ( votes.userid ) > 10
select count ( userid ) from badges where name = 'Announcer'
select badges.name from badges inner join users on badges.userid = users.id where badges.date = '2010-07-19 19:39:08'
select count ( postid ) from comments where score > 60
select text from comments where creationdate = '2010-07-19 19:16:14.0'
select count ( posts.id ) from comments inner join posts on comments.postid = posts.id where comments.score = 10
select badges.name from badges inner join users on badges.userid = users.id where users.reputation = ( select max ( reputation ) from users )
select users.reputation from badges inner join users on badges.userid = users.id where badges.date = '2010-07-19 19:39:08.0'
select badges.name from comments inner join badges on comments.userid = badges.userid where comments.userdisplayname = 'Pierre'
select distinct badges.date from badges inner join users on badges.userid = users.id where users.location = 'Rochester , NY'
select cast ( sum ( case when badges.name = 'Teacher' then 1 else 0 end ) as real ) * 100 / count ( badges.userid ) from badges inner join users on badges.userid = users.id
select cast ( sum ( case when users.age between 13 and 18 then 1 else 0 end ) as real ) * 100 / count ( users.id ) from badges inner join users on badges.userid = users.id where badges.name = 'Organizer'
select posts.score from comments inner join posts on comments.postid = posts.id where comments.creationdate = '2010-07-19 19:19:56.0'
select posthistory.text from comments inner join posthistory on comments.postid = posthistory.postid where comments.creationdate = '2010-07-19 19:37:33.0'
select users.age from badges inner join users on badges.userid = users.id where users.location = 'Vienna , Austria'
sql placeholder
select users.views from badges inner join users on badges.userid = users.id where badges.date = '2010-07-19 19:39:08.0'
select badges.name from users inner join badges on users.id = badges.userid where users.reputation = ( select min ( reputation ) from users )
select badges.name from comments inner join badges on comments.userid = badges.userid where comments.userdisplayname = 'Sharpie'
select count ( users.id ) from badges inner join users on badges.userid = users.id where badges.name = 'Supporter' and users.age > 65
select distinct displayname from users where id = 30
select count ( id ) from users where location = 'New York City'
select count ( id ) from votes where strftime ( '%Y' , creationdate ) = '2010'
select count ( age ) from users where age between 19 and 65
select displayname from users order by views desc limit 1
select cast ( sum ( case when strftime ( '%Y' , creationdate ) = '2010' then 1 else 0 end ) as real ) / sum ( case when strftime ( '%Y' , creationdate ) = '2011' then 1 else 0 end ) from votes
sql placeholder
select count ( posts.id ) from posts inner join posthistory on posts.owneruserid = posthistory.userid where posts.ownerdisplayname = 'Daniel Vassallo'
select count ( votes.userid ) from users inner join votes on users.id = votes.userid where users.displayname = 'Harlan'
select posts.id from users inner join posts on users.id = posts.owneruserid where users.displayname = 'slashnick' group by posts.id order by count ( posts.answercount ) desc limit 1
select posts.ownerdisplayname from users inner join posts on users.id = posts.owneruserid inner join posthistory on posts.id = posthistory.userid where users.displayname = 'Harvey Motulsky' or users.displayname = 'Noah Snyder' group by posts.ownerdisplayname order by count ( posts.viewcount ) desc limit 1
sql placeholder
select count ( posts.score ) from posts inner join comments on posts.id = comments.postid where posts.score < 60 and comments.userdisplayname = 'Neil McGuigan'
select distinct tags.tagname from comments inner join posts on comments.userid = posts.id inner join tags on posts.id = tags.excerptpostid where posts.ownerdisplayname = 'Mark Meckes'
sql placeholder
select cast ( sum ( case when tags.tagname = 'r' then 1 else 0 end ) as real ) * 100 / count ( posts.id ) from posts inner join tags on posts.id = tags.excerptpostid
select ( select count ( viewcount ) from posts where ownerdisplayname = 'Mornington' ) - ( select count ( viewcount ) from posts where ownerdisplayname = 'Amos' ) as diff
select count ( userid ) from badges where name = 'commentator' and strftime ( '%Y' , date ) = '2014'
select count ( posts.id ) from posts inner join posthistory on posts.id = posthistory.postid where posthistory.creationdate between '2010-07-21 00:00:00' and '2012-07-21 23:59:59'
select displayname , age from users where views = ( select max ( views ) from users )
select lasteditdate , lasteditoruserid from posts where title = 'Detecting a given face in a database of facial images'
select count ( score ) from comments where userid = 13 and score < 60
select distinct posts.title , comments.userdisplayname from posts inner join comments on posts.id = comments.postid where comments.score > 60
select badges.name from badges inner join users on badges.userid = users.id where strftime ( '%Y' , badges.date ) = '2011' and users.location = 'North Pole'
select distinct users.displayname , users.websiteurl from posts inner join users on posts.id = users.id where posts.favoritecount > 150
select posts.id , posts.lasteditdate from tags inner join posts on tags.id = posts.id where tags.tagname = 'bayesian' order by posts.lasteditdate asc limit 1
select users.lastaccessdate , users.location from badges inner join users on badges.userid = users.id where badges.name = 'Outliers'
select posts.title from posts inner join postlinks on posts.id = postlinks.relatedpostid where posts.title = 'How to tell if something happened in a data set which monitors a value over time.'
select posthistory.postid , badges.name from badges inner join posthistory on badges.userid = posthistory.userid where posthistory.userdisplayname = 'Samuel' and strftime ( '%Y' , posthistory.creationdate ) = '2013'
select users.displayname from users inner join posts on users.id = posts.owneruserid order by posts.viewcount desc limit 1
select distinct users.displayname , users.location from posts inner join tags on posts.id = tags.excerptpostid inner join users on posts.owneruserid = users.id where tags.tagname = 'hypothesis-testing'
select posts.title , postlinks.linktypeid from posts inner join postlinks on posts.id = postlinks.relatedpostid where posts.score like 'What are principal component scores?'
select posts.ownerdisplayname from comments inner join posts on comments.postid = posts.id order by comments.score desc limit 1
select users.displayname , users.websiteurl from users inner join votes on users.id = votes.userid where votes.votetypeid = 8 order by votes.bountyamount desc limit 1
select title from posts order by viewcount desc limit 5
select count ( tagname ) from tags where count between 5000 and 7000
sql placeholder
select age from users where reputation = ( select max ( reputation ) from users )
select count ( postid ) from votes where strftime ( '%Y' , creationdate ) = '2011' and bountyamount = 50
select id from users where age = ( select min ( age ) from users )
select posts.score from comments inner join posts on comments.postid = posts.id order by posts.viewcount desc limit 1
sql placeholder
select votes.postid from votes inner join posts on votes.postid = posts.id where votes.userid = 1465 order by posts.favoritecount desc limit 1
select posts.title from posts inner join postlinks on posts.id = postlinks.postid order by posts.creaiondate asc limit 1
select users.displayname from comments inner join badges on comments.userid = badges.userid inner join users on badges.userid = users.id group by users.displayname order by count ( users.displayname ) desc limit 1
sql placeholder
select posts.creaiondate from users inner join posts on users.id = posts.id order by users.age asc limit 1
sql placeholder
select count ( posts.owneruserid ) from posts inner join users on posts.id = users.id where users.location = 'United Kingdom' and posts.favoritecount >= 4
select avg ( votes.postid ) from users inner join votes on users.id = votes.userid order by users.age desc limit 1
select displayname from users where reputation = ( select max ( reputation ) from users )
select count ( reputation ) from users where reputation > 2000 and views > 1000
select distinct displayname from users where age between 19 and 65
sql placeholder
select posts.id , posts.title from users inner join posts on users.id = posts.id where users.displayname = 'Harvey Motulsky' group by posts.id , posts.title order by count ( posts.viewcount ) desc limit 1
select posts.id , posts.title , posts.ownerdisplayname from comments inner join posts on comments.postid = posts.id order by comments.score desc limit 1
select avg ( comments.score ) from posts inner join comments on posts.id = comments.postid where posts.ownerdisplayname = 'Stephen Turner'
sql placeholder
select posts.id , posts.ownerdisplayname from posts inner join posthistory on posts.id = posthistory.postid where posthistory.creationdate = '2010' order by posts.favoritecount desc limit 1
sql placeholder
select cast ( count ( case when age between 13 and 18 then 1 else null end ) as real ) * 100 / count ( id ) from users
sql placeholder
select count ( id ) from posts where viewcount > ( select avg ( viewcount ) from posts )
select count ( postid ) from comments where score = ( select max ( score ) from posts )
select count ( posts.id ) from posts inner join users on posts.id = users.id where posts.viewcount > 3500 and posts.commentcount = 0
sql placeholder
select badges.name from comments inner join badges on comments.userid = badges.userid where comments.userdisplayname = 'Emmett' order by badges.date desc limit 1
select count ( id ) from users where upvotes > 5000 and age >= 19 and age < 65
sql placeholder
sql placeholder
select posthistory.text , posthistory.userdisplayname from posts inner join comments on posts.id = comments.postid inner join posthistory on posts.id = posthistory.postid where posts.title = 'Analysing wind data with R' order by comments.creationdate desc limit 1
select count ( userid ) from badges where name = 'Citizen Patrol'
select count ( posts.id ) from posts inner join tags on posts.id = tags.id where tags.tagname = 'careers'
select reputation , views from users where displayname = 'Jarrod Dixon'
select count ( posts.commentcount ) , posts.answercount from comments inner join posts on comments.postid = posts.id inner join posthistory on posts.id = posthistory.postid where posts.title = 'Clustering 1D data'
select creationdate from users where displayname = 'IrishStat'
select count ( postid ) from votes where bountyamount >= 30
select cast ( sum ( case when users.reputation > 50 then 1 else 0 end ) as real ) * 100 / count ( posts.id ) from posts inner join comments on posts.id = comments.postid inner join users on comments.userid = users.id where posts.score > 50
select count ( posts.id ) from posts inner join comments on posts.id = comments.postid where comments.score < 20
select count ( tagname ) from tags where id < 15 and count < 20
select excerptpostid , wikipostid from tags where tagname = 'sample'
select users.reputation , users.upvotes from comments inner join users on comments.userid = users.id where comments.text like 'fine , you win :)'
select distinct posthistory.text from comments inner join posts on comments.postid = posts.id inner join posthistory on posts.id = posthistory.postid where posts.title = 'How can I adapt ANOVA for binary data?'
select comments.text from posts inner join comments on posts.id = comments.postid where posts.viewcount between 100 and 150 order by comments.score desc limit 1
sql placeholder
select count ( posts.id ) from comments inner join posts on comments.postid = posts.id where comments.score = 0 and posts.viewcount < 5
select count ( score ) from posts where commentcount = 1 and score = 0
select count ( users.id ) from comments inner join users on comments.userid = users.id where comments.score = 0 and users.age = 40
select posts.id , comments.text from posts inner join comments on posts.id = comments.postid where posts.title = 'Group differences on a five point Likert item'
select users.upvotes from comments inner join users on comments.userid = users.id inner join votes on votes.userid = users.id where comments.text = 'R is also lazy evaluated.'
select posthistory.text from comments inner join posthistory on comments.userid = posthistory.userid where comments.userdisplayname = 'Harvey Motulsky'
select comments.userdisplayname from comments inner join users on comments.userid = users.id where comments.score between 1 and 5 and users.downvotes = 0
select cast ( sum ( case when users.upvotes = 0 then 1 else 0 end ) as real ) * 100 / count ( users.upvotes ) from users inner join comments on users.id = comments.userid where comments.score between 5 and 10
select superpower.power_name from superhero inner join superpower on superhero.id = superpower.id where superhero.superhero_name = '3-D Man'
select count ( * ) from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on superpower.id = hero_power.power_id where superpower.power_name = 'Super Strength'
select count ( * ) from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on superpower.id = hero_power.power_id where superpower.power_name = 'Super Strength' and superhero.height_cm > 200
select superhero.full_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on superpower.id = hero_power.power_id where superpower.power_name > 15 group by superhero.full_name having count ( superhero.id ) > 15
select count ( superhero.id ) from superhero inner join colour on superhero.eye_colour_id = colour.id where colour.colour = 'Blue'
select colour.colour from superhero inner join colour on superhero.skin_colour_id = colour.id where superhero.superhero_name = 'Apocalypse'
select count ( * ) from superhero inner join hero_power on superhero.id = hero_power.power_id inner join colour on superhero.eye_colour_id = colour.id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Agility' and colour.colour = 'Blue'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join colour on superhero.hair_colour_id = colour.id inner join superpower on hero_power.power_id = superpower.id where colour.colour = 'Blue' and superhero.eye_colour_id = colour.id and superpower.power_name = 'Agility'
select count ( * ) from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics'
select superhero.full_name from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics' order by superhero.height_cm desc limit 1
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.superhero_name = 'Sauron'
select count ( * ) from superhero inner join colour on superhero.eye_colour_id = colour.id inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics' and colour.colour = 'Blue'
select avg ( superhero.height_cm ) from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics'
select cast ( count ( case when superpower.power_name = 'Super Strength' then 1 else null end ) as real ) * 100 / count ( * ) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join superpower on superhero.id = superpower.id where publisher.publisher_name = 'Marvel Comics'
select count ( * ) from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'DC Comics'
select publisher.publisher_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id inner join publisher on publisher.id = superhero.publisher_id where attribute.attribute_name = 'Speed' order by hero_attribute.attribute_value asc limit 1
select count ( * ) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join colour on superhero.eye_colour_id = colour.id where publisher.publisher_name = 'Marvel Comics' and colour.colour = 'Gold'
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.superhero_name = 'Blue Beetle II'
select count ( superhero.id ) from superhero inner join colour on superhero.hair_colour_id = colour.id where colour.colour = 'Blond'
select superhero.full_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Intelligence' order by hero_attribute.attribute_value asc limit 1
select race.race from race inner join superhero on race.id = superhero.race_id where superhero.superhero_name = 'Copycat'
select count ( * ) from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id where attribute.attribute_name = 'Durability' and hero_attribute.attribute_value < 50
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on superpower.id = hero_power.power_id where superpower.power_name = 'Death Touch'
sql placeholder
select superhero.superhero_name from superhero inner join superpower on superhero.id = superpower.id group by superhero.superhero_name order by count ( superpower.power_name ) desc limit 1
select count ( * ) from superhero inner join race on superhero.race_id = race.id where race.race = 'Vampire'
select cast ( sum ( case when alignment.alignment = 'Bad' then 1 else 0 end ) as real ) * 100 / count ( * ) , count ( * ) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join alignment on alignment.id = superhero.alignment_id where publisher.publisher_name = 'Marvel Comics'
select sum ( case when publisher.publisher_name = 'DC Comics' then 1 else 0 end ) - sum ( case when publisher.publisher_name = 'Marvel Comics' then 1 else 0 end ) as diff from superhero inner join publisher on superhero.publisher_id = publisher.id
select id from publisher where publisher_name = 'Star Trek'
select avg ( attribute_value ) from hero_attribute
select count ( * ) from superhero where full_name is null
select superhero.eye_colour_id from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.id = 75
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on superpower.id = hero_power.power_id where superhero.superhero_name = 'Deathlok'
select avg ( superhero.weight_kg ) from superhero inner join gender on superhero.gender_id = gender.id where gender.gender = 'Female'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join gender on superhero.gender_id = gender.id inner join superpower on superpower.id = hero_power.power_id where gender.gender = 'Male' limit 5
select superhero.superhero_name from superhero inner join race on superhero.race_id = race.id where race.race = 'Alien'
select superhero.full_name from superhero inner join hero_power on superhero.id = hero_power.hero_id where superhero.height_cm between 170 and 190 and superhero.eye_colour_id = 1
select superpower.power_name from superpower inner join hero_power on superpower.id = hero_power.power_id where hero_power.hero_id = 56
select superhero.full_name from superhero inner join race on superhero.race_id = race.id where race.race = 'Demi-God' limit 5
select count ( * ) from superhero inner join alignment on superhero.alignment_id = alignment.id where alignment.alignment = 'Bad'
select race.race from superhero inner join race on superhero.race_id = race.id where superhero.weight_kg = 169
select colour.colour from superhero inner join colour on superhero.hair_colour_id = colour.id inner join race on race.id = superhero.race_id where race.race = 'Human' and superhero.height_cm = 185
select superhero.eye_colour_id from superhero inner join colour on superhero.eye_colour_id = colour.id order by superhero.weight_kg desc limit 1
select cast ( count ( case when publisher.publisher_name = 'Marvel Comics' then 1 else null end ) as real ) * 100 / count ( * ) from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.height_cm between 150 and 180
select superhero.full_name from superhero inner join gender on superhero.gender_id = gender.id inner join superpower on superhero.id = superpower.id where gender.gender = 'Male' and superhero.weight_kg > ( select avg ( weight_kg ) * 0.79 from superhero ) * 0.79
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.power_id inner join superpower on superpower.id = hero_power.power_id group by superpower.power_name order by count ( superpower.power_name ) desc limit 1
select hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on attribute.id = hero_attribute.attribute_id where superhero.superhero_name = 'Abomination'
select superpower.power_name from hero_power inner join superpower on hero_power.power_id = superpower.id where hero_power.hero_id = 1
select count ( hero_power.hero_id ) from hero_power inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Stealth'
select superhero.full_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Strength' order by hero_attribute.attribute_value desc limit 1
select cast ( count ( superhero.id ) as real ) / count ( distinct superhero.id ) from superhero inner join colour on superhero.skin_colour_id = colour.id where colour.id = 1
select count ( * ) from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Dark Horse Comics'
select superhero.superhero_name from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on hero_attribute.hero_id = superhero.id inner join publisher on superhero.publisher_id = publisher.id where attribute.attribute_name = 'durability' and publisher.publisher_name = 'Dark Horse Comics' order by hero_attribute.attribute_value desc limit 1
select superhero.eye_colour_id from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.full_name = 'Abraham Sapien'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.power_id inner join superpower on superpower.id = hero_power.power_id where superpower.power_name = 'Flight'
select superhero.eye_colour_id , superhero.hair_colour_id , superhero.skin_colour_id from superhero inner join gender on superhero.gender_id = gender.id inner join colour on superhero.hair_colour_id = colour.id inner join publisher on publisher.id = superhero.publisher_id where gender.gender = 'Female' and publisher.publisher_name = 'Dark Horse Comics'
sql placeholder
select race.race from race inner join superhero on race.id = superhero.race_id where superhero.superhero_name = 'A-Bomb'
select cast ( sum ( iif ( gender.gender = 'Female' , 1 , 0 ) ) as real ) * 100 / count ( gender.id ) from superhero inner join gender on superhero.gender_id = gender.id inner join colour on colour.id = superhero.id
select superhero.superhero_name , race.race from superhero inner join race on superhero.race_id = race.id where superhero.full_name = 'Charles Chandler'
select gender.gender from superhero inner join gender on superhero.gender_id = gender.id where superhero.superhero_name = 'Agent 13'
select superhero.full_name from superhero inner join hero_power on superhero.id = hero_power.power_id inner join superpower on superpower.id = hero_power.power_id where superpower.power_name = 'Adaptation'
select count ( * ) from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on superpower.id = hero_power.power_id where superhero.superhero_name = 'Amazo'
select superpower.power_name from superpower inner join superhero on superpower.id = superhero.id inner join hero_power on superhero.id = hero_power.power_id where superhero.full_name = 'Hunter Zolomon'
select superhero.height_cm from superhero inner join colour on superhero.eye_colour_id = colour.id where colour.colour = 'Amber'
select superhero.superhero_name from superhero inner join colour on superhero.hair_colour_id = colour.id inner join hero_power on superhero.id = hero_power.power_id where colour.colour = 'Black'
select superhero.eye_colour_id from superhero inner join colour on superhero.skin_colour_id = colour.id where colour.colour = 'Gold'
select superhero.full_name from superhero inner join race on superhero.race_id = race.id where race.race = 'Vampire'
select superhero.superhero_name from superhero inner join alignment on superhero.alignment_id = alignment.id where alignment.alignment = 'Neutral'
select count ( hero_attribute.hero_id ) from hero_attribute inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Strength' order by hero_attribute.attribute_value desc limit 1
select race.race , alignment.alignment from race inner join superhero on race.id = superhero.race_id inner join alignment on alignment.id = superhero.alignment_id where superhero.superhero_name = 'Cameron Hicks'
select cast ( sum ( case when gender.gender = 'Female' then 1 else 0 end ) as real ) * 100 / count ( * ) from superhero inner join publisher on superhero.publisher_id = publisher.id inner join gender on superhero.gender_id = gender.id where publisher.publisher_name = 'Marvel Comics'
select avg ( superhero.weight_kg ) from superhero inner join race on superhero.race_id = race.id where race.race = 'Alien'
select sum ( case when full_name = 'Emil Blonsky' then weight_kg else 0 end ) - sum ( case when full_name = 'Charles Chandler' then weight_kg else 0 end ) from superhero
select avg ( superhero.height_cm ) from superhero inner join hero_power on superhero.id = hero_power.hero_id
select superpower.power_name from superhero inner join superpower on superhero.id = superpower.id where superhero.superhero_name = 'Abomination'
select count ( * ) from superhero inner join race on superhero.race_id = race.id inner join gender on gender.id = superhero.gender_id where gender.id = 1 and race.race = 'god/eternal'
select superhero.superhero_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Speed' order by hero_attribute.attribute_value desc limit 1
select count ( * ) from superhero inner join alignment on superhero.alignment_id = alignment.id where alignment.alignment = 'Neutral'
select attribute.attribute_name , hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on attribute.id = hero_attribute.attribute_id where superhero.superhero_name = '3-D Man'
sql placeholder
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.superhero_name in ( 'Hawkman' , 'Karate Kid' , 'Speedy' )
select count ( * ) from superhero inner join publisher on superhero.publisher_id = publisher.id where publisher.id = 1
select cast ( sum ( case when superhero.eye_colour_id = 7 then 1 else 0 end ) as real ) * 100 / count ( * ) from superhero inner join colour on superhero.eye_colour_id = colour.id inner join hero_power on superhero.id = hero_power.power_id
select cast ( sum ( case when gender.gender = 1 then 1 else 0 end ) as real ) / sum ( case when gender.gender = 2 then 1 else 0 end ) from superhero inner join gender on superhero.gender_id = gender.id
select superhero_name from superhero order by height_cm desc limit 1
select id from superpower where power_name = 'cryokinesis'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id where superhero.id = 294
select full_name from superhero where weight_kg in ( select weight_kg from superhero where weight_kg is null or weight_kg is null )
select superhero.eye_colour_id from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.full_name = 'Karen Beecher-Duncan'
select superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on superpower.id = hero_power.power_id where superhero.full_name = 'Hillary Parr'
select race.race from superhero inner join race on superhero.race_id = race.id where superhero.weight_kg = 108 and superhero.height_cm = 188
select publisher.publisher_name from superhero inner join publisher on superhero.publisher_id = publisher.id where superhero.id = 38
select race.race from superhero inner join race on superhero.race_id = race.id inner join hero_attribute on hero_attribute.hero_id = superhero.id inner join attribute on attribute.id = hero_attribute.attribute_id order by hero_attribute.attribute_value desc limit 1
select alignment.alignment , superpower.power_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join alignment on alignment.id = superhero.alignment_id inner join superpower on hero_power.power_id = superpower.id where superhero.superhero_name = 'Atom IV'
select superhero.full_name from superhero inner join colour on superhero.eye_colour_id = colour.id where colour.colour = 'Blue' limit 5
select cast ( sum ( hero_attribute.attribute_value ) as real ) / count ( * ) from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join alignment on hero_attribute.attribute_id = alignment.id inner join attribute on attribute.id = hero_attribute.attribute_id where alignment.alignment = 'Neutral'
select colour.colour from attribute inner join hero_attribute on attribute.id = hero_attribute.attribute_id inner join superhero on hero_attribute.hero_id = superhero.id inner join colour on superhero.skin_colour_id = colour.id where hero_attribute.attribute_value = 100
select count ( * ) from superhero inner join gender on superhero.gender_id = gender.id inner join alignment on superhero.alignment_id = alignment.id where gender.gender = 'Female' and alignment.alignment = 'Good'
select superhero.superhero_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where hero_attribute.attribute_value between 75 and 80
select race.race from superhero inner join race on superhero.race_id = race.id inner join colour on superhero.hair_colour_id = colour.id inner join gender on gender.id = superhero.gender_id where gender.gender = 'Male' and colour.colour = 'blue'
select cast ( sum ( case when gender.gender = 2 then 1 else 0 end ) as real ) * 100 / count ( * ) from superhero inner join alignment on superhero.alignment_id = alignment.id inner join gender on superhero.gender_id = gender.id where alignment.alignment = 'Bad'
select sum ( case when colour.id = 7 then 1 else 0 end ) - sum ( case when colour.id = 1 then 1 else 0 end ) from superhero inner join colour on superhero.eye_colour_id = colour.id
select hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on attribute.id = hero_attribute.attribute_id where superhero.superhero_name = 'Hulk' and attribute.attribute_name = 'Strength'
select superpower.power_name from superhero inner join superpower on superhero.id = superpower.id where superhero.superhero_name = 'Ajax'
select count ( * ) from superhero inner join colour on superhero.skin_colour_id = colour.id inner join alignment on superhero.alignment_id = alignment.id where colour.colour = 'Green'
select count ( * ) from superhero inner join gender on superhero.gender_id = gender.id inner join publisher on publisher.id = superhero.publisher_id where gender.gender = 'Female' and publisher.publisher_name = 'Marvel Comics'
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join superpower on superpower.id = hero_power.power_id where superpower.power_name = 'Wind Control' order by superhero.superhero_name asc
select gender.gender from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join gender on superhero.gender_id = gender.id inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Phoenix Force'
select superhero.superhero_name from superhero inner join publisher on superhero.publisher_id = publisher.id inner join superpower on superhero.id = superpower.id where publisher.publisher_name = 'DC Comics' order by superhero.weight_kg desc limit 1
select avg ( superhero.height_cm ) from superhero inner join race on superhero.race_id = race.id inner join publisher on publisher.id = superhero.publisher_id where publisher.publisher_name = 'Dark Horse Comics' and race.race < 'Human'
select count ( * ) from hero_attribute inner join attribute on hero_attribute.attribute_id = attribute.id where attribute.attribute_name = 'Speed'
select sum ( case when publisher.publisher_name = 'DC Comics' then 1 else 0 end ) - sum ( case when publisher.publisher_name = 'Marvel Comics' then 1 else 0 end ) as diff from superhero inner join publisher on superhero.publisher_id = publisher.id
select attribute.attribute_name from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on hero_attribute.attribute_id = attribute.id where superhero.superhero_name = 'Black Panther' order by hero_attribute.attribute_value asc limit 1
select superhero.eye_colour_id from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.superhero_name = 'Abomination'
select full_name from superhero order by height_cm desc limit 1
select superhero.superhero_name from superhero inner join hero_power on superhero.id = hero_power.hero_id where superhero.full_name = 'Charles Chandler'
select cast ( count ( case when gender.gender = 'Female' then 1 else null end ) as real ) * 100 / count ( * ) from superhero inner join gender on superhero.gender_id = gender.id inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'George Lucas'
select cast ( sum ( case when alignment.alignment = 'Good' then 1 else 0 end ) as real ) * 100 / count ( * ) from superhero inner join alignment on superhero.alignment_id = alignment.id inner join publisher on superhero.publisher_id = publisher.id where publisher.publisher_name = 'Marvel Comics'
select count ( * ) from superhero where full_name like 'John%'
select hero_id from hero_attribute order by attribute_value asc limit 1
select superhero.full_name from superhero inner join hero_power on superhero.id = hero_power.hero_id inner join race on race.id = superhero.race_id where superhero.superhero_name = 'Alien'
select superhero.full_name from superhero inner join colour on superhero.eye_colour_id = colour.id inner join hero_power on superhero.id = hero_power.hero_id where superhero.weight_kg < 100 and colour.colour = 'Brown'
select hero_attribute.attribute_value from superhero inner join hero_attribute on superhero.id = hero_attribute.hero_id inner join attribute on attribute.id = hero_attribute.attribute_id where superhero.superhero_name = 'Aquababy'
select superhero.weight_kg , race.race from superhero inner join race on superhero.race_id = race.id where superhero.id = 40
select avg ( superhero.height_cm ) from superhero inner join alignment on superhero.alignment_id = alignment.id where alignment.alignment = 'Neutral'
select hero_power.hero_id from hero_power inner join superpower on hero_power.power_id = superpower.id where superpower.power_name = 'Intelligence'
select colour.colour from superhero inner join colour on superhero.eye_colour_id = colour.id where superhero.superhero_name = 'Blackwulf'
sql placeholder
select drivers.driverref from drivers inner join qualifying on drivers.driverid = qualifying.driverid where qualifying.raceid = 18 order by qualifying.q1 desc limit 5
select drivers.surname from laptimes inner join qualifying on laptimes.driverid = qualifying.driverid inner join drivers on drivers.driverid = qualifying.driverid where laptimes.raceid = 19 and qualifying.q2 = 'second qualifying period' order by laptimes.time asc limit 1
select races.year from races inner join circuits on races.circuitid = circuits.circuitid where circuits.location = 'Shanghai'
select races.url from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Circuit de Barcelona-Catalunya'
select races.name from races inner join circuits on races.circuitid = circuits.circuitid where circuits.country = 'Germany'
select circuits.location from circuits inner join constructors on circuits.circuitref = constructors.constructorid where constructors.name = 'Renault'
select count ( races.raceid ) from circuits inner join races on circuits.circuitid = races.circuitid inner join seasons on races.year = seasons.year where races.year = 2010 and circuits.country = 'Europe' and strftime ( '%Y' , races.date ) = '2010'
select races.name from circuits inner join races on circuits.circuitid = races.circuitid where circuits.country = 'Spain'
select circuits.lat , circuits.lng from races inner join circuits on races.circuitid = circuits.circuitid where races.name = 'Australian Grand Prix'
select races.url from circuits inner join races on circuits.circuitid = races.circuitid where circuits.name = 'Sepang International Circuit'
select races.time from races inner join circuits on races.circuitid = circuits.circuitid inner join results on results.raceid = races.raceid where circuits.name = 'Sepang International Circuit'
select circuits.lat , circuits.lng from races inner join circuits on races.circuitid = circuits.circuitid where races.name = 'Abu Dhabi Grand Prix'
sql placeholder
select results.resultid from results inner join drivers on results.driverid = drivers.driverid inner join qualifying on results.raceid = qualifying.raceid where drivers.forename = 'Senna' and drivers.surname = 'Bruno' and qualifying.raceid = 354
sql placeholder
sql placeholder
select count ( distinct drivers.driverref ) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Bahrain Grand Prix' and races.year = 2007
select races.year , races.date from races inner join results on races.raceid = results.raceid where results.raceid = 901
select count ( distinct drivers.driverid ) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.year = '2015-11-29' and results.time = 'Game'
select drivers.dob from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.raceid = 592 order by races.time asc limit 1
sql placeholder
select drivers.surname from drivers inner join results on drivers.driverid = results.driverid inner join laptimes on results.raceid = laptimes.raceid where results.raceid = 933 order by results.fastestlapspeed desc limit 1
select circuits.lat , circuits.lng from races inner join circuits on races.circuitid = circuits.circuitid where races.name = 'Malaysian Grand Prix'
select constructors.url from results inner join constructorstandings on results.constructorid = constructorstandings.constructorid inner join constructorresults on results.constructorid = constructorresults.constructorid inner join constructors on constructorresults.constructorid = constructors.constructorid where results.raceid = 9 order by results.points desc limit 1
select results.resultid from drivers inner join qualifying on drivers.driverid = qualifying.driverid inner join results on results.raceid = qualifying.raceid where drivers.surname = 'Lucas' and drivers.forename = 'di Grassi' and results.raceid = 345
sql placeholder
sql placeholder
select results.time from laptimes inner join results on laptimes.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.forename = 'Bruce' and drivers.surname = 'McLaren' and results.raceid = 743
select results.position from races inner join results on races.raceid = results.raceid where races.name = 'San Marino Grand Prix' and races.year = 2006 and results.position = 2
select races.year , races.date from races inner join results on races.raceid = results.raceid where results.raceid = 901
select count ( drivers.driverid ) from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where races.date = '2015-11-29' and results.statusid = 'Finished'
select drivers.driverref from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.raceid = 872 order by drivers.dob desc limit 1
select drivers.surname from laptimes inner join results on laptimes.driverid = results.driverid inner join drivers on results.driverid = drivers.driverid where laptimes.raceid = 348 order by laptimes.time asc limit 1
select drivers.nationality from results inner join drivers on results.driverid = drivers.driverid inner join laptimes on results.driverid = laptimes.driverid where results.raceid = 348 order by results.fastestlapspeed desc limit 1
sql placeholder
select cast ( sum ( case when races.time = 8 then 1 else 0 end ) as real ) * 100 / count ( results.driverid ) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.year = '1983-07-16'
select year from races where name = 'Singapore Grand Prix' order by date asc limit 1
select count ( raceid ) from races where year = 2005
select name , name from races where date = ( select min ( date ) from races where date = ( select min ( date ) from races where date = date ) and year = ( select min ( date ) from races where date = date ) )
select name , round from races where year = 1999 order by round desc limit 1
select year from races group by year order by round desc limit 1
select name from races where year = 2017 and date not in ( select date from races where year = 2000 )
select circuits.country , circuits.location from races inner join circuits on races.circuitid = circuits.circuitid where races.name = 'European Grand Prix' order by races.year asc limit 1
select races.year from circuits inner join races on circuits.circuitid = races.circuitid inner join seasons on races.year = seasons.year where circuits.name = 'Brands Hatch' order by races.year desc limit 1
select count ( races.year ) from races inner join circuits on races.circuitid = circuits.circuitid inner join seasons on races.year = seasons.year where circuits.name = 'Silverstone Circuit' and races.name = 'United Kindom'
select drivers.driverref , results.position from results inner join drivers on results.driverid = drivers.driverid inner join races on results.raceid = races.raceid inner join driverstandings on races.raceid = driverstandings.raceid where races.name = 'Singapore Grand Prix' and results.positionorder = '2010' order by results.positiontext desc limit 1
select drivers.forename , drivers.surname from results inner join drivers on results.driverid = drivers.driverid inner join driverstandings on drivers.driverid = driverstandings.driverstandingsid order by driverstandings.points desc limit 1
sql placeholder
select laptimes.time , drivers.driverref , races.name from laptimes inner join races on laptimes.raceid = races.raceid inner join drivers on drivers.driverid = laptimes.driverid where laptimes.time is not null order by laptimes.time asc limit 1
sql placeholder
sql placeholder
sql placeholder
select 2022 , dob , surname from drivers where nationality = 'Japanese' and dob = ( select max ( dob ) from drivers where nationality = 'Japanese' )
select circuits.name from races inner join circuits on races.circuitid = circuits.circuitid where races.year between 1990 and 2000 limit 4
select circuits.name , circuits.location , races.name from races inner join circuits on races.circuitid = circuits.circuitid where races.year = 2006 and circuits.country = 'USA'
select races.name , circuits.name , circuits.location from circuits inner join races on circuits.circuitid = races.circuitid inner join laptimes on races.raceid = laptimes.raceid where races.year = 2005 and strftime ( '%Y' , races.date ) = '2005'
sql placeholder
select count ( results.driverid ) from circuits inner join races on circuits.circuitid = races.circuitid inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.surname = 'Michael' and circuits.name = 'sepang International Circuit' and drivers.forename = 'Schumacher'
select races.name , races.year from laptimes inner join races on laptimes.raceid = races.raceid inner join drivers on drivers.driverid = laptimes.driverid inner join results on races.raceid = results.raceid where drivers.forename = 'Michael' and drivers.surname = 'Schumacher' order by laptimes.milliseconds asc limit 1
select cast ( sum ( results.points ) as real ) / count ( results.points ) from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid where drivers.surname = 'irvine' and drivers.driverref = 'irvine' and races.year = 2000
select races.name , results.points from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.surname = 'Lewis' and drivers.forename = 'Hamilton' order by races.year asc limit 1
select races.name , circuits.country from circuits inner join races on circuits.circuitid = races.circuitid inner join seasons on races.year = seasons.year where races.year = 2017 order by races.date desc
select races.name , races.year , circuits.location from laptimes inner join races on laptimes.raceid = races.raceid inner join circuits on races.circuitid = circuits.circuitid where races.raceid = 1 group by races.name , races.year , circuits.location order by count ( races.raceid ) desc limit 1
sql placeholder
select lat , lng from circuits where name = 'Silverstone Circuit'
sql placeholder
select circuitref from circuits where name = 'Marina Bay Street Circuit'
select country from circuits where alt = ( select max ( alt ) from circuits )
select count ( driverid ) from drivers where code is null
select country from circuits where country = ( select min ( dob ) from drivers )
select surname from drivers where nationality = 'italian'
select url from drivers where surname = 'Davidson' and forename = 'Anthony'
select driverref from drivers where surname = 'Hamilton' and forename = 'Lewis'
select circuits.name from races inner join circuits on races.circuitid = circuits.circuitid where races.name = 'Spanish Grand Prix' and races.year = 2009
select races.year from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Silverstone Circuit'
select races.name from races inner join circuits on races.circuitid = circuits.circuitid where circuits.name = 'Silverstone Circuit'
select races.time from races inner join circuits on races.circuitid = circuits.circuitid inner join results on results.raceid = races.raceid where circuits.location = 'Abu Dhabi' and races.year = 2010
select count ( races.raceid ) from races inner join circuits on races.circuitid = circuits.circuitid where circuits.country = 'Italy'
select races.date from circuits inner join races on circuits.circuitid = races.circuitid inner join results on races.raceid = results.raceid where circuits.name = 'Barcelona-Catalunya'
select circuits.url from races inner join circuits on races.circuitid = circuits.circuitid where races.year = 2009 and races.name = 'Spanish Grand Prix'
select min ( results.fastestlaptime ) from laptimes inner join results on laptimes.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.surname = 'Hamilton' and drivers.forename = 'Lewis'
select drivers.forename , drivers.surname from results inner join drivers on results.driverid = drivers.driverid where results.fastestlapspeed = 0
select drivers.driverref from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and results.rank = 1 and races.year = 2008
select races.name from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.surname = 'Hamilton' and drivers.forename = 'Lewis'
select races.name from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.surname = 'Lewis' and drivers.forename = 'Hamilton' order by results.rank desc limit 1
select max ( results.fastestlapspeed ) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Spanish Grand Prix' and races.year = 2009
select distinct races.year from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.surname = 'Hamilton' and drivers.forename = 'Lewis'
sql placeholder
select drivers.forename , drivers.surname from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and results.grid = 4 and results.grid = 4
select count ( distinct drivers.number ) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and results.time is not null
select laptimes.lap from laptimes inner join results on laptimes.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid inner join races on laptimes.raceid = races.raceid where races.name = 'Australian Grand Prix' and drivers.surname = 'Lewis' and drivers.forename = 'Lewis'
select results.time from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and races.year = 2008 and results.rank = 2
select drivers.surname , drivers.url from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and results.time = '2008'
select count ( drivers.driverid ) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and drivers.nationality = 'American' and drivers.number = '1'
select count ( distinct results.driverid ) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and results.time = 1 and results.raceid = 1 and results.time = 1
select sum ( results.points ) from drivers inner join results on drivers.driverid = results.driverid where drivers.surname = 'Lewis' and drivers.forename = 'Lewis'
select avg ( results.fastestlaptime ) from laptimes inner join results on laptimes.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.surname = 'Lewis' and drivers.forename = 'Lewis' group by laptimes.time
select cast ( sum ( case when laptimes.time is not null then 1 else 0 end ) as real ) * 100 / count ( laptimes.driverid ) from laptimes inner join races on laptimes.raceid = races.raceid where races.name = 'Australian Grand Prix' and races.year = '2008'
select cast ( ( sum ( results.time - results.driverid ) - sum ( results.time ) ) as real ) * 100 / sum ( results.time ) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where races.name = 'Australian Grand Prix' and races.year = 2008
select count ( name ) from circuits where location = 'Melbourne' and country = 'Australia'
select location from circuits where country = 'USA'
select count ( driverid ) from drivers where nationality = 'British' and strftime ( '%Y' , dob ) > '1980'
select cast ( sum ( results.points ) as real ) / count ( results.points ) from results inner join constructorstandings on results.constructorid = constructorstandings.constructorid inner join constructors on constructors.constructorid = constructors.constructorid where constructors.nationality = 'British'
select constructors.name from results inner join constructorstandings on results.constructorid = constructorstandings.constructorid inner join constructors on constructorstandings.constructorid = constructors.constructorid order by results.points desc limit 1
select distinct constructors.name from results inner join constructors on results.constructorid = constructors.constructorid inner join constructorresults on results.constructorid = constructorresults.constructorid where results.raceid = 18 and constructorresults.points = 0 and constructorresults.raceid = 18
sql placeholder
select constructors.name from results inner join constructors on results.constructorid = constructors.constructorid where results.rank = 1
select count ( constructors.name ) from results inner join constructors on results.constructorid = constructors.constructorid where results.laps > 50 and constructors.nationality = 'France'
select cast ( sum ( case when races.year is not null then 1 else 0 end ) as real ) * 100 / count ( races.raceid ) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.nationality = 'Japanese' and races.year between 2007 and 2009
select cast ( sum ( laptimes.milliseconds ) as real ) / count ( results.statusid ) from races inner join results on races.raceid = results.raceid inner join laptimes on results.raceid = laptimes.raceid where races.year is not null group by races.year
select drivers.forename , drivers.surname from drivers inner join results on drivers.driverid = results.driverid where results.rank = 2 and strftime ( '%Y' , drivers.dob ) > '1975'
select count ( distinct drivers.driverid ) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where results.time is null
select drivers.forename , drivers.surname from laptimes inner join drivers on laptimes.driverid = drivers.driverid inner join results on results.driverid = laptimes.driverid order by results.fastestlaptime desc limit 1
sql placeholder
select avg ( results.fastestlapspeed ) from races inner join results on races.raceid = results.raceid where races.name = 'Spanish Grand Prix' and races.year = 2009
select races.name , races.year from laptimes inner join races on laptimes.raceid = races.raceid where laptimes.milliseconds is not null order by laptimes.milliseconds asc limit 1
select cast ( sum ( case when laptimes.lap > 50 then 1 else 0 end ) as real ) * 100 / count ( laptimes.driverid ) from laptimes inner join drivers on laptimes.driverid = drivers.driverid where drivers.dob < 1985
select count ( drivers.driverid ) from laptimes inner join drivers on laptimes.driverid = drivers.driverid where drivers.nationality = 'France' and laptimes.lap < 120
select code from drivers where nationality = 'America'
select count ( raceid ) from races where year = 2009
select count ( drivers.driverid ) from results inner join drivers on results.driverid = drivers.driverid where results.raceid = 18
select code , dob from drivers order by dob desc limit 3
select driverref from drivers where surname = 'Kubica'
select count ( driverid ) from drivers where nationality = 'Australian' and strftime ( '%Y' , dob ) = '1980'
select drivers.driverref from laptimes inner join drivers on laptimes.driverid = drivers.driverid where strftime ( '%Y' , laptimes.time ) between '1980' and '1990' order by laptimes.time asc limit 3
select driverref from drivers where nationality = 'German' order by dob asc limit 1
select drivers.driverid , drivers.code from laptimes inner join results on laptimes.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.dob = 1971 and results.fastestlaptime = '1'
select drivers.driverid from laptimes inner join drivers on laptimes.driverid = drivers.driverid where drivers.nationality = 'Spanish' and drivers.dob < 1982 order by laptimes.time desc limit 10
select distinct races.year from laptimes inner join races on laptimes.raceid = races.raceid inner join results on races.raceid = results.raceid where results.fastestlaptime = '1'
select distinct races.year from results inner join races on results.raceid = races.raceid where results.time = ( select max ( time ) from laptimes )
select drivers.driverid from drivers inner join results on drivers.driverid = results.driverid inner join laptimes on results.raceid = laptimes.raceid order by laptimes.time asc limit 5
select count ( distinct results.statusid ) from results inner join status on results.statusid = status.statusid where results.raceid > 50 and results.raceid < 100 and status.status = 2
select count ( circuits.circuitid ) , circuits.location , circuits.lng from circuits inner join races on circuits.circuitid = races.circuitid where circuits.country = 'Australia'
select races.raceid from races inner join results on races.raceid = results.raceid group by races.raceid order by count ( results.time ) desc limit 1
select drivers.driverref , drivers.nationality , drivers.dob from drivers inner join qualifying on drivers.driverid = qualifying.driverid where qualifying.raceid = 23 and qualifying.q2 is not null
select races.year , races.name , races.date , races.time from races inner join qualifying on races.raceid = qualifying.raceid inner join drivers on qualifying.driverid = drivers.driverid order by drivers.dob desc limit 1
select count ( results.driverid ) from results inner join drivers on results.driverid = drivers.driverid where results.statusid = 2 and drivers.nationality = 'American'
select results.points , constructors.url from results inner join constructorresults on results.constructorid = constructorresults.constructorid inner join constructors on constructorresults.constructorid = constructors.constructorid where constructors.nationality = 'Italian' order by results.points desc limit 1
select constructors.url from results inner join constructorstandings on results.constructorid = constructorstandings.constructorid inner join constructors on constructorstandings.constructorid = constructors.constructorid group by constructors.name order by count ( constructorstandings.wins ) desc limit 1
select drivers.driverref from drivers inner join laptimes on drivers.driverid = laptimes.driverid inner join races on laptimes.raceid = races.raceid where races.name = 'French Grand Prix' order by laptimes.time desc limit 1
select races.name from laptimes inner join races on laptimes.raceid = races.raceid where laptimes.milliseconds is not null order by laptimes.milliseconds asc limit 1
select cast ( sum ( laptimes.time ) as real ) / count ( laptimes.driverid ) from laptimes inner join results on laptimes.raceid = results.raceid where results.rank < 11 and laptimes.lap is not null group by results.driverid order by sum ( laptimes.time ) desc limit 10
select drivers.driverid from pitstops inner join drivers on pitstops.driverid = drivers.driverid where drivers.nationality = 'German' and pitstops.time between '1980' and '1985' order by pitstops.duration asc limit 5
select results.time from races inner join results on races.raceid = results.raceid where races.name = 'Canadian Grand Prix' and races.year = 2008 and results.time = 'hour: minutes: seconds.millionsecond'
select constructors.name , constructors.url from races inner join constructors on races.raceid = constructors.constructorid where races.name = 'Singapore Grand Prix' and races.year = 2009 order by races.time desc limit 1
select forename , surname , dob from drivers where nationality = 'Austria' and strftime ( '%Y' , dob ) between '1981' and '1991'
select forename , surname , dob from drivers where nationality = 'German' and strftime ( '%Y' , dob ) between '1971' and '1985' order by dob desc
select location , country , lng from circuits where name = 'Hungaroring'
select distinct results.points , constructors.name , constructors.nationality from races inner join results on races.raceid = results.raceid inner join constructorresults on results.constructorid = constructorresults.constructorid inner join constructors on constructorresults.constructorid = constructorresults.constructorid where races.name = 'Monaco Grand Prix' and races.year between 1980 and 2010
select cast ( sum ( results.points ) as real ) / count ( results.driverid ) from races inner join results on races.raceid = results.raceid inner join drivers on results.driverid = drivers.driverid where drivers.surname = 'Lewis' and races.name = 'Turkish Grand Prix'
select cast ( sum ( year ) as real ) / count ( raceid ) from races where date between '2000-01-01' and '2010-12-31'
select nationality from drivers group by nationality order by count ( nationality ) desc limit 1
select driverstandings.wins from results inner join driverstandings on results.driverid = driverstandings.driverid where results.points = 91
select races.name from races inner join results on races.raceid = results.raceid where results.fastestlaptime = ( select min ( fastestlaptime ) from results )
select circuits.location , circuits.country from races inner join circuits on races.circuitid = circuits.circuitid where races.date = ( select max ( date ) from races )
select drivers.forename , drivers.surname from drivers inner join qualifying on drivers.driverid = qualifying.driverid inner join races on qualifying.raceid = races.raceid where races.year = 2008 and races.circuitid = 'Marina Bay Street Circuit' order by qualifying.q3 asc limit 1
select drivers.forename , drivers.nationality , races.name from races inner join drivers on races.raceid = drivers.driverid order by drivers.dob desc limit 1
select count ( results.statusid ) from drivers inner join results on drivers.driverid = results.driverid inner join races on results.raceid = races.raceid inner join status on results.statusid = status.statusid where races.name = 'Canadian Grand Prix' and drivers.driverref = 'Driverref' group by results.statusid order by count ( results.statusid ) desc limit 1
select driverstandings.wins , drivers.forename , drivers.surname from results inner join driverstandings on results.driverid = driverstandings.driverid inner join drivers on driverstandings.driverid = drivers.driverid order by drivers.dob asc limit 1
select pitstops.time from pitstops inner join drivers on pitstops.driverid = drivers.driverid order by pitstops.duration desc limit 1
select laptimes.time from laptimes inner join races on laptimes.raceid = races.raceid inner join circuits on races.circuitid = circuits.circuitid where circuits.name is not null order by laptimes.lap desc limit 1
select pitstops.time from pitstops inner join drivers on pitstops.driverid = drivers.driverid where drivers.surname = 'Hamilton' and drivers.forename = 'Lewis' order by pitstops.duration desc limit 1
select laptimes.lap from laptimes inner join drivers on laptimes.driverid = drivers.driverid inner join races on laptimes.raceid = races.raceid where races.name = 'Australian Grand Prix' and drivers.surname = 'Lewis'
select pitstops.duration from pitstops inner join races on pitstops.raceid = races.raceid where races.name = 'Australian Grand Prix' and races.year = 2011
select laptimes.time from laptimes inner join drivers on laptimes.driverid = drivers.driverid inner join races on laptimes.raceid = races.raceid where drivers.surname = 'Lewis' and drivers.forename = 'Lewis'
select drivers.surname , drivers.forename from laptimes inner join drivers on laptimes.driverid = drivers.driverid inner join results on laptimes.raceid = results.raceid where laptimes.time = ( select min ( time ) from laptimes )
select laptimes.position from laptimes inner join drivers on laptimes.driverid = drivers.driverid inner join races on races.raceid = laptimes.raceid where drivers.surname = 'Lewis' and drivers.forename = 'Lewis' order by laptimes.time asc limit 1
select laptimes.lap from laptimes inner join races on laptimes.raceid = races.raceid inner join circuits on races.circuitid = circuits.circuitid where races.name = 'Austria'
sql placeholder
select races.name from laptimes inner join races on laptimes.raceid = races.raceid inner join circuits on circuits.circuitid = races.circuitid where circuits.name = 'Austria' and laptimes.lap = '1'
select laptimes.time from laptimes inner join races on laptimes.raceid = races.raceid inner join pitstops on races.circuitid = pitstops.raceid where races.name = 'Austria' order by laptimes.time desc limit 1
sql placeholder
select avg ( pitstops.milliseconds ) from pitstops inner join drivers on pitstops.driverid = drivers.driverid where drivers.surname = 'Lewis' and drivers.forename = 'Hamilton'
sql placeholder
select player.player_name , player_attributes.player_api_id from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_api_id order by player_attributes.overall_rating desc limit 1
select height , player_name from player order by height desc limit 1
select preferred_foot from player_attributes order by potential asc limit 1
select count ( id ) from player_attributes where overall_rating between 60 and 65 and defensive_work_rate = 'low'
select player.player_name , player_attributes.player_api_id from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_api_id order by player_attributes.crossing desc limit 5
select t.name from ( select league.name , sum ( match.home_team_goal ) as num from match inner join league on match.league_id = league.name where match.season = '2016' group by match.away_team_goal ) as t order by t.num desc limit 1
select home_team_goal , away_team_goal from match where season = 2016 and home_team_goal = 0 group by home_team_goal order by count ( home_team_goal ) asc limit 1
select player.player_name from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id order by player_attributes.penalties desc limit 10
select match.away_team_api_id from match inner join league on match.league_id = league.id where league.name = 'Scotland Premier League' and match.season = 2010 group by match.away_team_api_id order by sum ( match.away_team_goal - match.home_team_goal ) > 0 desc limit 1
select team_attributes.buildupplayspeed from team_attributes inner join team on team_attributes.team_api_id = team.team_api_id inner join match on team.team_fifa_api_id = match.home_team_api_id order by team_attributes.buildupplayspeed desc limit 4
select t.name from ( select league.name , sum ( match.home_team_goal ) as num from match inner join league on match.league_id = league.name where match.season = '2016' group by match.league_id ) as t order by t.num desc limit 1
select player.birthday - player_attributes.date from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player_attributes.sprint_speed >= 97 and player_attributes.date between '2013-01-01 00:00:00' and '2015-12-31 00:00:00'
select league.name , count ( match.league_id ) from match inner join league on match.league_id = league.id group by league.name order by count ( match.league_id ) desc limit 1
select avg ( height ) from player where birthday between '1990-01-01 00:00:00' and '1996-01-01 00:00:00'
select player.id from player_attributes inner join player on player_attributes.player_api_id = player.player_api_id where player_attributes.date like '%2010%' order by player_attributes.overall_rating desc limit 1
select team.team_fifa_api_id from team inner join team_attributes on team.team_api_id = team_attributes.team_fifa_api_id where team_attributes.buildupplayspeed between 51 and 59
select team.team_long_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id inner join match on team.team_fifa_api_id = match.home_team_api_id where team_attributes.buildupplaypassing is not null group by team.team_long_name order by count ( team_attributes.buildupplaypassing ) desc limit 1
select cast ( sum ( case when player_attributes.preferred_foot = 'left' then 1 else 0 end ) as real ) * 100 / count ( player_attributes.player_fifa_api_id ) from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_fifa_api_id where player.birthday between '1987-01-01 00:00:00' and '1992-12-31 00:00:00'
select t.name from ( select league.name , sum ( match.home_team_goal ) as num from match inner join league on match.league_id = league.id group by match.away_team_goal ) as t order by t.num desc limit 5
select avg ( player_attributes.long_shots ) from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id where player.player_name = 'Ahmed Samir Farag'
select player.player_name from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id order by player_attributes.heading_accuracy / player_attributes.heading_accuracy desc limit 10
sql placeholder
select league.name from match inner join league on match.league_id = league.id where match.season = 2009/2010 and match.home_team_goal > ( select avg ( away_team_goal ) from match )
select team_short_name from team where team_long_name = 'Queens Park Rangers'
sql placeholder
select player_attributes.attacking_work_rate from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id where player.player_name = 'Franco Zennaro'
select team_attributes.buildupplaypositioningclass from team inner join team_attributes on team.team_api_id = team_attributes.team_fifa_api_id where team.team_long_name = 'ADO Den Haag'
select player_attributes.heading_accuracy from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_fifa_api_id where player_attributes.date = '2014-09-18 00:00:00' and player.player_name = 'Francois Affolter'
select player_attributes.overall_rating from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id where player.player_name = 'Gabriel Tamas' and strftime ( '%Y' , player_attributes.date ) = '2011'
select count ( match.league_id ) from match inner join league on match.league_id = league.id where league.name = 'Scotland Premier League' and match.season = 2015/2016
select player_attributes.preferred_foot from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id order by player.birthday desc limit 1
select player.player_name from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_api_id order by player_attributes.potential desc limit 1
select count ( player_attributes.id ) from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id inner join match on player.player_api_id = match.id where player.weight < 130 and player_attributes.preferred_foot = 'left'
select team.team_short_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id inner join match on team.team_fifa_api_id = match.home_team_api_id where team_attributes.chancecreationpassingclass = 'Risky'
select player_attributes.defensive_work_rate from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id where player.player_name = 'David Wilson'
select player.birthday from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id order by player_attributes.overall_rating desc limit 1
select league.name from match inner join league on match.league_id = league.country_id inner join country on country.id = league.country_id where country.name = 'Niederlande'
select avg ( match.home_team_goal ) from match inner join country on match.country_id = country.id where country.name = 'Poland' and match.season = '2010/2011'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id order by player_attributes.finishing desc , player.height desc limit 1
select player_name from player where height > 180
select count ( id ) from player where strftime ( '%Y' , birthday ) > '1990'
sql placeholder
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player_attributes.overall_rating > 80 and strftime ( '%Y' , player_attributes.date ) between '2008' and '2010'
select player_attributes.potential from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id inner join match on player_attributes.id = match.away_player_1 where player.player_name = 'Aaron Doran'
select player.player_name from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_fifa_api_id where player_attributes.preferred_foot = 'left'
sql placeholder
select team_attributes.buildupplaypassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_fifa_api_id where team.team_short_name = 'CLB'
select team.team_short_name from team inner join team_attributes on team.team_api_id = team_attributes.team_fifa_api_id inner join match on team.team_api_id = match.away_team_api_id where team_attributes.buildupplaypassing > 70 group by team.team_short_name
select avg ( player_attributes.overall_rating ) from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player.height > 170 and strftime ( '%Y' , player_attributes.date ) between '2010' and '2015'
select player_name from player order by height asc limit 1
select country.name from match inner join country on match.country_id = country.id inner join league on match.league_id = league.country_id where league.name = 'Italy Serie A'
select team.team_short_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id where team_attributes.buildupplayspeed = 31 and team_attributes.buildupplaydribbling = 53 and team_attributes.buildupplaypassing = 32
select avg ( player_attributes.overall_rating ) from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player.player_name = 'Aaron Doran'
select count ( match.league_id ) from match inner join league on match.league_id = league.id where league.name = 'Germany 1. Bundesliga' and strftime ( '%Y-%m' , match.date ) between '2008-08' and '2008-10'
select team.team_short_name from team inner join match on team.team_api_id = match.home_team_api_id where match.home_team_goal = 10
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id inner join match on player_attributes.id = match.id where player_attributes.potential = 61 order by player_attributes.balance desc limit 1
sql placeholder
select team_long_name from team where team_short_name = 'GEN'
select player_name from player where birthday in ( 'Aaron Lennon' , 'Abdelaziz Barrada' ) order by birthday asc limit 1
select player_name from player order by height desc limit 1
select count ( player_attributes.player_api_id ) from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_fifa_api_id where player_attributes.preferred_foot = 'left' and player_attributes.attacking_work_rate = 'low'
select country.name from match inner join country on match.country_id = country.id inner join league on match.league_id = league.country_id where league.name = 'Belgium Jupiler League'
select league.name from match inner join country on match.country_id = country.id inner join league on match.league_id = league.country_id where country.name = 'Germany'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id order by player_attributes.overall_rating desc limit 1
select count ( player.player_name ) from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id where player_attributes.defensive_work_rate = 'high' and strftime ( '%Y' , player.birthday ) < '1986'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player_attributes.crossing in ( 'Alexis' , 'Ariel Borysiuk' , 'Arouna Kone' ) order by player_attributes.crossing desc limit 1
select player_attributes.heading_accuracy from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_fifa_api_id where player.player_name = 'Ariel Borysiuk'
select count ( player.player_name ) from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id where player.height > 180 and player_attributes.volleys > 70
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player_attributes.volleys > 70 and player_attributes.dribbling > 70
select count ( match.id ) from match inner join country on country.id = match.country_id inner join league on match.country_id = league.country_id where match.season = 2008/2009 and country.name = 'Belgium'
select player_attributes.long_passing from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id order by player.birthday asc limit 1
select count ( match.league_id ) from match inner join league on match.league_id = league.id where league.name = 'Belgium Jupiler League' and strftime ( '%Y' , match.date ) = '2009'
select league.name from match inner join league on match.league_id = league.id where match.season = '2008/2009' group by league.name order by count ( league.name ) desc limit 1
select avg ( player_attributes.overall_rating ) from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where strftime ( '%Y' , player.birthday ) < '1986'
select cast ( ( sum ( case when player.player_name = 'Ariel Borysiuk' then player_attributes.overall_rating else 0 end ) - sum ( case when player.player_name = 'Paulin Puel' then 1 else 0 end ) ) as real ) * 100 / sum ( case when player.player_name = 'Paulin Puel' then 1 else 0 end ) from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_fifa_api_id
select avg ( team_attributes.buildupplayspeed ) from team inner join team_attributes on team.team_api_id = team_attributes.team_fifa_api_id inner join match on team.team_api_id = match.away_team_api_id where team.team_long_name = 'Heart of Midlothian'
select avg ( player_attributes.overall_rating ) from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id inner join match on player.player_api_id = match.id where player.player_name = 'Pietro Marino' group by player_attributes.overall_rating
select sum ( player_attributes.crossing ) from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_fifa_api_id where player.player_name = 'Aaron Lennox'
select max ( team_attributes.chancecreationpassing ) , team_attributes.chancecreationpassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_fifa_api_id inner join match on team.team_api_id = match.away_team_api_id where team.team_long_name = 'Ajax'
select player_attributes.preferred_foot from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id inner join match on player.player_api_id = match.id where player.player_name = 'Abdou Diallo' group by player_attributes.preferred_foot
select max ( player_attributes.overall_rating ) from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_fifa_api_id where player.player_name = 'Dorlan Pabon'
select avg ( match.away_team_goal ) from match inner join team on match.away_team_api_id = team.team_api_id inner join country on country.id = match.country_id where team.team_long_name = 'Parma' and country.name = 'Italy'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id where player_attributes.overall_rating = 77 and player_attributes.date = '2016-06-23' order by player.birthday asc limit 1
select player_attributes.overall_rating from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_fifa_api_id where player_attributes.date = '2016-02-04 00:00:00' and player.player_name = 'Aaron Mooy'
select player_attributes.potential from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id where player_attributes.date = '2010-08-30 00:00:00' and player.player_name = 'Francesco Parravicini'
select player_attributes.attacking_work_rate from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id where player_attributes.date = '2015-05-01 00:00:00' and player.player_name = 'Francesco Migliore'
select player_attributes.defensive_work_rate from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id where player_attributes.date = '2013-02-22 00:00:00' and player.player_name = 'Kevin Berigaud'
select match.date from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id inner join match on player_attributes.player_api_id = match.id where player.player_name = 'Kevin Constant' order by player_attributes.crossing desc limit 1
sql placeholder
select team_attributes.buildupplaydribblingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id inner join match on team.team_api_id = match.away_team_api_id where team.team_short_name = 'LEI' and team_attributes.date = '2015-09-10 00:00:00'
select team_attributes.buildupplaypassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_fifa_api_id inner join match on team.team_api_id = match.home_team_api_id where team.team_long_name = 'FC Lorient' and team_attributes.date = '2010-02-22'
select team_attributes.chancecreationpassingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_fifa_api_id inner join match on team.team_api_id = match.away_team_api_id where team.team_long_name = 'PEC Zwolle' and team_attributes.date = '2013-09-20 00:00:00'
select team_attributes.chancecreationcrossingclass from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id inner join player_attributes on team.team_api_id = player_attributes.id inner join match on team.team_api_id = match.home_team_api_id where team.team_long_name = 'Hull City' and team_attributes.date = '2010-02-22 00:00:00'
select team_attributes.defenceaggressionclass from team inner join team_attributes on team.team_api_id = team_attributes.team_fifa_api_id inner join match on team.team_api_id = match.home_team_api_id where team.team_long_name = 'Hannover 96' and team_attributes.date = '2015-09-10 00:00:00'
select avg ( player_attributes.overall_rating ) from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_fifa_api_id where player.player_name = 'Marko Arnautovic' and player_attributes.date between '2007-02-22 00:00:00' and '2016-04-21 00:00:00'
select cast ( ( sum ( case when player.player_name = 'Landon Donovan' then 1 else 0 end ) - sum ( case when player.player_name = 'Jordan Bowery' then 1 else 0 end ) ) as real ) * 100 / sum ( case when player.player_name = 'Landon Donovan' then 1 else 0 end ) from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_fifa_api_id where player_attributes.date = '2013-07-12'
select player_name from player order by height desc limit 5
select player_api_id from player order by weight desc limit 10
select player_name from player where birthday > 34 and datetime ( 'current_timestamp' - datetime ( 'localtime' ) ) > 35
select sum ( case when match.home_team_goal = 1 then 1 else 0 end ) from match inner join player on player.player_api_id = match.home_player_11
select sum ( case when player.player_name = 'Daan Smith' then match.away_team_goal else 0 end ) from match inner join player on player.player_api_id = match.away_team_api_id
sql placeholder
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id order by player_attributes.overall_rating desc limit 10
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id order by player_attributes.potential desc limit 1
select player.player_name from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id where player_attributes.attacking_work_rate = 'high'
select player.player_name from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id inner join match on player_attributes.id = match.id where player_attributes.finishing = 1 order by player_attributes.date - player.birthday desc limit 1
select player.player_name from player inner join league on player.player_fifa_api_id = league.country_id inner join country on country.id = league.country_id where country.name = 'Belgium'
select player.player_name , country.name from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_fifa_api_id inner join league on player_attributes.player_api_id = league.country_id inner join country on league.country_id = country.id where player_attributes.vision > 89
sql placeholder
select team.team_long_name from team inner join team_attributes on team.team_fifa_api_id = team_attributes.team_api_id where team_attributes.buildupplayspeedclass = 'Slow'
select team.team_short_name from team inner join team_attributes on team.team_api_id = team_attributes.team_api_id inner join match on team.team_fifa_api_id = match.home_team_api_id where team_attributes.chancecreationpassingclass = 'Safe'
select avg ( player.height ) from country inner join player on player.player_api_id = player.player_fifa_api_id inner join league on player.player_fifa_api_id = league.country_id where country.name = 'Italy'
select player_name from player where height > 180 order by height desc limit 3
select count ( * ) from player where birthday > '1990' and player_name like 'Aaron%'
select sum ( case when jumping = 6 then 1 else 0 end ) - sum ( case when jumping = 23 then 1 else 0 end ) from player_attributes
select player.id from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_api_id order by player_attributes.potential asc limit 3
select count ( * ) from player_attributes where preferred_foot = 'left' and potential = ( select max ( crossing ) from player_attributes )
select cast ( sum ( case when player_attributes.stamina > 80 then 1 else 0 end ) as real ) * 100 / count ( * ) from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_fifa_api_id
select country.name from match inner join country on match.country_id = country.id inner join league on match.league_id = league.country_id where league.name = 'Poland Ekstraklasa'
select home_team_goal from match where date like '2008-09-24%'
select player_attributes.sprint_speed , player_attributes.agility , player_attributes.acceleration from player inner join player_attributes on player.player_fifa_api_id = player_attributes.player_fifa_api_id where player.player_name = 'Alexis Blin'
select team_attributes.buildupplayspeedclass from team inner join team_attributes on team.team_api_id = team_attributes.team_fifa_api_id inner join match on team.team_api_id = match.home_team_api_id where team.team_long_name = 'KSV Cercle Brugge' and team_attributes.buildupplayspeedclass = 'Balanced' or team_attributes.buildupplayspeedclass = 'Fast'
select sum ( case when match.season = '2015-2016' then 1 else 0 end ) from match inner join league on match.league_id = league.id where league.name = 'Serie A'
select match.home_team_goal from match inner join league on match.league_id = league.country_id where league.name = 'Niederlande' order by match.home_team_goal desc limit 1
select player_attributes.finishing , player_attributes.curve from player inner join player_attributes on player.player_api_id = player_attributes.player_fifa_api_id order by player.weight desc limit 1
select league.name from league inner join match on league.id = match.league_id inner join team on team.team_long_name = match.home_team_api_id where match.season = '2015-2016' group by league.name order by count ( match.league_id ) desc limit 1
select team.team_long_name from match inner join team on team.team_api_id = match.away_team_api_id order by match.away_team_goal desc limit 1
select player.player_name from player_attributes inner join player on player_attributes.player_api_id = player.player_fifa_api_id order by player_attributes.overall_rating desc limit 1
select cast ( sum ( case when player_attributes.strength > 70 then 1 else 0 end ) as real ) * 100 / count ( * ) from player_attributes inner join player on player_attributes.player_fifa_api_id = player.player_fifa_api_id where player.height < 180 and player_attributes.strength > 70
select sum ( case when patient.admission = '+' then 1 else 0 end ) - sum ( case when patient.admission = '-' then 1 else 0 end ) as diff from patient inner join examination on patient.id = examination.id where patient.sex = 'M'
select cast ( sum ( case when sex = 'F' then 1 else 0 end ) as real ) * 100 / count ( id ) from patient where birthday > '1930'
select cast ( sum ( case when birthday between '1930-01-01' and '1940-12-31' then 1 else 0 end ) as real ) * 100 / count ( * ) from patient where admission = '+'
select cast ( count ( case when patient.diagnosis = 'SLE' then patient.id else null end ) as real ) / count ( case when patient.admission = '+' then patient.id else null end ) from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'SLE'
select patient.diagnosis , laboratory.date from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where patient.id = 30609
sql placeholder
select patient.id , patient.sex , patient.birthday from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'Normal' and examination.diagnosis > 500
select patient.id , patient.birthday - strftime ( '%Y' , current_timestamp ) - strftime ( '%Y' , patient.birthday ) from patient inner join examination on patient.id = examination.id where examination.rvvt = '+'
select patient.id , patient.sex , patient.sex from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'thrombosis' and examination.symptoms = 'positive'
sql placeholder
select patient.id , patient.sex , patient.diagnosis from laboratory inner join patient on laboratory.id = patient.id where laboratory.alb < 3.5
select cast ( sum ( case when patient.sex = 'F' then 1 else 0 end ) as real ) * 100 / count ( * ) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.tp < '6.0' or laboratory.tp > '8.5'
sql placeholder
select count ( sex ) from patient where description = '1997' and sex = 'F' and strftime ( '%Y' , admission ) = '-' and sex = 'F'
sql placeholder
sql placeholder
select max ( patient.birthday ) - min ( patient.birthday ) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.diagnosis = laboratory.id where laboratory.tg >= 200
select examination.symptoms , examination.diagnosis from patient inner join examination on patient.id = examination.id order by patient.birthday asc limit 1
select cast ( count ( patient.id ) as real ) / 12 from patient inner join laboratory on patient.id = laboratory.id where laboratory.date between '1998-01-01' and '1998-12-31' and patient.sex = 'M'
sql placeholder
select cast ( sum ( case when patient.sex = 'M' then 1 else 0 end ) as real ) / sum ( case when patient.sex = 'F' then 1 else 0 end ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ua < '8.0' and laboratory.ua < '6.5'
sql placeholder
sql placeholder
sql placeholder
select examination.diagnosis from examination inner join patient on examination.id = patient.id inner join laboratory on patient.id = laboratory.id where laboratory.date between '1985-01-01' and '1995-12-31' group by examination.diagnosis order by count ( examination.diagnosis ) desc limit 1
select avg ( 1999 - strftime ( '%Y' , patient.birthday ) ) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.date between '1991-10-01' and '1991-10-30'
select examination.id - patient.birthday , examination.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id order by laboratory.hgb desc limit 1
sql placeholder
select examination.diagnosis from examination inner join patient on examination.id = patient.id inner join laboratory on patient.id = laboratory.id where patient.id = 2927464 and examination.diagnosis = 'Normal' and examination.diagnosis = 'Normal' and laboratory.date = '1995-9-4'
select patient.sex from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'AORTITIS'
sql placeholder
select case when patient.sex = 'M' then 'F' else 'M' end from laboratory inner join patient on laboratory.id = patient.id inner join examination on patient.id = examination.id where laboratory.date = '1992-06-12' and laboratory.got = 9 and patient.sex = 'F'
select 1992 - strftime ( '%Y' , patient.birthday ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ua = 8.4 and laboratory.date = '1991-10-21'
select count ( laboratory.id ) from examination inner join patient on examination.id = patient.id inner join laboratory on patient.id = laboratory.id where examination.diagnosis = 'SjS' and laboratory.date = '1995-01-06-13'
sql placeholder
sql placeholder
select sum ( case when patient.birthday = '1959-02-18' and strftime ( '%Y' , laboratory.date ) = '1981' then 1 else 0 end ) - sum ( case when patient.birthday = '1959-02-18' and strftime ( '%Y' , laboratory.date ) = '1981-12' then 1 else 0 end ) from patient inner join laboratory on patient.id = laboratory.id where patient.birthday = '1959-02-18'
sql placeholder
sql placeholder
select id from patient where sex = 'F' and strftime ( '%Y' , birthday ) = '1964' and admission = '+'
sql placeholder
select cast ( sum ( case when laboratory.ua < 6.5 then 1 else 0 end ) as real ) * 100 / count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = patient.id where laboratory.ua < 30
sql placeholder
sql placeholder
sql placeholder
select patient.sex from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where laboratory.crp > 2 and laboratory.cre = 1 and laboratory.ldh = 123 and examination.diagnosis = 'PSS'
select avg ( laboratory.alb ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.diagnosis = 'SLE' and patient.sex = 'F' and laboratory.alb > 400
select examination.symptoms from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'SLE' group by examination.symptoms order by count ( examination.symptoms ) desc limit 1
select patient.description , patient.diagnosis from patient inner join examination on patient.id = examination.id where patient.id = 48473 order by examination.diagnosis asc limit 1
select count ( patient.id ) from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'APS' and patient.sex = 'F'
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where strftime ( '%Y' , laboratory.date ) = '1997' and laboratory.tp > 6 and laboratory.tp < 8.5
select cast ( sum ( case when examination.diagnosis like '%SLE%' then 1 else 0 end ) as real ) * 100 / count ( patient.id ) from patient inner join examination on patient.id = examination.id where examination.symptoms = 'thrombocytopenia'
select cast ( sum ( case when patient.sex = 'F' then 1 else 0 end ) as real ) * 100 / count ( * ) from patient inner join examination on patient.id = examination.id where strftime ( '%Y' , patient.birthday ) = '1980' and examination.diagnosis = 'RA'
sql placeholder
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'F' and laboratory.wbc < 3.5
sql placeholder
select case when sum ( case when laboratory.ua > 8.0 then 1 else 0 end ) > 6.5 then 1 else 0 end from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where patient.id = 57266
select laboratory.date from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where patient.id = 4473 and laboratory.got >= 60
select distinct patient.sex , patient.birthday from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where strftime ( '%Y' , laboratory.date ) = '1994' and laboratory.got < 60 and examination.diagnosis = 'Normal'
select distinct patient.id from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where laboratory.gpt >= 60 and patient.sex = 'M'
select patient.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where laboratory.gpt > 60 order by patient.birthday desc
select avg ( laboratory.ldh ) from laboratory inner join patient on laboratory.id = patient.id inner join examination on patient.id = examination.id where laboratory.ldh < 500 and examination.diagnosis = 'Normal'
select patient.id , laboratory.id - strftime ( '%Y' , laboratory.date ) - strftime ( '%Y' , patient.birthday ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.ldh between 600 and 800
sql placeholder
sql placeholder
select patient.id , patient.sex , patient.birthday from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.tp < 6.0
select laboratory.tp - strftime ( '%J' , laboratory.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where patient.sex = 'F' and laboratory.tp > 8.5
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and laboratory.alb < 3.5 or laboratory.alb >= 5.5 order by patient.birthday asc
select patient.id from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where patient.birthday = '1982' and laboratory.alb >= 3.5 and laboratory.alb < 5.5
select cast ( sum ( case when patient.sex = 'F' then 1 else 0 end ) as real ) * 100 / count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.ua > 8.0 or laboratory.ua > 6.5 and laboratory.igm = 'M'
select cast ( sum ( laboratory.ua ) as real ) / count ( laboratory.id ) from laboratory inner join patient on laboratory.id = patient.id inner join examination on patient.id = examination.id where examination.diagnosis = 'Normal' and laboratory.igm in ( 'M' , 'F' )
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.un = 29
select patient.id , patient.sex , patient.birthday from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'RA' and strftime ( '%Y' , examination.diagnosis ) = '0'
select count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where laboratory.cre >= 1.5 and patient.sex = 'M' and examination.diagnosis = 'Normal'
select cast ( sum ( case when patient.sex = 'M' then 1 else 0 end ) as real ) / sum ( case when patient.sex = 'F' then 1 else 0 end ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.cre >= 1.5
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select patient.id , patient.diagnosis from laboratory inner join examination on laboratory.id = examination.id inner join patient on examination.id = patient.id where laboratory.tg > 300
select count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.tg > 200 and strftime ( '%Y' , laboratory.date ) - strftime ( '%Y' , patient.birthday ) > 50
select distinct patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.cpk < 250 and patient.admission = '-'
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.cpk > 250 and patient.sex = 'M' and patient.birthday between '1936' and '1956' and laboratory.cpk > 250
sql placeholder
select patient.id , laboratory.glu from laboratory inner join patient on laboratory.id = patient.id where strftime ( '%Y' , patient.description ) >= '1991' and laboratory.glu < 180
select patient.id , patient.sex , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.wbc < 3.5 or laboratory.wbc >= 9.0 order by patient.sex asc
sql placeholder
select patient.admission from patient inner join laboratory on patient.id = laboratory.id where patient.sex = 'F' and strftime ( '%Y' , current_timestamp ) - strftime ( '%Y' , patient.birthday ) >= 50 and laboratory.rbc < 3.5 or strftime ( '%Y' , patient.birthday ) >= 6.0
select distinct patient.id , patient.sex from patient inner join laboratory on patient.id = laboratory.id where laboratory.hgb < 10 and patient.admission = '-'
select patient.id , patient.sex from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'SLE' order by patient.birthday asc limit 1
sql placeholder
select avg ( laboratory.hct ) from laboratory inner join examination on laboratory.id = examination.id where strftime ( '%Y' , laboratory.date ) = '1991' and laboratory.hct < 29
select sum ( case when laboratory.plt < 100 then 1 else 0 end ) - sum ( case when laboratory.plt > 400 then 1 else 0 end ) as diff from laboratory where laboratory.plt < 100
select distinct patient.id from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where strftime ( '%Y' , laboratory.date ) - strftime ( '%Y' , laboratory.date ) < '1984' and laboratory.plt > 100 and laboratory.plt < 50
select cast ( sum ( case when patient.sex = 'F' then 1 else 0 end ) as real ) * 100 / sum ( case when patient.sex = 'F' then 1 else 0 end ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.pt >= 14
sql placeholder
sql placeholder
select count ( distinct examination.id ) from examination inner join patient on examination.id = patient.id inner join laboratory on patient.id = laboratory.id where laboratory.aptt > 45 and examination.thrombosis = 3
select count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where patient.sex = 'M' and laboratory.fg < 150 or laboratory.wbc >= 450 and examination.diagnosis = 'Normal'
select count ( distinct patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.fg between 150 and 450 and patient.birthday > '1980-01-01'
sql placeholder
sql placeholder
sql placeholder
select count ( distinct examination.symptoms ) from examination inner join patient on examination.id = patient.id inner join laboratory on patient.id = laboratory.id where laboratory.igg > 2000 and examination.diagnosis = 'Normal' and examination.symptoms is not null
select patient.diagnosis from examination inner join patient on examination.id = patient.id inner join laboratory on patient.id = laboratory.id where laboratory.igg between 80 and 500 order by examination.diagnosis desc limit 1
sql placeholder
select examination.diagnosis from examination inner join patient on examination.id = patient.id inner join laboratory on patient.id = laboratory.id where laboratory.igm between 40 and 400 group by examination.diagnosis order by count ( examination.diagnosis ) desc limit 1
sql placeholder
select count ( distinct patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.crp >= 1.0 and ( patient.birthday - strftime ( '%Y' , laboratory.date ) - strftime ( '%Y' , patient.birthday ) ) < 18
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.ra = '+-' and examination.kct = '+' and examination.diagnosis = 'RA'
select distinct examination.diagnosis from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'RA' and strftime ( '%Y' , patient.birthday ) >= 1995 and strftime ( '%Y' , patient.birthday ) >= '1995'
sql placeholder
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'Normal' and examination.thrombosis = 0
sql placeholder
sql placeholder
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where laboratory.c4 > 10 and examination.diagnosis = 'APS'
select count ( distinct patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.rnp = '-' or laboratory.ra = '+-' and patient.admission = '+' and laboratory.rnp = 'negative'
select patient.id , patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.rnp in ( '-' , '+-' ) order by patient.birthday desc limit 1
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.diagnosis = 'Normal' and examination.thrombosis = '1' and laboratory.ra in ( '-' , '+-' )
select patient.id from patient inner join laboratory on patient.id = laboratory.id where laboratory.sm not in ( '-' , '+-' ) order by patient.birthday desc limit 3
sql placeholder
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.id = laboratory.id where laboratory.sc170 in ( '-' , '+-' ) and patient.sex = 'M' and examination.symptoms = 'vertigo'
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where strftime ( '%Y' , laboratory.date ) < '1990' and examination.diagnosis = 'Normal' and laboratory.ssa = '-'
sql placeholder
select count ( distinct patient.id ) from examination inner join patient on examination.id = patient.id inner join laboratory on patient.id = laboratory.id where laboratory.ssb in ( '-' , '+-' ) and examination.diagnosis = 'SLE' and laboratory.ssb in ( '-' , '+-' )
select count ( distinct examination.id ) from examination inner join patient on examination.id = patient.id inner join laboratory on patient.id = laboratory.id where laboratory.ssb in ( '-' , '+-' ) and examination.symptoms is not null
select count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where laboratory.centromea in ( '-' , '+-' ) and laboratory.ssb in ( '-' , '+-' ) and patient.sex = 'M'
select distinct examination.diagnosis , examination.symptoms from examination inner join patient on examination.id = patient.id inner join laboratory on patient.id = laboratory.id where laboratory.dna >= 8
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id where examination.diagnosis = 'Normal' and patient.description is null
sql placeholder
select cast ( sum ( case when patient.diagnosis = 'SLE' then 1 else 0 end ) as real ) * 100 / count ( * ) from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where laboratory.got >= 60
select count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where laboratory.got < 60 and patient.sex = 'M' and examination.diagnosis = 'Normal'
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.got >= 60 order by patient.birthday desc limit 1
select patient.birthday from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where examination.diagnosis = 'Normal' and laboratory.gpt < 60 order by laboratory.gpt desc limit 3
select count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where laboratory.got < 60 and patient.sex = 'M' and examination.diagnosis = 'Normal'
select laboratory.date from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where examination.diagnosis = 'Normal' and laboratory.ldh < 500 order by laboratory.ldh desc limit 1
select laboratory.date from patient inner join laboratory on patient.id = laboratory.id where laboratory.ldh > 500 order by laboratory.date desc limit 1
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.alp >= 300 and patient.admission = '+'
select count ( patient.id ) from patient inner join laboratory on patient.id = laboratory.id where laboratory.alp < 300 and patient.admission = '-'
select distinct patient.diagnosis from laboratory inner join examination on laboratory.id = examination.id inner join patient on examination.id = patient.id where laboratory.tp < 6.0
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.diagnosis = 'SJS' and laboratory.tp > 6.0 and laboratory.tp < 8.5
sql placeholder
select count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on examination.diagnosis = laboratory.id where patient.sex = 'M' and laboratory.alb > 3.5 and laboratory.alb < 5.5 and laboratory.tp between 6.0 and 8.5
select laboratory.ua from laboratory inner join patient on laboratory.id = patient.id inner join examination on patient.id = examination.id where patient.sex = 'F' order by laboratory.ua desc limit 1
select examination.ana from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.cre < 1.5 and examination.diagnosis = 'Normal' order by examination.ana desc limit 1
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select count ( distinct examination.symptoms ) from laboratory inner join examination on laboratory.id = examination.id inner join patient on examination.id = patient.id where laboratory.tg < 200 and examination.diagnosis is not null
select patient.diagnosis from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where laboratory.tg < 200 order by laboratory.tg desc limit 1
select examination.id from examination inner join patient on examination.id = patient.id inner join laboratory on patient.id = laboratory.id where laboratory.cpk < 250 and examination.thrombosis = 0
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.diagnosis = laboratory.id where laboratory.cpk < 250 and examination.rvvt = '+' and examination.kct = '+'
select patient.birthday from patient inner join laboratory on patient.id = laboratory.id where laboratory.glu > 180 order by patient.birthday asc limit 1
select count ( laboratory.id ) from laboratory inner join examination on laboratory.id = examination.id inner join patient on examination.id = patient.id where laboratory.glu < 180 and examination.thrombosis = 0 and examination.diagnosis = 'Normal'
select count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on laboratory.id = examination.id where laboratory.wbc between 3.5 and 9.0 and patient.admission = '+'
select count ( patient.id ) from examination inner join patient on examination.id = patient.id inner join laboratory on patient.id = laboratory.id where examination.diagnosis = 'SLE' and laboratory.wbc between 3.5 and 9.0
select patient.id from laboratory inner join patient on laboratory.id = patient.id where laboratory.rbc < 6.0 and patient.admission = '-'
select count ( distinct patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where laboratory.plt > 100 and laboratory.plt < 400 and examination.diagnosis is not null
select laboratory.plt , laboratory.plt from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.diagnosis = 'MCTD' and laboratory.plt > 100 and laboratory.plt < 400
select avg ( laboratory.pt ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where patient.sex = 'M' and examination.diagnosis = 'Normal' and laboratory.pt < 14
select count ( patient.id ) from patient inner join examination on patient.id = examination.id inner join laboratory on patient.id = laboratory.id where examination.diagnosis = 'Normal' and examination.thrombosis = 2 or 1 and laboratory.pt < 14
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Angela' and member.last_name = 'Sanders'
select count ( * ) from major where college = 'College of Engineering'
sql placeholder
select count ( event_id ) from event where event_name = 'Women''s Soccer'
select member.phone from member inner join event on member.member_id = event.event_id where event.event_name = 'Women''s Soccer'
select count ( member.t_shirt_size ) from member inner join event on member.member_id = event.event_id where event.event_name = 'Women''s Soccer'
select event.event_name from attendance inner join event on attendance.link_to_event = event.event_id group by event.event_name order by count ( event.event_name ) desc limit 1
sql placeholder
select event.event_name from member inner join event on member.member_id = event.event_id where member.first_name = 'Maya' and member.last_name = 'Mclean'
select count ( event.event_name ) from member inner join event on member.member_id = event.event_id where member.first_name = 'Sacha' and member.last_name = 'Harrison' and strftime ( '%Y' , event.event_date ) = '2019'
select count ( event_id ) from event where type = 'Meeting' group by event_id having count ( event_id ) > 10
select event_name from event where event_id > 20 group by event_name having count ( event_id ) > 20
select cast ( count ( event_id ) as real ) / count ( distinct event_name ) from event where strftime ( '%Y' , event_date ) = '2020' and type = 'Meeting'
select expense_description from expense order by cost desc limit 1
select count ( member.member_id ) from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Environmental Engineering'
select member.first_name , member.last_name from member inner join event on member.member_id = event.event_id where event.event_name = 'Laugh Out Loud'
sql placeholder
select zip_code.county from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Sherri' and member.last_name = 'Ramsey'
select major.college from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Tyler' and member.last_name = 'Hawitt'
select income.amount from member inner join income on member.member_id = income.income_id where member.position = 'Vice President'
select budget.spent from event inner join budget on event.event_id = budget.budget_id where event.event_name = 'September Meeting' and budget.category = 'Food'
select zip_code.city , zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code where member.position = 'President'
select member.first_name , member.last_name from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.state = 'Illinois'
select budget.spent from budget inner join event on budget.budget_id = event.event_id where event.event_name = 'September Meeting' and budget.category = 'Advertisement'
select major.department from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Pierce' and member.last_name = 'Guidi'
select budget.category from budget inner join event on budget.budget_id = event.event_id where event.event_name = 'October Speaker' group by budget.category order by sum ( budget.amount ) desc limit 1
select expense.approved from event inner join expense on event.event_id = expense.expense_id where event.event_name = 'October Meeting' and event.event_date = '2019-10-08'
sql placeholder
sql placeholder
select location from event where event_name = 'Spring Budget Review'
select expense.cost from expense inner join event on expense.expense_id = event.event_id where expense.expense_description = 'Posters' and event.event_date = '2019-09-04'
select remaining from budget where category = 'Food' and amount = ( select max ( amount ) from budget where category = 'Food' )
select notes from income where date_received = '2019-09-14' and source = 'Fundraising'
select count ( major_id ) from major where college = 'College of Humanities and Social Sciences'
select member.phone from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Carlo' and member.last_name = 'Jacobs'
select zip_code.county from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Adela' and member.last_name = 'O''Gallagher'
select count ( budget.budget_id ) from budget inner join expense on budget.budget_id = expense.link_to_budget inner join event on event.event_id = budget.link_to_event where event.event_name = 'November Meeting' and budget.remaining < 0
select sum ( budget.amount ) from budget inner join event on budget.budget_id = event.event_id where event.event_name = 'September Speaker'
select distinct event.status from expense inner join event on expense.expense_id = event.event_id where expense.expense_description = 'Post Cards , Posters' and expense.expense_date = '2019-8-20'
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Brent' and member.last_name = 'Thomason'
sql placeholder
select zip_code.type from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Christof' and member.last_name = 'Nielson'
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.position = 'Vice President'
select zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Sacha' and member.last_name = 'Harrison'
sql placeholder
sql placeholder
select member.first_name , member.last_name from member inner join income on member.member_id = income.income_id where income.source = 'Dues' order by income.date_received asc limit 1
sql placeholder
select cast ( sum ( case when budget.category = 'Parking' then budget.amount else 0 end ) as real ) * 100 / count ( budget.amount ) from budget inner join event on budget.budget_id = event.event_id where event.event_name = 'November Speaker'
select sum ( expense.cost ) from expense inner join event on expense.expense_id = event.event_id where expense.expense_description = 'Pizza'
select count ( city ) from zip_code where state = 'Virginia' and county = 'Orange County'
select department from major where college = 'College of Humanities and Social Sciences'
select zip_code.city , zip_code.county , zip_code.state from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Amy' and member.last_name = 'Firth'
select expense.expense_description from budget inner join expense on budget.budget_id = expense.expense_id order by budget.remaining asc limit 1
sql placeholder
select major.college from member inner join major on member.link_to_major = major.major_id group by major.college order by count ( major.college ) desc limit 1
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.phone = '809-555-3360'
sql placeholder
select expense.expense_description from expense inner join member on expense.expense_id = member.member_id where member.position = 'Vice President'
sql placeholder
sql placeholder
select count ( * ) from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.state = 'Maryland'
sql placeholder
select member.first_name , member.last_name from member inner join major on member.member_id = major.major_id where major.department = 'School of Applied Sciences , Technology and Education'
sql placeholder
select count ( member_id ) from member where position = 'President'
select budget.spent from event inner join budget on event.event_id = budget.budget_id order by budget.spent desc limit 1
select count ( event_id ) from event where type = 'Meeting' and strftime ( '%Y' , event_date ) = '2020'
select sum ( spent ) from budget where category = 'Food'
sql placeholder
select count ( major.major_id ) from major inner join event on major.major_id = event.event_id where event.event_name = 'Community Theater' and major.major_name = 'Interior Design'
select member.first_name , member.last_name from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.city = 'Georgetown' and zip_code.state = 'South Carolina'
select count ( income.amount ) from member inner join income on member.member_id = income.income_id where member.first_name = 'Grant' and member.last_name = 'Gilmour'
sql placeholder
select sum ( expense.cost ) from event inner join expense on event.event_id = expense.expense_id where event.event_name = 'Baseball game'
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select cast ( sum ( case when major_name = 'Finance' then 1 else 0 end ) as real ) / sum ( case when major_name = 'Physics' then 1 else 0 end ) from major
select source from income where date_received >= '2019-09-01' and date_received < '2019-09-30' order by amount desc limit 1
select member.first_name , member.last_name , member.email from member inner join zip_code on member.zip = zip_code.zip_code where member.position = 'Secretary'
select count ( * ) from major where major_name = 'Physics Teaching'
sql placeholder
sql placeholder
select avg ( budget.spent ) from budget inner join event on budget.budget_id = event.event_id where budget.category = 'Food' and event.status = 'Closed'
sql placeholder
sql placeholder
select cast ( sum ( case when type = 'Community Service' then 1 else 0 end ) as real ) * 100 / count ( event_id ) from event where substr ( event_date , 1 , 4 ) = '2019'
select expense.cost from expense inner join event on expense.expense_id = event.event_id where event.event_name = 'September Speaker' and expense.expense_description = 'Posters'
select member.t_shirt_size from member inner join zip_code on member.zip = zip_code.zip_code group by member.t_shirt_size order by count ( member.t_shirt_size ) desc limit 1
sql placeholder
sql placeholder
select budget.amount , budget.category from budget inner join event on budget.budget_id = event.event_id where event.event_name = 'April Speaker' order by budget.amount asc
select budget_id from budget where category = 'Food' order by amount desc limit 1
select amount from budget where category = 'Advertisement' order by amount desc limit 3
select sum ( cost ) from expense where expense_description = 'Parking'
select sum ( cost ) from expense where expense_date = '2019-08-20'
select member.first_name , member.last_name , expense.cost from member inner join expense on member.member_id = expense.expense_id where member.member_id = 'rec4BLdZHS2Blfp4v'
select expense.expense_description from member inner join expense on member.member_id = expense.expense_id where member.first_name = 'Sacha' and member.last_name = 'Harrison'
select distinct expense.expense_description from member inner join expense on member.member_id = expense.expense_id where member.t_shirt_size = 'X-Large'
select member.zip from expense inner join member on expense.link_to_member = member.member_id inner join zip_code on member.zip = zip_code.zip_code where expense.cost < 50
select major.major_name from member inner join major on member.link_to_major = major.major_id inner join zip_code on zip_code.zip_code = member.zip where member.first_name = 'Phillip' and member.last_name = 'Cullen'
select member.position from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Business'
sql placeholder
select distinct event.type from event inner join budget on budget.budget_id = event.event_id where budget.remaining > 30
select distinct budget.category from budget inner join event on budget.budget_id = event.event_id where event.location = 'MU 215'
select budget.category from budget inner join event on budget.budget_id = event.event_id where event.event_date = '2020-03-24T12:00:00'
select major.major_name from member inner join major on member.link_to_major = major.major_id where member.position = 'Vice President'
sql placeholder
select budget.category from budget inner join event on budget.budget_id = event.event_id where event.location = 'MU 215'
select count ( income_id ) from income where amount = 50
select count ( member_id ) from member where position = 'Member' and t_shirt_size = 'X-Large'
select count ( major_id ) from major where department = 'School of Applied Sciences , Technology and Education' and college = 'College of Agriculture and Applied Sciences'
select member.last_name , major.department , major.college from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Environmental Engineering'
select budget.category from budget inner join event on budget.budget_id = event.event_id where event.location = 'MU 215' and event.type = 'Guest Speaker' and budget.spent = 0
sql placeholder
select event.event_name from member inner join event on member.zip = event.event_id where member.position = 'Vice President' and event.location = '900 E. Washington St.' and event.type = 'Social'
select member.last_name , member.position from expense inner join member on expense.expense_id = member.member_id where expense.expense_description = 'Pizza' and expense.expense_date = '2019-09-10'
select member.last_name from member inner join event on member.member_id = event.event_id where event.event_name = 'Women''s Soccer' and member.position = 'Member'
sql placeholder
select distinct county from zip_code where type = 'PO Box'
select zip_code from zip_code where state = 'Puerto Rico' and type = 'PO Box'
select event_name from event where status = 'Closed' and type = 'Game' and event_date between '2019-03-15' and '2020-03-20'
select distinct event.event_name from expense inner join attendance on expense.link_to_member = attendance.link_to_member inner join event on attendance.link_to_event = event.event_id where expense.cost > 50
sql placeholder
select major.college from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Kathy' and member.link_to_major = 'rec1N0upiVLy5esTO'
select member.phone from member inner join major on member.member_id = major.major_id where major.college = 'College of Agriculture and Applied Sciences' and major.major_name = 'Business'
select distinct member.email from member inner join expense on member.member_id = expense.expense_id where expense.cost > 20 and expense.expense_date between '2019-09-10' and '2019-11-19'
sql placeholder
select cast ( sum ( case when budget.remaining < 0 then 1 else 0 end ) as real ) * 100 / count ( event.event_id ) from budget inner join event on budget.link_to_event = event.event_id
select event_id , location , status from event where substr ( event_date , 1 , 4 ) = '2019' and substr ( event_date , 1 , 4 ) = '2020'
select expense_description from expense where cost > 50 group by expense_description having cast ( sum ( cost ) as real ) / count ( expense_id ) > 50
select first_name , last_name from member where t_shirt_size = 'X-Large'
select cast ( sum ( case when type = 'PO Box' then 1 else 0 end ) as real ) * 100 / count ( zip_code ) from zip_code
select event.event_name , event.location from budget inner join event on budget.budget_id = event.event_id where budget.remaining > 0
select event.event_name , event.event_date from expense inner join event on expense.expense_id = event.event_id where expense.expense_description = 'Pizza' and expense.cost > 50 and expense.cost < 100
select major.major_name , member.first_name , member.last_name from member inner join expense on member.member_id = expense.link_to_member inner join major on major.major_id = member.link_to_major where expense.cost > 100
select zip_code.city , zip_code.county from income inner join zip_code on income.income_id = zip_code.zip_code where income.income_id > 40
select t.first_name , t.last_name from ( select member.first_name , member.last_name , count ( expense.expense_id ) as num from member inner join expense on member.member_id = expense.link_to_member group by member.first_name , member.last_name ) as t order by t.num desc limit 1
select avg ( expense.cost ) from expense inner join member on expense.expense_id = member.member_id inner join income on income.income_id = member.member_id where member.position != 'Member'
sql placeholder
select cast ( sum ( expense.cost ) as real ) * 100 / count ( expense.expense_id ) from expense inner join event on expense.expense_id = event.event_id where event.type = 'Game'
select budget.budget_id from budget inner join expense on budget.budget_id = expense.link_to_budget where expense.expense_description = 'Water , chips , cookies' order by expense.cost desc limit 1
select member.first_name , member.last_name from member inner join expense on member.member_id = expense.expense_id order by expense.cost desc limit 5
select member.first_name , member.last_name , member.phone from member inner join expense on member.member_id = expense.link_to_member where expense.cost > ( select avg ( cost ) from expense )
select cast ( ( sum ( case when zip_code.state = 'Maine' then 1 else 0 end ) - sum ( case when zip_code.state = 'Vermont' then 1 else 0 end ) ) as real ) * 100 / count ( member.position ) from member inner join zip_code on member.zip = zip_code.zip_code
select major.major_name , major.department from member inner join major on member.link_to_major = major.major_id where member.first_name = 'Garrett' and member.last_name = 'Gerke'
select member.first_name , member.last_name , expense.cost from member inner join expense on member.member_id = expense.expense_id where expense.expense_description = 'Water , Veggie tray , supplies'
select member.last_name , member.phone from member inner join major on member.link_to_major = major.major_id where major.major_name = 'Elementary Education'
select budget.category , budget.amount from budget inner join event on budget.budget_id = event.event_id where event.event_name = 'January Speaker'
sql placeholder
sql placeholder
select budget.category from expense inner join budget on expense.link_to_budget = budget.budget_id where expense.expense_description = 'Posters'
select member.first_name , member.last_name , major.college from member inner join zip_code on member.zip = zip_code.zip_code inner join major on major.major_id = zip_code.zip_code where member.position = 'Secretary'
sql placeholder
select zip_code.city from member inner join zip_code on member.zip = zip_code.zip_code where member.first_name = 'Garrett' and member.last_name = 'Grieke'
select member.first_name , member.last_name , member.position from member inner join zip_code on member.zip = zip_code.zip_code where zip_code.city = 'Lincolnton' and zip_code.state = 'North Carolina' and zip_code.zip_code = 28092
select count ( gasstations.gasstationid ) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and gasstations.segment = 'Premium'
select cast ( sum ( case when customers.currency = 'EUR' then 1 else 0 end ) as real ) * 100 / count ( customers.currency ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid
select customers.customerid from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'LAM' and yearmonth.consumption = 0 and yearmonth.date between '2012-01-01' and '2012-12-31' order by yearmonth.consumption asc limit 1
select avg ( yearmonth.consumption ) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'SME' and yearmonth.date between '2013-01-01' and '2013-12'
select customers.customerid from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'CZK' and yearmonth.date between '2011-01-01' and '2011-12-31' group by customers.customerid order by sum ( yearmonth.consumption ) desc limit 1
select count ( customers.customerid ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'KAM' and yearmonth.consumption < 30000 and yearmonth.date between '2012-01-01' and '2012-12-31'
select sum ( yearmonth.consumption ) - sum ( customers.currency ) from customers inner join yearmonth on customers.customerid = yearmonth.customerid where strftime ( '%Y' , yearmonth.date ) = '2012'
select yearmonth.date from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = transactions_1k.customerid where customers.currency = 'EUR' group by yearmonth.date order by count ( transactions_1k.transactionid ) desc limit 1
select customers.segment from customers inner join yearmonth on customers.customerid = yearmonth.customerid inner join transactions_1k on transactions_1k.customerid = transactions_1k.customerid order by yearmonth.consumption asc limit 1
select distinct yearmonth.consumption from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'CZK' group by yearmonth.consumption order by sum ( yearmonth.consumption ) desc limit 4
select yearmonth.consumption from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'ME' and strftime ( '%Y' , transactions_1k.date ) = '2013' group by yearmonth.consumption
select sum ( yearmonth.consumption ) / count ( customers.customerid ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'LAM' and customers.segment = 'KAM' and transactions_1k.date between 201301 and 201312 order by yearmonth.consumption desc limit 1
select customers.segment from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'LAM' and customers.currency = 'EUR' and transactions_1k.date between '2012-01-01' and '2013-12-31' order by yearmonth.consumption desc limit 1
select sum ( yearmonth.consumption ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where customers.customerid = 6 and yearmonth.date between '2013-08' and '2013-11'
select sum ( case when country = 'Czech Republic' then 1 else 0 end ) - sum ( case when country = 'Slovakia' then 1 else 0 end ) from gasstations
select sum ( transactions_1k.amount ) from transactions_1k inner join yearmonth on transactions_1k.customerid = yearmonth.customerid where yearmonth.consumption = 7 and strftime ( '%Y-%m-%d' , yearmonth.date ) = '2013-04'
sql placeholder
select customers.customerid from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'LAM' and customers.currency = 'Euro' order by yearmonth.consumption desc limit 1
select customers.customerid , yearmonth.consumption from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'KAM' group by customers.customerid , yearmonth.consumption order by count ( customers.customerid ) desc limit 1
select sum ( yearmonth.consumption ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where customers.segment = 'KAM' and yearmonth.date = '2013-05'
select cast ( sum ( iif ( customers.segment = 'LAM' , 1 , 0 ) ) as real ) * 100 / count ( customers.customerid ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.consumption > 46.73
select country , count ( gasstationid ) from gasstations group by country order by count ( country ) desc limit 1
select cast ( sum ( case when customers.segment = 'KAM' then 1 else 0 end ) as real ) * 100 / count ( customers.customerid ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid
select cast ( sum ( case when yearmonth.consumption > 528.3 then 1 else 0 end ) as real ) * 100 / count ( yearmonth.customerid ) from yearmonth inner join transactions_1k on yearmonth.customerid = transactions_1k.customerid where yearmonth.date = '201202'
select cast ( sum ( iif ( gasstations.segment = 'Premium' , 1 , 0 ) ) as real ) * 100 / count ( gasstationid ) from gasstations
select yearmonth.customerid from yearmonth inner join transactions_1k on yearmonth.customerid = transactions_1k.customerid where yearmonth.date = '2013-09' group by yearmonth.customerid order by count ( transactions_1k.customerid ) desc limit 1
select customers.segment from customers inner join yearmonth on customers.customerid = yearmonth.customerid inner join transactions_1k on transactions_1k.customerid = yearmonth.customerid where yearmonth.date = '201309' group by customers.segment order by sum ( yearmonth.consumption ) asc limit 1
select customers.segment from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.date = '201206' and customers.segment = 'SME' order by yearmonth.consumption asc limit 1
select consumption from yearmonth where date = '2012' order by consumption desc limit 4
select sum ( yearmonth.consumption ) from customers inner join yearmonth on customers.customerid = yearmonth.customerid inner join transactions_1k on transactions_1k.customerid = yearmonth.customerid order by transactions_1k.amount desc limit 1
sql placeholder
select distinct gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.date = '2013-06'
sql placeholder
select products.description from products inner join transactions_1k on products.productid = transactions_1k.productid where transactions_1k.transactionid = 'EUR'
select sum ( price ) / count ( transactionid ) from transactions_1k where date = '2012-01'
select count ( customers.customerid ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where customers.currency = 'euro' and yearmonth.consumption > 1000
select distinct products.description from products inner join transactions_1k on products.productid = transactions_1k.productid inner join gasstations on transactions_1k.gasstationid = gasstations.gasstationid where gasstations.country = 'CZE'
select distinct transactions_1k.time from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.chainid = 11
select count ( transactions_1k.transactionid ) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and transactions_1k.price > 1000
select count ( transactions_1k.transactionid ) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and transactions_1k.date > '2012-01-01'
select sum ( transactions_1k.price ) / count ( transactions_1k.transactionid ) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE'
select sum ( transactions_1k.price ) / count ( transactions_1k.transactionid ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where customers.currency = 'euro'
select customerid from transactions_1k where date like '2012-08-25%' group by customerid order by sum ( amount ) desc limit 1
select distinct gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.date = '2012-08-25' and gasstations.gasstationid = ( select gasstationid from transactions_1k where date = '2012-08-25' order by date desc limit 1 )
select distinct customers.currency from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.time = '16:25:00' and transactions_1k.date = '2012-08-24'
select distinct customers.segment from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.time = '21:20:00' and transactions_1k.date = '2012-08-23'
select count ( transactionid ) from transactions_1k where time like '2012-08-26%'
select distinct customers.segment from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.date = ( select max ( date ) from transactions_1k )
select distinct gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.time = '12:42:00' and transactions_1k.date = '2012-08-24'
select distinct productid from transactions_1k where date = '2012-08-23 21:20:00' and time = '21:20:00'
select transactions_1k.amount , yearmonth.consumption , yearmonth.date from transactions_1k inner join yearmonth on transactions_1k.customerid = yearmonth.customerid where transactions_1k.transactionid = '123.05' and transactions_1k.date = '2012-08-24'
select count ( transactions_1k.transactionid ) from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where gasstations.country = 'CZE' and transactions_1k.date = '2012-08-26' and transactions_1k.time = '8:00-9:00'
select distinct customers.currency from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where yearmonth.date like '2013-06%'
select gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.cardid = 667467
sql placeholder
select cast ( sum ( case when customers.currency = 'EUR' then 1 else 0 end ) as real ) * 100 / count ( customers.customerid ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid where transactions_1k.date = '2012-08-25'
select sum ( iif ( strftime ( '%Y' , yearmonth.consumption ) = 634.8 , 1 , 0 ) ) / sum ( iif ( strftime ( '%Y' , yearmonth.consumption ) = '2013' , 1 , 0 ) ) from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid inner join yearmonth on customers.customerid = yearmonth.customerid where transactions_1k.date = '2012-08-24'
select transactions_1k.gasstationid from transactions_1k inner join gasstations on transactions_1k.gasstationid = gasstations.gasstationid group by transactions_1k.gasstationid order by sum ( transactions_1k.amount ) desc limit 1
select cast ( sum ( case when segment = 'Premium' then 1 else 0 end ) as real ) * 100 / count ( segment ) from gasstations where country = 'SVK'
sql placeholder
select products.description from products inner join transactions_1k on products.productid = transactions_1k.productid group by products.description order by count ( products.description ) desc limit 5
select customers.customerid , transactions_1k.price , transactions_1k.amount , customers.currency from customers inner join transactions_1k on customers.customerid = transactions_1k.customerid order by transactions_1k.price desc limit 1
select distinct gasstations.country from gasstations inner join transactions_1k on gasstations.gasstationid = transactions_1k.gasstationid where transactions_1k.productid = 2 and transactions_1k.price = 1
select distinct yearmonth.consumption from transactions_1k inner join yearmonth on transactions_1k.customerid = yearmonth.customerid where transactions_1k.productid = 5 and strftime ( '%Y-%m-%d' , transactions_1k.date ) = '2012-08'
