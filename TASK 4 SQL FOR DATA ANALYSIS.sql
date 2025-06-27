-- USE THE SCHEMA
USE data;

-- SELECT ALL THE DATA FROM e-commerce_dataset
SELECT * FROM `e-commerce_dataset`;

 -- SELECT with WHERE and ORDER BY
SELECT Customer_Id, Gender, Sales, Profit
FROM `e-commerce_dataset`
WHERE Gender = 'Female'
ORDER BY Sales DESC;


--  GROUP BY with aggregate functions
SELECT Product_Category, sum(Sales) AS Total_Sales, AVG(Profit) AS Avg_Profit
FROM `e-commerce_dataset`
GROUP BY Product_Category
ORDER BY Total_Sales DESC;


 -- Create Customers table (for JOINs)
CREATE TABLE IF NOT EXISTS customers (
    Customer_Id INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    Country VARCHAR(50)
);



-- Inserting values into customers table 
INSERT INTO customers (Customer_Id, Customer_Name, Country) VALUES
(37077, 'Alice Smith', 'USA'),
(59173, 'Jane Doe', 'UK'),
(41066, 'Emily Davis', 'Canada'),
(56518,'John Dave','Austria'),
(11439,'Joel Dispenza','Australia');



-- Selecting all the data from customers table
SELECT * FROM `customers`;



-- Inner Join
SELECT 
    e.Customer_Id, 
    c.Customer_Name, 
    e.Product, 
    e.Sales
FROM 
    `e-commerce_dataset` AS e
INNER JOIN 
    customers AS c 
ON 
    e.Customer_Id = c.Customer_Id;
    
 
--  LEFT JOIN
SELECT c.Customer_Id, c.Customer_Name, e.Product, e.Sales
FROM customers AS c
LEFT JOIN `e-commerce_dataset` AS e ON c.Customer_Id = e.Customer_Id;   




--  RIGHT JOIN
SELECT c.Customer_Id, c.Customer_Name, e.Product, e.Sales
FROM customers AS c
RIGHT JOIN `e-commerce_dataset` AS e ON c.Customer_Id = e.Customer_Id;




-- Subquery : Customers with total sales over 350
SELECT Customer_Id
FROM (
    SELECT Customer_Id, sum(Sales) AS Total_Sales
    FROM `e-commerce_dataset`
    GROUP BY Customer_Id
) AS customer_totals
WHERE Total_Sales > 350;
    
    
    
-- AGGREGATE FUNCTION : Overall Profit and Average Discount
SELECT sum(Profit) AS Total_Profit, AVG(Discount) AS Average_Discount
FROM `e-commerce_dataset`;

    
    
    
-- CREATING A VIEW  FOR ANALYSIS
CREATE VIEW sales_summary AS
SELECT Product_Category, sum(Sales) AS Total_Sales, sum(Profit) AS Total_Profit
FROM `e-commerce_dataset`
GROUP BY Product_Category;



-- SELECTING DATA FROM VIEW
SELECT * FROM sales_summary;


-- CREATING INDEXES    
CREATE INDEX idx_customer_id ON `e-commerce_dataset` (Customer_Id);
CREATE INDEX idx_product_category ON `e-commerce_dataset` (Product_Category(20));



-- CHECKING THE INDEXES ARE CREATED 
SHOW INDEXES FROM `e-commerce_dataset`;
   
    
    
    
    
    
    
    
    
    
    







