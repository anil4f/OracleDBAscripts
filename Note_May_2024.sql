https://grvoqcm-qa07284.snowflakecomputing.com/console/login
krishna
Krishna@123



snowsql -a grvoqcm-qa07284 -u krishna 

snowsql -c hdfc

https://grvoqcm-qa07284.snowflakecomputing.com/console/login


HDFC --> 25 years 





Database    --> OLTP (5 years ) 
---------
Oracle
Sqlserver
DB2
Teradata
Mysql
Postgresql

Snowflake --> OLAP --> 

OLTP ( 5years of data) --> OLAP(Historical Info)
2 years                      20 years 


HDFC BANK:-    Database   
--------------
Banking    -->  Schema1
Insurance  -->  Schema2
Loans      -->  Schema3 


Database --> Schems --> objects 


Objects:-
------------
Tables --> Rows and Columns 



Cloud :-
------------
AWS
Azure
Gcp 


Snowflake --> no cloud on its own 

Oralce    --> Oracle cloud 
Sqlserver --> Azure 

---------------------------
Url 
Username
PAssword 


Oracle
Sqlserver
DB2                  -----> Snowflake 
Teradata
Mysql


amazon -->

24*7 --> Cost of involved 

Snowflake --> 

40 sec --> 1 minute billing  after taht per sec billing 

1.20 sec --> 

30 sec  -->  1 minute 


Scale up and Scale Down :-
--------------------------


Traditional:-
-------------------
server --> HD-->7 TB  --> RAM --> 32GB 
6 months 
server --> HD-->4 TB  --> RAM --> 16GB


server --> HD-->7 TB  --> RAM --> 32GB 
server --> HD-->10 TB  --> RAM --> 32GB 


Snowflake 
Oracle 
IICS
Azure
Gcp
Amazon 
Python 
Data Build Tool
Power BI 


Snowflake + Python 
Snowflake + Sql 
Snowflake + Matiilian  
Snowflake + DBT 


Snowflake + DBT + Matillion + Python + Sql 



Hard Disk --> files, images , videos 

PC1 -->  4 GB Ram   , 16 GB ram   , 32 RAM 


PC1 -->  X-small Warehouse   , Small- Warehouse   , Medium - 32 Warehouse 



Car -->   Base   Mid    High 





Ctrl+Enter  or 



UI's that you are working on :-
1) Snowsight     --> Snowflake recommends 
2) Classic UI 


CLI -->
------------
snowsql 



-----------------------10-May-2024 
create database dev_db;


HDFC BANK:-    Database   
--------------
Banking    -->  Schema1
Insurance  -->  Schema2
Loans      -->  Schema3 
;

create database hdfc_db;
create schema loans_schema;
create schema Insurance_schema;
create schema Banking_schema;

SNO	SNAME	COURSE	JOINING_DATE	FEE
1	Anil	Snowflake	10-May-24	15000
2	Chandra	Oracle	10-Feb-24	10000

;
YYYY-MM-DD
;

insert into student_info values(1,'Anil','Snowflake','2024-05-10',15000);
insert into student_info values(2,'Chandra','Snowflake','2024-05-10',15000);
insert into student_info values(3,'Deepak','Snowflake','2024-05-10',15000);

select * from student_info;

select count(*) from student_info; -- 3 records 

-- 000608 (57P03): Warehouse 'COMPUTE_WH' is suspended. 
--Use 'alter warehouse COMPUTE_WH resume;' command if you need to use it again.

alter warehouse COMPUTE_WH resume;
alter warehouse COMPUTE_WH suspend;

select * from information_schema.tables where table_type='BASE TABLE';

create table student_info
(
SNO	number,
SNAME	varchar,
COURSE	varchar,
JOINING_DATE date,
FEE number
);



create or replace table viewers
(
viewerid number,
programmeid number,
viewername varchar(30) 
);

create or replace table programme
(
programmeid number,
channelid number,
programme_name varchar(40) 
);

