create database if not exists gfg;

drop database gfg;

create database if not exists geeksforgeeks;

create database if not exists gfg;

create table gfg.user1 (roll_no int, 
                    name varchar(256), 
                    phone_no char(10) , 
                    marks int);
                    
create table gfg.user2 (roll_no int, 
                    name varchar(256), 
                    phone_no char(10) , 
                    marks int);

drop table gfg.user2;
                    
drop table geeksforgeeks.user2;

insert into gfg.user1(roll_no, name, phone_no, marks)
              values(1,"Sakshi", "8325346567", 56);

insert into gfg.user1(roll_no, name, phone_no, marks)
              values(2, "Neha", "48369",76),
					(3, "Avneet", "743698", 85);
                    
insert into gfg.user1
            values(4,"Radha", "43653509",78);
              
insert into gfg.user1(name,roll_no,phone_no,marks)
            values("Ashish", 5, "39825608", 85);
              
insert into gfg.user1(name,roll_no,marks)
            values("Ram", 6, 85);
            
            
create table gfg.sales (Serial_number int primary key auto_increment,
                        course_name varchar(256) not null ,
                        student_name varchar(256) not null,
                        age int check (age>18),
                        date_time timestamp default current_timestamp,
                        phone_no char(10) unique);
                        
insert into gfg.sales(course_name, student_name, age,phone_no)
            values ("Data Analysis", "Sakshi", 25, "827465");
                   
insert into gfg.sales(course_name, student_name, age,phone_no)
            values ("Data Analysis", "Avneet", 24, "87827465")

