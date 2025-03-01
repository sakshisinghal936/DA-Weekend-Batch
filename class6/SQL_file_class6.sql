Select * from gfg.sample_data;

Select name, salary from gfg.sample_data;

Select distinct Department from gfg.sample_data;

Select distinct country from gfg.sample_data;

Select distinct department , country from gfg.sample_data;

Select * from gfg.sample_data
where Department = "HR";

Select * from gfg.sample_data
where age>30;

Select * from gfg.sample_data
where age>30 and department = "HR";

Select * from gfg.sample_data
where age>30 or department = "HR";

Select age, department, country, salary from gfg.sample_data
where age>30 and Department = "HR" and salary >60000;

Select * from gfg.sample_data
where Department not in ("HR");

Select * from gfg.sample_data
where Department in ("HR", "Finance");

Select avg(age) as "Average_age" from gfg.sample_data;

Select max(salary) as Max_Salary, 
        min(salary) as "Min_Salary",
        round(avg(Salary)) as "avg_salary",
        sum(salary) as "Total_Salary"
 from gfg.sample_data;
 
 Select avg(salary) / sum(salary)*100 as percent  from gfg.sample_data;

Select max(salary) as Max_Salary, 
        min(salary) as "Min_Salary",
        round(avg(Salary)) as "avg_salary",
        sum(salary) as "Total_Salary"
 from gfg.sample_data
  where department = "HR";
  
Select count(*) from gfg.sample_data;
  
Select distinct count(distinct department) from gfg.sample_data; 

Select *, salary *1.1 as "updated_salary"
 from gfg.sample_data;
 
Select length(department) from gfg.sample_data;

Select * from gfg.sample_data
order by salary desc
limit 5;

Select * from gfg.sample_data
order by salary desc
limit 5 offset 5;

Select * from gfg.sample_data
order by salary desc
limit 5, 10;


Select * from gfg.sample_data
order by salary desc;

Select * from gfg.sample_data
order by salary desc
limit 5;

Select * from gfg.sample_data
order by salary desc
limit 2 offset 1 ;

Select * from gfg.sample_data
order by age, salary desc;

Select * from gfg.sample_data
order by Department;

Select department, 
	avg(salary), 
    count(name) as number_of_people,
    count(distinct country),
    max(age) 
from gfg.sample_data
group by department
having number_of_people  >10 ;

Select country, avg(salary), avg(age) from gfg.sample_data
group by country;

Select country, department , avg(salary) from gfg.sample_data
group by country, department
order by country;

Select country, avg(salary), avg(age) from gfg.sample_data
group by country
having avg(salary)>=80000;

Select department, 
	avg(age), 
    count(name) as number_of_people
from gfg.sample_data
group by department
having number_of_people>9 and avg(age)<40 ;

Select country, count(distinct department) as cnt, avg(salary) 
from gfg.sample_data
group by country
having cnt>3 and avg(salary)>80000;

Select department from gfg.sample_data
group by department, salary
having count(*)>1;

Select Department, max((avg(salary))) from gfg.sample_data
group by Department;








 
 