create or replace table channel
(
channelid number,
category varchar(1),
channelname varchar(30) 
);

create or replace table channelcategory
(
categoryid varchar(1),
categoryname varchar(30) 
);



create or replace table train_details_tbl
(
train_id int,
train_name varchar(50),
train_type varchar(5) ,
train_time varchar(4) ,
train_from varchar(5) ,
train_to varchar(5),
train_speed int
);

create or replace table train_type_tbl
(
train_type varchar(5),
train_description varchar(30)
);

create or replace table train_stations_tbl
(
station_id varchar(5),
station_name varchar(30)
);




create or replace table registration
(
reg_id decimal(10,0),
reg_year decimal(10,0),
reg_date date,
student_id decimal(10,0),
section_id decimal(10,0),
midterm_grade varchar(10),
fullterm_grade varchar(10)
);

create or replace table student
(
student_id decimal(10,0),
last_name varchar(40),
first_name varchar(40),
email varchar(100),
phone decimal(20,0)
);

create or replace table section
(
section_id decimal(10,0),
course_id decimal(10,0),
schedule_id decimal(10,0),
instructor_id decimal(10,0),
room varchar(20)
);

create or replace table course
(
course_id decimal(10,0),
name varchar(40),
type varchar(30),
term decimal(10,0)
);


create or replace table schedule
(
schedule_id decimal(10,0),
day varchar(20),
starttime varchar(30),
endtime varchar(30)
);

create or replace table instructor
(
instructor_id decimal(10,0),
last_name varchar(40),
first_name varchar(40),
type varchar(40),
dept_id decimal(10,0)
);



create or replace table department
(
dept_id decimal(10,0),
name varchar(40)
);

---------------





---------
show databases;
select * from information_schema.databases;

show tables;
select * from information_schema.tables where table_type='BASE TABLE';

select current_database();
select current_schema();

select current_schema();

create table t_loans(loan_id number, loan_Type varchar,loan_amount number);

insert into t_loans values(1,'House Loan',160000);
insert into t_loans values(2,'Personal Loan',250000);

select * from t_loans;

show tables;
select * from information_schema.tables where table_type='BASE TABLE';

show schemas;
select * from information_schema.schemata;


show warehouses;

use schema banking_schema;
use schema insurance_schema;

use database dev_db;

create schema dev_schema;

YYY-MM-DD;

select current_date(); --> function  2024-05-11
IST  --> 8.31 PM
CST  --> 10.01 AM;
;
select current_timestamp(); -- 2024-05-11 08:01:55.763 -0700  

2024-05-11 08:01:55.763 -0700
YYYY-MM-DD HH24:MI:SS.FS Timezone(UTC-7) ;

show parameters like '%TIMEZONE%'; -- America/Los_Angeles

alter session set TIMEZONE='Asia/Kolkata';

alter session set TIMEZONE='America/New_York'; -- 2024-05-11 11:06:53.717 -0400

alter session set TIMEZONE='America/Los_Angeles'; 



select * from emp;


select * from information_schema.columns where table_name ='T_EMP';

select get_ddl('TABLE','STUDENT_INFO');

create or replace TABLE STUDENT_INFO (
	SNO NUMBER(38,0),
	SNAME VARCHAR(16777216),
	COURSE VARCHAR(16777216),
	JOINING_DATE DATE,
	FEE NUMBER(38,0)
);


create or replace TABLE T_STUDENT_INFO (
	SNO NUMBER(4),
	SNAME VARCHAR(30),
	COURSE VARCHAR(50),
	JOINING_DATE DATE,
	FEE NUMBER(10)
);

desc table t_student_info;

select current_role();
select current_warehouse();


grvoqcm-qa07284
<org_name>-<><account>
;

select current_organization_name();
select current_account_name();


https://developers.snowflake.com/snowsql/



select current_role();
select current_available_roles();


