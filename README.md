# MICROSOFT_CRM
RunMYSQL:-

create sql database and run query database from databse.sql

# Specs

In the database that you created, formulate and execute each of the following queries in SQL. In each case, you should attempt to handle the task in a single (possibly nested) SQL statement.
1.Database.sql contain all the database 
2.Files such as orders, accounts, cases, contacts, leads, opportunites, orders, order products, price lists, price list items, products, quote, quote products, sales person target and users contain the data of each of these tables.
3. file queries.sql contain all the 34 queries to try on.
4.File named output.docx contain the output of all the queries.

# Run these queries

1. Write a query to fetch 200 maximum Current cost from products table. 

2. Display the owning user, account id, status reason, amount and quantity of products to every orders. 

3. Count the number of quote products in quote wise and also display the name. 

4. Write a query to print the name of product having the highest total amount in each product type. 

5. Write a query to show the row where industry is manufacturing twice in results. 

6. Write a query to fetch the list of caseid, created_on,case_stage,age,age_tier who have their cases in industry manufacturing or pharma. 

7. Write a query to select the Name, product, current cost, product type from products who has amount more than 500 from the table price list items. 

8. Write a query to select name and price list having status reason active name wise having price list greater than avg price list. 

9. Write a query to select opportunity, topic without having es in between and having total account amount more than 200. 

10.Write query to select topic probability and avg of opportunity with opportunity lead greater than 1500 in probability wise. 

11. Write a query to left JOIN table orders and order product on order id. 

run more queries from queries.sql file

DECLARATION : This project can be run on Xampp Server, don't worry if you don't have...click the link below to install Xampp server https://www.apachefriends.org/download.html

For the installation demo you can refer : https://youtu.be/5g0ZurU47jY

# Steps to fetch the data 
Instructions for downloading the project:

1.Install XAMPP server on your system to be used as local server for project. (lets say you installed it in 'K:\xampp_folder' folder)
2.Download the zip file and unzip on any of the drive
3.Start your XAMPP Control Panel and start 'Apache' and 'MySql' servers there.
4.Open your browser and type 'localhost/' or '127.0.0.1/' , then from there go to phpmyadmin.
5.Create a database named:'MICROSOFTCRM' in phpmyadmin.
6.Import the sql file from the folder to the phpadmin

![image](https://user-images.githubusercontent.com/72694919/117034532-07201080-ad21-11eb-9641-5053a6b2a15f.png)

7.Congratulations! you are good to go for analysing data

# Relational schema for the database

![image](https://user-images.githubusercontent.com/72694919/117034952-6f6ef200-ad21-11eb-9833-74ed9054cf86.png)
