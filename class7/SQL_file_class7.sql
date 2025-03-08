Select * from gfg.sample_data
where salary =(Select max(salary) from gfg.sample_data) ;

Select * from gfg.sample_data
where salary > (Select avg(salary) from gfg.sample_data);

Select * from gfg.sample_data
where department = (Select department from gfg.sample_data
					where name = "Person_6");

Select name, department from gfg.sample_data
order by salary desc
limit 1,1;

Select * from gfg.sample_data
where age = (Select max(age) from gfg.sample_data
              where salary > (Select avg(salary) from gfg.sample_data));
              
Select * from gfg.sample_data
where age = (Select max(age) from gfg.sample_data) 
and salary > (Select avg(salary) from gfg.sample_data);	

Select *  from gfg.sample_data
where Department  in (Select department  from gfg.sample_data
                     where age = (Select min(age) from gfg.sample_data));
                     
Select name, department from gfg.sample_data
order by salary desc
limit 1,1;

Select * from gfg.sample_data
where age in (Select age from gfg.sample_data
               where department = "HR");

Select Department, avg(salary) from gfg.sample_data
group by Department
having avg(salary)>75000;

Select * from gfg.sample_data
where department in (Select Department from gfg.sample_data
                     group by Department
                     having avg(salary)>75000);
                     
Select * from gfg.sample_data
where department in (Select department from gfg.sample_data
                     group by department
					  having count(name)<10);

Select *, (Select avg(salary) from gfg.sample_data) from gfg.sample_data;

Select * , salary/(Select sum(salary) from gfg.sample_data) *100 as percentage
from gfg.sample_data;

Select * , (Select max(salary) from gfg.sample_data) - salary as comparison
from gfg.sample_data;

Select Department, sum(salary) from gfg.sample_data
group by department;
                     
Select * , 
salary/(Select sum(salary) from gfg.sample_data s2 
       group by department
       having s2.department = s1.department
       ) *100 
as percentage
from gfg.sample_data s1;

Select * from gfg.sample_data s1
where salary = (Select max(salary) from gfg.sample_data s2
                  group by department
                  having s1.Department = s2.department);
                  
                  
Select * from gfg.sample_data s1
where salary > (Select avg(salary) from gfg.sample_data s2
                    group by department
                    having s1.Department = s2.Department );
                    
               

