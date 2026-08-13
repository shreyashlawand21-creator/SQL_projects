use bankingdb;
select from transactions where amount > (select avg(Amount)from transactions);
select accountid, accounttype, balance, customerid from accounts where balance > (select avg(balance)from accounts) order by balance desc;
select acountid, acountttype, balance, customerid from accounts where accountid in (select accountid from transactions where TransactionType+"Deposit");
select accountid, accountType, balance, customerid from accounts where balance=(select max(balance) from accounts);
