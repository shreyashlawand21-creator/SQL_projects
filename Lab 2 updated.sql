use bankingdb;

alter table customers add column AccountCreationDate date;
desc customers;
alter table customers add column AccountCreationDate date;

-- Data constraints
create table a(id_ int not null, nam varchar(20)); 
insert into a values(1,"Riya");
insert into a values(2,"Teena"),(3,"Raj");
insert into a (id_)values (5);
insert into a(name) values("Geet");
delete from a where id_=5;
alter table a modify nam varchar(20) not null;
create table b(id_ int, unique, nam varchar(100));
create table b(id_ int , nam varchar(100), unique(id_));
 
create table b(id_ int unique, nam varchar(100));
create table b(id_ int, nam varchar(100), unique(id_));
create table b(id_ int, nam varchar(100), constraint un_id unique(id));
show tables;
desc b;
insert into b values(1, "Riya");
insert into b values(2,"Teena"),(3, "Raj");
insert into b values(2, "Reena");
alter table b drop down index un_id;

create table c(an int not null, nm varchar(100), not null, unique(an));
create table c(an int primary key, nm varchar(100));
create table c(an int primary key, nm varchar(100), primary key(an));
create table c(an int , nm varchar(100), constraint pr_an primary key(an));
alter table c add primary key (an);
alter table c add constraint pr_an primary key(an);
alter table c drop primary key;
insert into c values(1,"riya");
insert into c values(2,"teena"),(3,"raj");
insert into c values(2,"reena");
insert into c(nm) values("reena");
insert into c(an) values("reena");
insert into c(an) values(9);

----foreign key
create table pr(pid int primary key, pn varchar(100), price decimal(10,2);
create table od(oid int primary key, odate date, pr_id int, payment varchar(100), foreign key(pr_id) references pr(pid));
create table od(oid int primary key, odate date, pr_id int, payment varchar(100), constraint fk_prid foreign key(pr_id) references pr(pid));
alter table od add foreign key(pr_id) references pr(pid);
alter table od add constraint fk_prid foreign key(pr_id) references pr(pid);
alter table od drop foreign key fk_prid;
insert into pr values(1,"AC",50000.00),(2, "Laptop",60000.00),(3,"Mobile",40000.00);
create table order id(oid);
select * from pr;
insert into od values(101, "2026-5-3",2,"Cash"),(102,"2026-4-3",3,"Online");
select * from od;
insert into od values(103, "2026-5-3",5,"Cash");
create table ch(nm varchar(100), age int not null, city varchar(100), check(age>18));
insert into chk values("Rutuja",24,"Pune"),("Sai",19,"Mumbai"),("Disha",55,"Nagpur");
create table chk(check);
select *from chk;
insert into chk values("Gauri",17,"Pune");
create table chk1(nm varchar(100), age int not null, city varchar(100), check age > 18 and city="Pune"));
insert into chk1 values("Rutuja",24,"Pune"),("Sai",19,"Pune"),("Disha",55,"Pune");
select *from chk1;
insert into chk1 values("Gauri",19,"Mumbai");
insert into chk1 values("Gauri",14,"Pune");

alter table chk1 drop check chk1_chk1_;
create table chk1(nm varchar(100), age int not null, city varchar(100), constraint chk_age_check(age > 18 and city="Pune"));
alter table chk1 add constraint chk_age check(age > 18);
alter table chk1 add check(age > 18);

-- Default 
create table df1(nm varchar(100), city varchar(100)default "Pune");
insert into df1 values("Suresh","Mumbai"),("Ganesh","Solapur"),("Rakesh","Nagpur");
insert into df1(nm) values("Lalit");
alter table chk alter age set default 19;
alter table df1 alter city drop default;

show databases;


