--Query 1: Total crimes committed
select primary_type, count(*) as crimes_committed from chicagocrimes group by primary_type order by crimes_committed desc;


--Query 2: Crimes per ward
select ward, count(*) as crimes_per_ward from chicagocrimes group by ward order by crimes_per_ward desc;


--Query 3:Crimes per year 
select year, count(*) as crimes_per_ward from chicagocrimes group by ward order by crimes_per_ward desc;

--Query 4: Schools per ward
select ward, count(*) as schools_per_ward from chicagopublicschools group by ward order by ward;

--Query 5: Arrest rate
SELECT arrest, ((COUNT(*) * 100)/(select count(*) from chicagocrimes)) as
arrest_rate FROM chicagocrimes GROUP BY arrest;


---Query 6: Average safety score for each ward.
SELECT ward, AVG (safety_score)::NUMERIC(10,2) as average_safety_score
FROM chicagopublicschools GROUP BY ward order by average_safety_score desc


--Query 7: Created tables for safetyscore and crimes
Create table safetyscore as
SELECT ward, AVG (safety_score)::NUMERIC(10,2) as average_safety_score
FROM chicagopublicschools GROUP BY ward order by average_safety_score desc

create table crimes as select ward, count(*) as crimes_per_ward from chicagocrimes group by ward order by crimes_per_ward desc;

create table chicagocompare as 
SELECT crimes.ward, safetyscore.average_safety_score, crimes.crimes_per_ward
FROM safetyscore
INNER JOIN crimes ON safetyscore.ward = crimes.ward order by safetyscore.average_safety_score desc


--Query 8: Creating Chicago Locations table for comparing crimes and safety score
create table chicagolocations as 
select distinct chicagocompare.ward, chicagocompare.average_safety_score, chicagocompare.crimes_per_ward, chicago.geometry
from chicagocompare 
INNER JOIN chicago ON chicagocompare.ward = chicago.ward
order by chicagocompare.average_safety_score desc
 

