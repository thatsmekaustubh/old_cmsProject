desc user;

select * from member where id='1' and pw='2';

select host, user, password from user;
select * from user where user='egyou' and password=password('cometrue');

show databases;

create database a_egyou;

create table member(
	id varchar(20) not null primary key,
	pw varchar(20) not null,
	name varchar(20) not null,	
	address varchar(50),
	phone varchar(18),
	email varchar(30)
);

desc member;

insert into member(id, pw, name) values('dream','cometrue','컴소2학년');
insert into member(id, pw, name) values('egyou','csidu','유응구');
insert into member(id, pw, name) values('egyou1',password('csidu1'),'유응구');

delete from member where id='dream';

update member set name='haha', 
address='haha', phone='haha', email='haha' 
where id='dream' and pw='cometrue';

select * from member;

create table zipcode (
	seq int not null primary key, 
	zipcode varchar(7) not null, 
	sido varchar(4) not null, 
	gugun varchar(17) not null, 
	dong varchar(52) not null, 
	bunji varchar(17)
);

load data local infile 'd:/zipcode.csv' into table zipcode
fields terminated by '\,' 
lines terminated by '\r\n';

select count(*) from zipcode;
select * from zipcode where dong like '%월계%';

select * from zipcode where dong like '%월계%' 
Limit 0, 10;

select * from zipcode where dong like '%월계%' 
order by seq DESC Limit 1, 10;

select * from zipcode where seq='320';

drop table teamproject;

create table teamproject (
	seq int not null primary key auto_increment, 
	title varchar(30) not null, 
	author varchar(4) not null, 
	image varchar(30),
	filename varchar(40),
	description text	
);

desc teamproject