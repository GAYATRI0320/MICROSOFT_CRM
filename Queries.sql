Select distinct c.Case_Stage , c.Owning_User , c.Age 
From Cases c, Cases c1 
where c.Age = c1.Age 
and c.caseid != c1.caseid ;



Select industry , count(account) no_of_accounts 
From accounts 
Group by industry 
Order by no_of_accounts DESC;



Select distinct current_cost from products_1 p1  
where 3 =  
(select count(distinct current_cost ) 
from products_1 p2  
where p1.current_cost <= p2.current_cost); 



select distinct current_cost from products_1 p1  
where 200 >=  
(select count(distinct current_cost)  
from products_1 p2  
where p1.current_cost <= p2.current_cost) 
ORDER BY p1.Current_Cost DESC; 



Select accounts.Account_Name ,accounts.Industry , cases.caseid  
from accounts  
join cases on accounts.Owning_User = cases.Owning_User;



Select orders.Owning_User, orders.Account_ID, orders.Status_Reason, order_products.Amount, order_products.quantity  
from orders  
join order_products on  
orders.Orders_id =order_products.Orders_id;



SELECT * FROM sales_person_target  
WHERE EXISTS( SELECT * FROM users  
WHERE sales_person_target.Full_Name= users.Full_Name); 



SELECT COUNT(Quote_Product),b.quote,Name 
FROM quote_products a, quotes b 
WHERE a.Quote=b.Quote 
GROUP BY b.Quote, Name; 




Select name , quote, quote_id ,total_amount  
from quotes  
where total_amount =  
(select max (total_amount)  
from quotes); 

 


Select distinct total_amount  
from quotes a  
Where 100 >= (select count(distinct total_amount)  
from quotes b  
where a.total_amount >= b.total_amount) order by a.total_amount ASC;



SELECT  p.Product_Type, p.Name, p.Current_Cost 
FROM (SELECT MAX(Current_Cost) AS Total_Current_cost, Product_type 
      FROM products_1 GROUP BY product_type) AS Pro_New 
      INNER JOIN products_1 p 
      ON Pro_New.Product_type = p.Product_type 
      AND Pro_New.Total_Current_cost = p.Current_Cost;



SELECT * FROM accounts 
WHERE Account <=20 
UNION 
SELECT * FROM( 
    SELECT * FROM accounts a 
    ORDER BY a.Account DESC) 
    AS a1 WHERE a1.account <=20;



Select account_name, industry, owning_user, business_type  
from accounts a  
where a.industry = 'manufacturing'  
Union all  
select account_name, industry, owning_user, business_type  
from accounts a1  
where a1.industry = 'manufacturing'; 



SELECT DISTINCT a.account, a.account_name, a.Owning_User,  
a.Industry, a.website, a.Business_Type 
FROM accounts a, accounts a1 
WHERE a.Industry = a1.Industry 
AND a.Account != a1.Account;



Select caseid, Origin, Created_On, Case_Stage, Age, Age_tier  
from cases  
where owning_user in (select owning_user  
                      from contacts  
                      where lead_source in  
                      (select lead_source  
                       from leads  
                       where industry = 'manufacturing' or industry = 'Pharma')); 




SELECT * FROM orders 
WHERE Total_Amount> any(SELECT Total_Amount 
                        FROM orders 
                        WHERE Total_Amount < '$22.66K'); 



select * from products_1   
where Current_Cost>  
all(select Current_Cost  
    from products_1  
   where Current_Cost < 'INR 1,656.17'); 



select Name, Product, Current_Cost, Product_Type 
 FROM products_1 p  
where Product_ID not in  
(select Product  
from price_list_items i  
where p.product_id=i.product_id and i.amount> 500); 


 
select Orders_id, Name  
from orders as O  
where(select count(*)  
from orders as p  
where p.Total_Amount > o.Total_Amount) < 5; 



SELECT P.Name, P.Product  
FROM products_1 P  
WHERE (Status_Reason ='Active' OR Product_Type='personal care' or Product_Type=' home maintence')  
AND P.Product IN ( SELECT S.Product  
                  FROM price_list_items S  
                  JOIN price_lists L ON S.Price_List = L.Price_List  
                  GROUP BY S.Product, L.Name  
                  HAVING COUNT(*) < 12); 




SELECT Name, Price_List  
FROM price_lists  
WHERE Status_Reason='Active'  
GROUP BY Name  
HAVING AVG(Price_List)> 
(SELECT AVG(Price_List)  
FROM price_lists);



SELECT price_list_items.Price_List,price_list_items.Product,products_1.Name,products_1.Created_On  
FROM price_list_items  
LEFT OUTER JOIN products_1  
ON(price_list_items.Product_ID=products_1.Product_ID);



SELECT Topic, Opportunity, SUM(Account_Amount)  
FROM opportunities  
WHERE Topic NOT LIKE '%es%'  
GROUP BY Topic  
HAVING SUM(Account_Amount)>200  
ORDER BY SUM(Account_Amount);



SELECT Name  
FROM products_1 p,price_list_items l  
WHERE p.Product_ID=l.Product_ID  
AND Status_Reason='Active'; 



SELECT Lead, Industry, AVG(Owning_User)  
FROM leads  
GROUP BY Lead  
ORDER BY Lead DESC; 



SELECT caseid, origin, SUM(Age)  
FROM cases  
GROUP by caseid; 



SELECT Topic, AVG(Opportunity), Probablity  
FROM opportunities  
WHERE Originating_Lead>1500  
GROUP by Probablity; 



SELECT COUNT(Opportunity), Topic  
FROM opportunities  
GROUP BY Account_Amount; 




SELECT accounts.Account,accounts.Account_Name,accounts.Industry, 
Accounts.Owning_User,accounts.Website,accounts.Business_Type, 
contacts.Contact,contacts.lastname,contacts.Created_On,contacts.Email, 
Contacts.Owning_User,contacts.Parent_Account,contacts.Mobile,contacts.Lead_Source 
FROM accounts,contacts; 




SELECT r.Orders_id, r.Name, t.Amount  
FROM orders r LEFT OUTER JOIN order_products t  
ON (r.Orders_id = t.Orders_id); 



SELECT r.Orders_id, r.Name, t.Amount  
FROM orders r 
RIGHT OUTER JOIN order_products t 
 ON (r.Orders_id = t.Orders_id); 



SELECT Price_List,Product, Product_ID, Amount 
FROM price_list_items 
WHERE amount < 1000;



select Orders_id, Name, Total_Amount, Account_ID  
from orders  
where Total_Amount =  
(select Total_Amount  
from orders  
where Orders_id=21003541 ); 




SELECT * FROM users WHERE User='1010'; 