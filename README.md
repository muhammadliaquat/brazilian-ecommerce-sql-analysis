# brazilian-ecommerce-sql-analysis
This project is an end-to-end data analysis of 100k+ real-world e-commerce orders from the Olist platform in Brazil (2016–2018). Using PostgreSQL, I built a relational database from scratch to identify logistics bottlenecks, customer spending patterns, and product category performance.

The goal of this analysis was to provide actionable insights for a marketplace to improve delivery times and increase customer retention.

**Tech Stack & Skills**
Database: PostgreSQL

Tools: pgAdmin 4, GitHub

SQL Skills: CTEs, Case Statements, Multi-table Joins, Aggregations, Data Cleaning, Schema Design.

**Database Architecture**
To ensure data integrity, I designed a schema with 8 tables using Primary and Foreign Key constraints.

**Project Structure**
scripts/: Contains the 01_db_schema_setup.sql script to build the database.

Other businnes question queries that contains individual .sql files for each business scenario.

data: (Ignored via .gitignore) Raw CSV files from Kaggle.

**Analysis & Results**

**Question**: "Which states have the highest average delivery delay for late orders?"

SQL Skill: INNER JOIN, AVG, WHERE filtering.

Code Reference: queries/02_delivery_delay_by_state.sql

The Insight: The analysis reveals that the state of Amapá (AP) and Roraima (RR) experience the longest delays, often exceeding 12 days past the estimated delivery date.

Impact: This highlights a need for the company to re-evaluate logistics partners in the Northeast region of Brazil to maintain customer trust.

**How to Run This Project**
Clone the repo: git clone https://github.com/muhammadliaquat/brazilian-ecommerce-sql-analysis.git

Setup Database: Run scripts/01_db_schema_setup.sql in pgAdmin 4.

Import Data: Download the Brazilian ecommerce olist dataset and import CSVs in the order specified in the setup script becuase those have foreign key if you will randomly run queries and import files it will through an error becuase of linking with other table.

Run Queries: Execute any file in the queries/ folder to see the results.
