# job-market-analytics-eda
End-to-end exploratory data analytics project analyzing job market trends (2023–2024). Built using Python (Pandas ETL), SQL Server (stored procedures, views, data modeling) and Power BI for market insights on high-paying job postings.

## 📊 Power BI Dashboard

The Power BI (.pbix) file is available via GitHub Releases to avoid repository size limits.

🔽 Download here:
https://github.com/kreeshvar/job-market-analytics-eda/releases/tag/v1.0

# Job Market Analytics (2023–2024)

## 📌 Project Overview
This project is an end-to-end Exploratory Data Analytics (EDA) solution designed to analyze job market trends using real-world job posting data from 2023–2024. The objective is to identify high-paying job roles, industry demand, and hiring patterns using a scalable ETL and BI pipeline.

---

## 🎯 Business Problem
Organizations and job seekers struggle to understand:
- Which industries are offering high-paying roles
- Job demand trends across industries
- Salary distribution for premium roles

This project provides data-driven insights to support strategic workforce planning and career decision-making.

---

## 🗂 Data Source
- Raw job postings, industry, and job metadata CSV files sourced from Kaggle
- Unstructured and inconsistent datasets requiring extensive cleaning

---

## 🛠 Tech Stack
- **Python (Pandas, NumPy)** – Data cleaning & ETL
- **SQL Server** – Data modeling, stored procedures, views
- **Power BI** – Interactive dashboard & visualization
- **GitHub** – Version control & project documentation

---

## 🔄 ETL & Data Pipeline
1. Imported raw CSV files into Pandas for cleaning and preprocessing  
2. Standardized and structured unorganized datasets  
3. Built ETL pipeline in Jupyter Notebook  
4. Loaded cleaned datasets directly into SQL Server  
5. Created stored procedures to join multiple tables  
6. Filtered jobs with salaries above 100K using SQL logic  
7. Applied data modeling techniques in SQL Server  
8. Created SQL views for optimized data retrieval  
9. Connected SQL views to Power BI for visualization  

---

## 📊 Dashboard & Analysis
- Market analytics dashboard for job postings (2023–2024)
- Industry-wise salary comparison
- High-paying job role distribution
- Hiring trend insights

---

## 📈 Key Insights
- High-paying roles are concentrated in specific industries
- Salary trends show significant variation across job categories
- Demand for premium roles increased during 2023–2024

---

## 📁 Repository Contents
- Raw data
- Python ETL notebooks
- SQL scripts (schema, stored procedures, views)
- Power BI dashboard
- Business reports and presentations

## Requirements
pandas
numpy
pyodbc
sqlalchemy
jupyter

---

## 🚀 Conclusion
This project demonstrates a complete data analytics lifecycle from raw data ingestion to business-ready insights using industry-standard tools and best practices.
