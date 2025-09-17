# 🛒 E-Commerce SQL Database Project

## 📌 Overview
This project is a beginner-friendly **SQL database system** for an e-commerce store.  
It demonstrates **database design, foreign keys, views, indexes, and analytical queries** to generate real business insights.

---

## 📂 Schema Design
The database has 4 main tables:

- **customers** → customer info  
- **products** → items available for sale  
- **orders** → purchase header (one per order)  
- **order_items** → line items inside each order  

### ER Diagram (simplified)
customers (1) ───< orders (1) ───< order_items >─── (1) products


---

## 📊 Example Queries
- **Total Revenue**
```sql
SELECT SUM(quantity * unit_price_cents) / 100.0 AS total_revenue_usd FROM order_items;

Top Products by Revenue
SELECT p.name, SUM(oi.quantity * oi.unit_price_cents) / 100.0 AS revenue_usd
FROM order_items oi
JOIN products p ON oi.product_id = p.id
GROUP BY p.name
ORDER BY revenue_usd DESC
LIMIT 3;

Revenue by Customer
SELECT c.name, SUM(oi.quantity * oi.unit_price_cents) / 100.0 AS revenue_usd
FROM customers c
JOIN orders o ON c.id = o.customer_id
JOIN order_items oi ON o.id = oi.order_id
GROUP BY c.name
ORDER BY revenue_usd DESC;

```
## 📈 Example Results (from seed data)

Total Revenue: $4670
Top Customer: Diana Prince ($1600)
Top Category: Electronics ($3600)
Repeat Customer: Alice Johnson (2 orders)

## 🚀 How to Run

Install SQLite
Open terminal and start SQLite: 
```
sqlite3 ecommerce.db

```

## Load schema and data:
```
.read 01_schema.sql
.read 02_seed.sql
```

## Run queries inside 03_queries.sql or write your own.

