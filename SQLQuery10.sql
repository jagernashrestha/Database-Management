/*lab - 10*/


create table student
(id int ,
name varchar(20),
address varchar(20))
insert into student values(1,'Jagerna','sitapaila'),(2,'aryav','samakushi')
select * from student



/*viewwwwww*/
create view idf as
select id,name
from student
where id<5;

/*syntax for view*/
select * from idf

--syntax for update view
alter view idf as
select id
from student
where id<=2

--trigger
create trigger trigge_name
on student
for insert
as
begin 
print'pretty jagerna'
end
go
insert into student values(3,'aryav','samakushi')
drop trigger trigge_name

create trigger trigger_name
on student
for insert
as
begin rollback
print'pretty jagerna'
end
go

create user user_name
identified by password;

-DB
	.choose (jagernashrestha)
		-security
			>>user
				.new user


