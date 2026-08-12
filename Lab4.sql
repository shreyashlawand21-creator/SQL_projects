use bankingdb;
select accountid,accounttype,balance from accounts;
select transactiontype,transactionid,amount from transactions;
select * from accounts where accounttype = "Savings"
select * from accounts where balance > 25000;
select * from accounts where balance between 25000 and 40000;
select * from customers where Cusatomerid in(101,103,106,121,143);
select * from customers where firstname like "R%";

 -- Retrieve all current account records
 select * from accounts;

-- Find accounts with balance less than 15000
select * from accounts where balance < 15000;

-- Display transactions between 1000 and 10000
select * from transactions where Amount between 1000 and 10000;

-- Retrieve customer records for CustomerID 104,105
select * from customers where Customerid in (104,105);

-- Display cusatomers whose last name starts with S
select * from customers where Lastname like "S%"
