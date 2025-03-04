# Crowdfunding Database & ETL Project

Overview

A streamlined database for managing crowdfunding campaigns with an ETL pipeline to extract, transform, and load data efficiently.

Database Schema

campaign: Stores campaign details (ID, name, goal, pledged amount, category, subcategory, etc.).

category: Defines campaign categories.

subcategory: Stores subcategories.

contacts: Holds campaign-related contacts (ID, name, email).



Setup

Database:

CREATE DATABASE crowdfunding_db;
\i crowdfunding_db_schema.sql;

ETL Pipeline:

Install dependencies: pip install pandas psycopg2 sqlalchemy

Run Jupyter Notebook: jupyter notebook ETL_Mini_Project_THoover_AMikulich.ipynb

Usage

Run queries like:

SELECT c.company_name, cat.category, sub.subcategory, c.goal, c.pledged 
FROM campaign c
JOIN category cat ON c.category_id = cat.category_id 
JOIN subcategory sub ON c.subcategory_id = sub.subcategory_id;

Contributors

Anna Mikulich

T. Hoover
