# 📊 Task 4: SQL for Data Analysis

## ✅ Objective
Use SQL queries to extract and analyze data from an E-commerce dataset.

This project demonstrates:
- Importing CSV data into MySQL
- Performing analytical queries
- Using JOINs, subqueries, aggregates
- Creating views
- Index optimization

---

## 📁 Dataset
**File:** `E-commerce_Dataset.csv`

This dataset contains transaction records for an e-commerce store.  
Key columns include:
- Order_ID
- Customer_ID
- Product
- Product_Category
- Sales
- Profit
- Discount
- Gender
- ... (other fields as per CSV)

---

## ⚙️ 1️⃣ Importing Data to MySQL

**Steps:**
1. Open **MySQL Workbench**.
2. Create a schema (if needed), for example:
   ```sql
   CREATE SCHEMA data;
   USE data;
````

3. Import the CSV into a table:

   * Name the table:

     ```
     e-commerce dataset
     ```
   * Use the **Table Data Import Wizard** in Workbench.
4. Verify import:

   ```sql
   SELECT * FROM `e-commerce dataset` LIMIT 10;
   ```

---

## ⚙️ 2️⃣ Running Analysis Queries

All analysis queries are provided in **`task4_queries.sql`**.

Example contents:

* Basic SELECT with WHERE and ORDER BY

* GROUP BY with aggregates

* Subquery for high-value customers

* JOINS with a `customers` table:

  * INNER JOIN
  * LEFT JOIN
  * RIGHT JOIN

* Aggregate functions (SUM, AVG)

* Creating views for summary:

* Index creation for optimization:

* Checking Indexes
To confirm indexes are created:



## 📂 Project Structure Example

```
📁 Task-4-SQL-Data-Analysis/
│
├── E-commerce_Dataset.csv
├── TASK 4 SQL QUERIES.sql
├── README.md
└── OUTPUT SCREENSHOTS.pdf
```

---

## ✅ Tools Used

* MySQL 8.x
* MySQL Workbench
* CSV dataset

---

## ✨ Author
CHITRARTH VASDEV





