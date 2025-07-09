
# 🛍️ Retail Orders Data Analysis

This project demonstrates an end-to-end data analysis pipeline using a retail orders dataset. It integrates data sourcing from Kaggle, cleaning and processing in Python, and analytical querying in SQL Server.

---

## 📚 Project Overview

**Workflow Summary:**

```text
Kaggle API
   │
   └──► Python (Jupyter Notebook)
           └──► pandas (for data cleaning and transformation)
                   │
                   └──► Cleaned dataset
                           │
                           └──► SQL Server (for advanced analysis using SQL queries)
```

---

## ⚙️ Technologies & Tools

| Tool/Tech       | Purpose                                  |
|----------------|-------------------------------------------|
| **Kaggle API**  | Download raw datasets from Kaggle        |
| **Python**      | Core programming for preprocessing        |
| **pandas**      | Data cleaning, wrangling, and processing |
| **SQL Server**  | Relational analysis and querying         |

---

## 📝 Key Steps

### 1. 📥 Data Acquisition

- Downloaded dataset from Kaggle using the command:
  ```bash
  kaggle datasets download -d ankit9988/retail-orders-28
  ```
- Unzipped the file:
  ```bash
  unzip retail-orders-28.zip
  ```

### 2. 🧹 Data Cleaning & Processing (Python)

- Used `pandas` for:
  - Handling missing values
  - Converting date columns
  - Removing duplicates
  - Exporting cleaned data to CSV

### 3. 🧮 Data Analysis using SQL Server

Performed key business queries on cleaned data.

#### ✅ SQL Queries:

- **Top 10 Highest Revenue Generating Products**
- **Top 5 Highest Selling Products in Each Region**
- **Month-over-Month Growth for 2022 and 2023 Sales**
- **For Each Category, Which Month Had the Highest Sales**
- **Which Sub-Category Had Highest Profit Growth in 2023 Compared to 2022**

---

## 📈 Output

- Cleaned `.csv` dataset for use in SQL Server
- Data wrangling with pandas
- Analytical insights via SQL queries

---

## 📁 Directory Structure

```
Retail_Orders/
├── Retail_Orders.ipynb           # Data cleaning and export
├── cleaned_orders.csv            # Cleaned dataset
├── sql_queries.sql               # SQL scripts
└── README.md                     # Project documentation
```
