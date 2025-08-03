/*--------------------------lab 1------------------------*/
create database AstroWrld

create table student
(
s_id int,
s_name varchar(20),
s_address varchar(20)
)
select  * from student
insert into student values (1,'jagerna','ktm')
insert into student values (2,'arav','ktm')
insert into student values (3,'aryav','samkhusi'),(4,'bukie','sitapaila')
create table student1
(
s_id int primary key,
s_name varchar(20),
s_address varchar(20)
)
insert into student1 values (1,'jagerna','ktm')
select  * from student1
insert into student1 values (1,'jagerna','ktm')

create table employe(
eid int identity(1,1),
ename varchar(20),
primary key(eid))
select  * from employe
insert into employe values ('jagerna')
insert into employe values ('Arav')


/*--------------------------lab 2------------------------*/
/* not null */
create table student45

(
s_id int not null,
s_name varchar(20),
s_address varchar(20)
)
select  * from student45
insert into student45 values (1,'jagerna','ktm')
insert into student45 values (2,'arav','ktm')
insert into student45 values (3,'aryav','samkhusi'),(4,'bukie','sitapaila')
insert into student45 values (5, 'moon','ktm')

/*primary key*/
create table student11
(
s_id int primary key,
s_name varchar(20),
s_address varchar(20)
)

select  * from student11
insert into student11 values (1,'jagerna','ktm')
insert into student11 values (2,'arav','ktm')
insert into student11 values (3,'aryav','samkhusi'),(4,'bukie','sitapaila')
insert into student11 values (5 ,'moon','ktm')

/* use of foreign key*/
create table student12
(
s_id int primary key,
s_name varchar(20),
s_address varchar(20),
foreign key (s_id) REFERENCES student11(s_id)

)
select  * from student12
insert into student12 values (1,'jagerna','ktm')
insert into student12 values (2,'arav','ktm')
/*   unique attribute */
create table student13
(
s_id int primary key,
s_name varchar(20) unique,
s_address varchar(20)
)
select  * from student13
insert into student13 values (1,'jagerna','ktm')
insert into student13 values (2,'arav','ktm')
/* default */
create table student14
(
s_id int primary key,
s_name varchar(20) ,
s_address varchar(20),
exam_fee int default 1000,
s_add varchar(20)
)
select * from student14
insert into student14 values (1,'jagerna','ktm', ,'sitapaila')
insert into student14 values(2,'arav','ktm', 2000,'samkhusi')
/* checkk    */
create table student15
(
s_id int primary key,
s_name varchar(20) ,
s_marks int check(s_marks>32)
)
select * from student15
insert into student15 values (1,'jagerna',90)
insert into student15 values(2,'arav',89)

/* domain    */

/*--------------------------lab 3------------------------*/
/* alter */
create table table1(
s_id int primary key,
s_name varchar(20))

alter table table1 ADD s_mark int,s_add varchar(20)
select * from table1
insert into table1 values (1,'jagerna',90,'ktm')
alter table table1 ADD s_class varchar(20)

/*modifyy*/
alter table table1 alter column s_class int
insert into table1 values (2,'arav',91,'ktm',12)

/*   rename
alter db old db modify name = new name
alter table old_table */
alter database Aj modify name  = BUKKIE

alter table  table1 modify to std
sp_rename'table1','std'

/*          rename column*/
alter table table1 CHANGE s_name Name varchar(20)/*liyena*/

sp_rename 'std.s_name','name','column'

select * from std
/* truncate*/
truncate table std

/*drop*/
alter table Std drop column s_class


create table table4(
s_id int primary key,
s_name varchar(20))
select  * from table4
 drop table table4

 create database hi 
 drop database hi
 drop table std

 /*--------------------------lab 4------------------------*/
 create table product(
p_id int primary key,
p_name varchar(20),
p_price int,
)
select * from product
insert into product values (1, 'shampoo', 2000),(2,'conditioner',250),(3,'perfume',300),(4,'hairclip',20)
select * from product where p_price between 1000 and 3000

select * from product order by p_name 
/*as its temporary*/
select p_name as items from product
select p_id,p_name from product as items
select p_name,1.06*p_price as newprice from product

create table mfd(
mfd_date varchar(20) primary key,
ex_date varchar(20),m_name varchar(20))
insert into mfd values('12-04','12-15','shampoo'),('11-06','11-31','perfume')
select *from mfd
select *from product cross join mfd
select p_name from product cross join mfd

/*inner join*/
select * from product inner join mfd on product.p_name=mfd_date

select product.*,mfd.ex_date  from product,mfd where product.p_name = mfd.ex_date



select product.*,product.p_id  from product where product.p_id = product.p_id
alter table mfd add m_name varchar(20)
 


select product.*,mfd.m_name from product left outer join mfd on product.p_name = mfd.m_name
select product.*,mfd.m_name from product right outer join mfd on product.p_name = mfd.m_name
select product.*,mfd.m_name from product full outer join mfd on product.p_name = mfd.m_name

select*from product union select *from mfd

/*--------------------------lab 5------------------------*/
create table product(
p_id int primary key,
p_name varchar(20),
p_price int,
)
select * from product
insert into product values (1, 'shampoo', 2000),(2,'conditioner',250),(3,'perfume',300),(4,'hairclip',20)
select * from product where p_price between 1000 and 3000

select * from product order by p_name 
/*as its temporary*/
select p_name as items from product
select p_id,p_name from product as items
select p_name,1.06*p_price as newprice from product

create table mfd(
mfd_date varchar(20) primary key,
ex_date varchar(20),m_name varchar(20))
insert into mfd values('12-04','12-15','shampoo'),('11-06','11-31','perfume')
select *from mfd
select *from product cross join mfd
select p_name from product cross join mfd

/*inner join*/
select * from product inner join mfd on product.p_name=mfd_date

select product.*,mfd.ex_date  from product,mfd where product.p_name = mfd.ex_date



select product.*,product.p_id  from product where product.p_id = product.p_id
alter table mfd add m_name varchar(20)
 


select product.*,mfd.m_name from product left outer join mfd on product.p_name = mfd.m_name
select product.*,mfd.m_name from product right outer join mfd on product.p_name = mfd.m_name
select product.*,mfd.m_name from product full outer join mfd on product.p_name = mfd.m_name

select*from product union select *from mfd

/*--------------------------lab 6------------------------*/

/*familiarization */

/*nesteddd*/

/*group by*/
create table person(
id int primary key,
name varchar(20),
faculty varchar(20),
examfee int)

select*from person

insert into person values(1,'jagerna','computer',1000),
(2,'arav','computer',1000),(3,'bukkie','com',1500),
(4,'astro','com',1500)

select faculty,sum(examfee) as total from person  group by faculty

select  faculty from person group by faculty
insert into person values (5,'moon','com',2000)

select examfee ,name from person where 
examfee =(select examfee from person 
where examfee = 2000)

select * from person
where name in
(select name from person where examfee between 1000 and 1500)

select examfee as total ,
count(id) from person group by examfee having count(id)=2

select name,examfee,faculty
from person where examfee = 
all (select examfee from person where faculty = 'computer')

select name,examfee,faculty 
from person where examfee = any 
(select examfee from person where faculty = 'com')


select * from person where name like 'a%'