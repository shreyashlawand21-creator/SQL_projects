use bankingdb;
create table Accounts(Accountid int, AccountType varchar(20), balance decimal(10, 2));
-- drop table Account;
create table Transactions(TransactionId int, TransactionDate Date, Amount decimal(10,2), TransactionType varchar(15);
create table branches(Branchid int, BranchName varchar(100), BranchAddress varchar(200), BranchPhone varchar(15);
create table AccountsBranches(Assignment Date);
create table loans (Loanid int, Loanamount decimal(10,2), InterestRate decimal(5,2), Startdate Date, Enddate date);
desc loans;
alter table loans rename column InterestRate to InterestRates;  -- to change column's name

desc customers;
alter table customers add DateofBirth date;
alter table customers modify phone varchar(20);
