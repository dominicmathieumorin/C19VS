/* 
i. Get details of all the people who got vaccinated at least one dose and are of
group ages 4 to 10 (first-name, last-name, date of birth, email, phone, city,
date of vaccination, vaccination type, been infected by COVID-19 before
or not).*/
select distinct fname, lname, dob, email, telephone, city, vaccinationDate, 
	vx.vacName as 'vaccineType', 
    CASE WHEN i.medicare IS NULL THEN 'true' ELSE 'false' END as 'previouslyInfected'
from Person p
join Vaccination v on p.medicare = v.medicare
join AgeGroup ag on p.ageGroupID = ag.id
join Vaccine vx on v.vacName = vx.vacName
left join Infection i on i.medicare = p.medicare
where dose >= 1 and ag.id between 4 and 10;


/*
ii. Get details of all the Vaccination facilities in Québec (name, address, phone
number, web address, type).
*/
select facName, address, phone, website, facilityType from VaccinationFacility;

/*
iii. Get details of all the people who got vaccinated at the Olympic Stadium in
Montréal in January 2021 (first-name, last-name, date of birth, email,
phone, city, date of vaccination, type of vaccination, group age).
*/
select fname, lname, dob, email, telephone, city, vaccinationDate, v.vacName 'vaccinationType', ag.fromAge as 'groupAge'
from Person p 
join Vaccination v on p.medicare = v.medicare
join AgeGroup ag on p.ageGroupID = ag.id
join Vaccine vx on v.vacName = vx.vacName
where city = "Montreal" and year(vaccinationDate) = 2021 and month(vaccinationDate) = 1 and facName = 'Olympic Stadium';

/*
iv. Provide a description of all the vaccinations used in Québec (Name of the
vaccination, date of approval of the vaccination, current status of the
vaccination, total number of people vaccinated with the vaccination).
*/
select v.vacName, max(approvalDate), max(status) as 'approvalStatus', count(*) 'countOfPeopleVaccinated'
from Vaccination v 
join Vaccine vx on v.vacName = vx.vacName
join Person p on p.medicare = v.medicare
where p.province = 'Quebec'
group by vx.vacName;


/*
v. Get details of all the people who got vaccinated with a vaccination that is
currently suspended (first-name, last-name, date of birth, email, phone, city,
date of vaccination, vaccination type, date of suspension of the vaccination).
*/
select fname, lname, dob, email, telephone, city, vaccinationDate, v.vacName as 'vaccinationType', suspensionDate
from Person p 
join Vaccination v on p.medicare = v.medicare
join Vaccine vx on v.vacName = vx.vacName
where vx.status = "SUSPENDED";


/*
vi. Provide a report of people who got vaccinated by city in all the cities in the
province of Québec. The report should include the city name and the
number of people vaccinated in each city.
*/
select city, count(*) as 'vaccinations'
from Person p 
join Vaccination v on p.medicare = v.medicare
where province = 'Quebec'
group by city;