[ "ACCOUNTADMIN", "ORGADMIN", "PUBLIC", "SECURITYADMIN", "SYSADMIN", "USERADMIN" ]
;

RBAC --> Role based Access control 

;


select current_user();

show users;

create user anil 
password='anil@123'
must_change_password=true
default_role=sysadmin;

create user deepak 
password='Krishna@123'
must_change_password=false
default_role=deepak;

create user bala 
password='Krishna@123'
must_change_password=false;

create user soumya 
password='Krishna@123'
must_change_password=false;

-- grant a role to user 
grant role sysadmin to user anil;
grant role sysadmin to user deepak;
grant role sysadmin to user bala;

show users;

show parameters like '%timezone%';



select * from information_schema.tables where table_type='BASE TABLE';

select * from viewers;


insert into viewers values('1001','101','Rohit');
insert into viewers values('1002','102','Akash');
insert into viewers values('1003','103','Vicky');
insert into viewers values('1004','104','Ajay');
insert into viewers values('1005','105','Vishal');
insert into viewers values('1006','106','Mohit');
insert into viewers values('1007','107','Nakul');
insert into viewers values('1008','108','Himanshu');
insert into viewers values('1006','102','Mohit');
insert into viewers values('1007','101','Nakul');


select * from viewers;

-- 
show parameters like '%autocomm%';
The autocommit property determines whether is statement should to be implicitly
wrapped within a transaction or not. If autocommit is set to true, then a 
statement that requires a transaction is executed within a transaction 
implicitly. If autocommit is off then an explicit commit or rollback is required
to close a transaction. The default autocommit value is true.

rollback;

show parameters like '%autocomm%';

alter session set autocommit=false;

select * from programme;

insert into programme values('101','1','Sportscenter');
insert into programme values('102','2','Ace');
insert into programme values('103','3','Kingkong');
insert into programme values('104','4','Terminator');
insert into programme values('105','5','Roadies');
insert into programme values('106','6','Remix');
insert into programme values('107','7','Comedy Circus');
insert into programme values('108','8','Mahadev');

rollback;
commit;
-- time travel

-------------------- 

file location --> local  --> C:\Users\Balakrishna\Desktop\Visual\New     emp_new.csv
emp   ---> snowflake 

snowflake 


;
select * from emp;

create table emp 
(
EMPNO number,ENAME varchar,JOB varchar,MGR number,HIREDATE date ,SAL number ,COMM number ,DEPTNO number);

------------------------------
Terms to understand:-
------------------------------
stage --> you can place files into stage 
list 
put 
copy --> which will be used to load data from a file to a table 
;

stage --> its a named given to a location in snowflake 

Internal 
External 

Internal --> 
user --> specific to user , one user files can not be views by otehr user 
table --> 
named  

external --> 
aws 
azure
gcp 


;


user  --> @~
table --> @%table_name
named -->  @stage_name 



list --> is command which will be used to see the files in a stage (user,table,named)
;
list @~;


put --> which will be used to place a file into a stage 
snowflake UI will not support put command . please use snowsql 

;
put file://C:\Users\Balakrishna\Desktop\Visual\New\emp_new.csv @~;

000002 (0A000): Unsupported feature 'unsupported_requested_format:snowflake'.

;
snowsql --> CLI 
;

copy into emp from @~/emp_new.csv.gz;

--file properties:- 
header 
record delimiter \n 
field delimiter  , 

;

insert into emp values(EMPNO,'ENAME','JOB',MGR,'HIREDATE',SAL,COMM,DEPTNO);


show file formats;

drop file format my_csv_format;

create file format my_csv_format 
type=csv 
skip_header=1
field_delimiter=',';

-- error_on_column_count_mismatch=false
copy into emp from @~/emp_new.csv.gz file_format=(format_name=my_csv_format);

select * from emp;

desc file format my_csv_format;

truncate table emp;

copy into emp from @~/emp_new.csv.gz file_format=(format_name=my_csv_format);

