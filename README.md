# SQL Retail Sales Analytics

Portfolio project focused on SQL analytics using PostgreSQL.

## Project Goal

The goal of this project is to analyze retail sales data and answer common business questions using SQL.

The project demonstrates practical SQL skills frequently required for Data Analyst positions.

---

## Database Structure

### Tables

* customers
* products
* orders
* order_items

---

## Business Questions

### Revenue Analysis

* Q01 - Monthly Revenue Analysis
* Q08 - Monthly Revenue Growth
* Q09 - Running Revenue

### Customer Analysis

* Q02 - Top Customers
* Q03 - Customer Ranking
* Q06 - Average Order Value
* Q07 - Customer Lifetime Value
* Q10 - Customer Order Frequency

### Product Analysis

* Q04 - Best Selling Products

### Category Analysis

* Q05 - Revenue by Category

---

## Power BI Dashboard

### Revenue Overview

![Revenue Overview](images/revenue_overview.png)


### Customer Analysis

![Customer Analysis](images/customer_analysis.png)


### Product Analysis

![Product Analysis](images/product_analysis.png)


## SQL Concepts Demonstrated

* SELECT
* JOIN
* GROUP BY
* ORDER BY
* SUM()
* AVG()
* COUNT()
* COUNT(DISTINCT)
* CTE (WITH)
* Window Functions

  * RANK()
  * LAG()
  * SUM() OVER()

---

## Technologies

* PostgreSQL
* pgAdmin 4
* Git
* GitHub

---

## Future Improvements

* Power BI Dashboard
* Customer Segmentation
* Retention Analysis
* Cohort Analysis
* KPI Dashboard

---

## Repository Structure

```text
sql-retail-sales-analytics/
│
├── database/
│   ├── create_tables.sql
│   └── insert_sample_data.sql
│
├── business_questions/
│   ├── q01_monthly_revenue.sql
│   ├── q02_top_customers.sql
│   ├── q03_customer_ranking.sql
│   ├── q04_best_selling_products.sql
│   ├── q05_revenue_by_category.sql
│   ├── q06_average_order_value.sql
│   ├── q07_customer_lifetime_value.sql
│   ├── q08_monthly_revenue_growth.sql
│   ├── q09_running_revenue.sql
│   └── q10_customer_order_frequency.sql
│
├── docs/
│   ├── business_requirements.md
│   └── sql_explanations.md
│
└── README.md
```
