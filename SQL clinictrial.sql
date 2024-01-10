drop database if exists clinictrial;
create database clinictrial;
use clinictrial;
select * from clinictrial;

select * from clinictrial;

-- 1. Add index name fast on Name
alter table clinictrial change column name first_name varchar(20);
create index fast on clinictrial(first_name);
-- 2. Describe the schema of table
describe clinictrial;
-- 3. Find average of Age
select round(avg(age)) from clinictrial;
-- 4. Find minimum of Age
select min(age) from clinictrial;
-- 5. Find maximum of Age
select max(age) from clinictrial;
-- 6. Find average age of those were pregnant and not pregnant
select pregnant, round(avg(age)) from clinictrial group by pregnant;


-- 7. Find average blood pressure of those had drug reaction and did not had drug reaction
select Drug_Reaction, round(avg(BP)) from clinictrial group by Drug_Reaction;
-- 8. Add new column name as ‘Age_group’ and those having age between 16 & 21 should be categorized as Low, more than 21 and less than 35 should be categorized as Middle and above 35 should be categorized as High.
alter table clinictrial drop column Age_group;
alter table clinictrial add column  Age_group varchar(10) as ( case when age >=16 and age  <=21 then 'Low'  when age >=21 and age  <=35 then 'Middle' else 'High' end);
-- 9. Change ‘Age’ of Reetika to 3
update clinictrial set age='32' where first_name='Reetika';
-- 10. Change name of Reena as Shara’
update clinictrial set first_name='shara' where first_name='Reena';
-- 11. Remove Chlstrl column
alter table clinictrial drop column chlstrl;
-- 12. Select only Name, Age and BP
select first_name,age,bp from clinictrial;
-- 13. Select ladies whose first name starts with ‘E’
select * from clinictrial where first_name like 'E%';
-- 14. Select ladies whose Age_group were Low
select first_name,Age_group from clinictrial where Age_group ='Low';

-- 15. Select ladies whose Age_group were High
select first_name,Age_group from clinictrial where Age_group ='High';
-- 16. Select ladies whose name starts with ‘A’ and those were pregnant
select first_name,pregnant from clinictrial where first_name like 'A%' and pregnant ='Yes';
-- 17. Identify ladies whose BP was more than 120
select first_name,BP from clinictrial where BP >120;
-- 18. Identify ladies whose BP was between 100 and 120
select first_name,BP from clinictrial where BP between 100 and 120;
-- 19. Identify ladies who had low anxiety aged less than 30
select first_name,Anxty_LH,Age from clinictrial where Age < 30;
-- 20. Select ladies whose name ends with ‘i’
select * from clinictrial where first_name like '%i';
-- 21. Select ladies whose name ends with ‘a’
select * from clinictrial where first_name like '%a';
-- 22. Select ladies whose name starts with ‘K’
select * from clinictrial where first_name like 'k%';
-- 23. Select ladies whose name have ‘a’ anywhere
select * from clinictrial where first_name like '%a%';
-- 24. Order ladies in ascending way based on ‘BP’
select * from clinictrial order by bp asc;
-- 25. Order ladies in descending way based on ‘Age’
select * from clinictrial order by age desc;