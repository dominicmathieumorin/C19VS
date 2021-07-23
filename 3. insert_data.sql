insert into AgeGroup (id, fromAge, toAge) values 
	(1, 80, null), (2, 70, 79), (3, 60, 69), 
    (4, 50, 59), (5, 40, 49), (6, 30, 39), 
    (7, 18, 29), (8, 12, 17), (9, 5, 11), (10, 0, 4);

insert into Person (fname, lname, dob, medicare, telephone, address, city, province, postalCode, citizenship, email, ageGroupID) values 
	('Sherlock', 'Holmes', '1854-01-06', 'AAA 0000 0000', '514-000-0000', '221B Baker St', 'London', 'Quebec', 'H7Q0V1', 'British', 'sherlock.holmes@gmail.com', 4),
	('Dominic', 'Morin', '1995-01-23', 'BBB 0000 0000', '514-111-0000', '35 5E Avenue', 'Montreal', 'Quebec', 'H0Q0V1', 'Canadian', 'dominic.morin@concordia.ca', 2),
    ('Manuel', 'Romero', '1994-03-12', 'CCC 0000 0000', '514-222-0000', '221B Baker St', 'Montreal', 'Quebec', 'H7Q0V1', 'Canadian', 'manuel.romero@gmail.com', 3),
    ('Rawad', 'Alaryan', '1993-11-28', 'DDD 0000 0000', '514-333-0000', '221B Baker St', 'Montreal', 'Quebec', 'H7Q0V1', 'Canadian', 'rawadalaryan@gmail.com', 4),
    ('Thapan', 'Thambu', '1995-01-23', 'EEE 0000 0000', '514-444-0000', '221B Baker St', 'Montreal', 'Ontario', 'H7Q0V1', 'Canadian', 'thapan18@gmail.com', 5),
    ('Peter', 'Parker', '2007-01-08', 'FFF 0000 0000', '514-555-0000', '15th Street', 'Montreal', 'Queens', 'H7Q0V1', 'Canadian', 'peter.parker@gmail.com', 6),
    ('Bruce Wayne', 'Pan', '2005-02-21', 'GGG 0000 0000', '514-666-0000', '1007 Mountain Drive', 'Gotham', 'Ontario', 'H7Q0V1', 'Canadian', 'bruce.wayne@gmail.com', 7),
    ('Clark', 'Kent', '2000-03-13', 'HHH 0000 0000', '514-777-0000', '91 Superman Avenue', 'Montreal', 'Ontario', 'H7Q0V1', 'Canadian', 'clark.kent@gmail.com', 2),
    ('Bruce', 'Banner', '2009-04-05', 'III 0000 0000', '514-888-0000', '34 Hulk Lane', 'Montreal', 'Quebec', 'H7Q0V1', 'American', 'bruce.banner@gmail.com', 6),
    ('Arthur ', 'Curry', '1990-05-10', 'JJJ 0000 0000', '514-999-0000', '10 Aquaman ST', 'Montreal', 'Quebec', 'H7Q0V1', 'American', 'arthur.curry@gmail.com', 4);

insert into VaccinationFacility (facName, address, phone, website, facilityType) values
	('Olympic Stadium', '111 Olympic ST', '514-000-0001', 'http://stade.olympic.qc.ca', 'Special Installment'),
    ('Kirkland Gymnasium', '111  Kirkland ST', '514-000-0002', 'http://kirkland.gym.qc.ca', 'Special Installment'),
    ('Laval Rec Center', '222 Laval ST', '514-000-0003', 'http://laval.reccenter.qc.ca', 'Special Installment'),
    ('Popup Clinic', '333 Popup  ST', '514-000-0004', 'http://popupclinic.qc.ca', 'Clinic'),
    ('Purple Clinic', '444 Purple ST', '514-000-0005', 'http://purple.clinic.qc.ca', 'Clinic'),
    ('Green Clinic', '555 Green ST', '514-000-0006', 'http://green.clinic.qc.ca', 'Clinic'),
    ("Montreal Children's Hospital", '666 Childrens ST', '514-000-0007', 'http://childrens-hospital.mtl.ca', 'Hospital'),
    ('Rosemont Hospital', '777 Rosemont ST', '514-000-0008', 'http://rosemont.hospital.qc.ca', 'Hospital'),
    ('Verdun Hospital', '888 Verdun ST', '514-000-0009', 'http://verdun.hospital.qc.ca', 'Hospital'),
    ('Beaconsfield Hospital', '999  Beaconsfield ST', '514-000-0010', 'http://beaconsfield.hospital.qc.ca', 'Hospital');

insert into Vaccine (status, vacName, description, approvalDate) values
	('SAFE', "Pfizer", 'mRNA', '2021-01-01'),
    ('SAFE', "Moderna", 'mRNA', '2021-01-01'),
    ('SAFE', "AstraZeneca", 'Viral', '2021-01-01'),
    ('SAFE', "Jhonson & Jhonson", 'Viral', '2021-06-01'),
    ('SUSPENDED', "Ebay Vaccine", 'Viral', null),
    ('SUSPENDED', "Amazon Vaccine", 'Viral', null),
    ('SUSPENDED', "Kijiji Vaccine", 'Viral', null),
    ('SUSPENDED', "Alibaba Vaccine", 'mRNA', null),
    ('SUSPENDED', "WishDotCom Vaccine", 'mRNA', null),
    ('SUSPENDED', "Craigslist Vaccine", 'mRNA', null);

insert into Vaccination (medicare, dose, vaccinationDate, vacName, facName, suspensionDate) values
	('AAA 0000 0000', 1, '2020-11-20', 'Pfizer', 'Popup Clinic', null),
    ('BBB 0000 0000', 1, '2020-12-21', 'Moderna', 'Olympic Stadium', null),
    ('CCC 0000 0000', 1, '2021-05-26', 'AstraZeneca', 'Kirkland Gymnasium', null),
    ('DDD 0000 0000', 1, '2021-03-13', 'Pfizer', 'Beaconsfield Hospital', null),
    ('EEE 0000 0000', 1, '2021-02-01', 'Moderna', 'Rosemont Hospital', null),
    ('FFF 0000 0000', 1, '2021-07-03', 'Pfizer', 'Olympic Stadium', null),
    ('GGG 0000 0000', 1, '2021-04-18', 'AstraZeneca', 'Laval Rec Center', null),
    ('AAA 0000 0000', 2, '2020-09-23', 'Kijiji Vaccine', 'Rosemont Hospital', '2020-01-01'),
    ('BBB 0000 0000', 2, '2021-01-15', 'Amazon Vaccine', 'Purple Clinic', '2020-04-15'),
    ('CCC 0000 0000', 2, '2021-03-20', 'Ebay Vaccine', 'Green Clinic', '2020-07-21');

insert into Infection(medicare, infectionDate) values 
	('DDD 0000 0000', '2020-01-05'),
    ('EEE 0000 0000', '2020-02-21'),
    ('FFF 0000 0000', '2020-07-20'),
    ('GGG 0000 0000', '2021-03-09'),
    ('HHH 0000 0000', '2021-07-14'),
    ('III 0000 0000', '2020-02-05'),
    ('JJJ 0000 0000', '2021-06-18'),
    ('DDD 0000 0000', '2020-02-05'),
    ('EEE 0000 0000', '2021-04-23'),
    ('CCC 0000 0000', '2020-11-05');