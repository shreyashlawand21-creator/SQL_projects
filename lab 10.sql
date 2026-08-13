use bankingdb;
create view High_Balance_Accounts as select accountid, accounttype, balance, customerid from accounts where balance > 30000;
select * from high_balance_accounts;
select * from accounts;
create or replace view high_balance_accounts as select a.accountid, a.accounttype, a.balance, a.cutomerid, t.transactiontype, t.transactiontype, 
t.amount,t.transactiondate from accounts inner join transactions t on a.accountid =
 t.accountid where balance > 30000;
 select * from high_balance_accounts order by balance desc;
 select accountid, accounttype, balance, customerid, transactionid, transactiontype, amount, transactiondate
 from high_balance_accounts order by balance desc;
 
 
 
 
 