select $2,$3,$4,$5,$6,$7,$8,$9 from @~/emp_new.csv.gz (file_format=>my_csv_format);

copy into emp from (select $2,$3,$4,$5,$6,$7,$8,$9 from @~/emp_new.csv.gz (file_format=>my_csv_format));

select * from emp;



Internal --> user(@~) , table stage (@%table_name)  , named stage ( @stage_name)
External --> aws, azure, gcp 

;
list @~;

rm @~;

show file formats;

desc file format MY_CSV_FORMAT;



create file format my_new_csv_format
type=csv
skip_header=1
field_delimiter=','
FIELD_OPTIONALLY_ENCLOSED_BY='"'
;

desc file format my_new_csv_format;

list @~;

select * from emp;

select $1, $2,$3,$4,$5,$6,$7,$8 from @~/emp_new.csv.gz (file_format=>my_csv_format);

copy into emp from (select $1,$2,$3,$4,$5,$6,$7,$8 from @~/emp_new.csv.gz (file_format=>my_csv_format));


select $1, $2,$3,$4,$5,$6,$7,$8 from @~/emp_new.csv.gz (file_format=>my_new_csv_format);

copy into emp from (select $1,$2,$3,$4,$5,$6,$7,$8 from @~/emp_new.csv.gz (file_format=>my_new_csv_format));

copy into emp from (select $1,$2,$3,$4,$5,$6,$7,$8 from @~/emp_new.csv.gz (file_format=>my_new_csv_format));

select * from emp;


select * from table(information_schema.copy_history());

select * from table(information_schema.copy_history(table_name=>'EMP',start_time=>dateadd(hours,-24,current_timestamp())));

select * from table(information_schema.copy_history(table_name=>'EMP',start_time=>dateadd(hours,-48,current_timestamp())));

truncate table emp;


show file formats;

select * from information_schema.file_formats;


select count(*) from emp;

copy into emp from (select $1,$2,$3,$4,$5,$6,$7,$8 from @~/emp_new.csv.gz (file_format=>my_new_csv_format))
force=true;

select get_ddl('TABLE','EMP');

create or replace TABLE EMP (
	EMPNO NUMBER(4),
	ENAME VARCHAR(5),
	JOB VARCHAR(20),
	MGR NUMBER(38,0),
	HIREDATE DATE,
	SAL NUMBER(38,0),
	COMM NUMBER(38,0),
	DEPTNO NUMBER(38,0)
);

copy into emp from @~/emp_new.csv.gz file_format=(format_name=my_new_csv_format)
truncatecolumns=true;

select * from emp;

alter table emp modify ename varchar(30);


delete from emp;

copy into emp from @~/emp_new.csv.gz file_format=(format_name=my_new_csv_format)
truncatecolumns=true force=true;

copy into emp from @~/emp_new.csv.gz file_format=(format_name=my_new_csv_format)
truncatecolumns=true force=true;

select * from emp;

list @~;

copy into emp from @~/emp_new.csv.gz file_format=(format_name=my_new_csv_format)
truncatecolumns=true force=true purge=true;

truncate table emp;


-- 
grant database, schema, table access to role sysadmin
;


grant usage on database hdfc_db to role sysadmin;
grant usage on schema banking_schema to role sysadmin;
grant usage on warehouse dev_wh to role sysadmin;

grant select on table emp to role sysadmin;

list @%emp;

show stages;
select * from information_schema.stages;

create stage my_csv_stage;

desc stage my_csv_stage;

-- how to associate file format to a stage 

alter stage my_csv_stage set file_format=my_new_csv_format;

select get_ddl('TABLE','EMP');
select get_ddl('FILE_FORMAT','my_new_csv_format');


CREATE OR REPLACE FILE FORMAT MY_NEW_CSV_FORMAT
	TYPE = csv
	SKIP_HEADER = 1
	FIELD_OPTIONALLY_ENCLOSED_BY = '\"'
;
