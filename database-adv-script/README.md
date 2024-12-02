# ALX Airbnb Database Project  

## Overview  
This project involves designing, implementing, and optimizing a database system for an Airbnb-like application. It covers tasks such as schema creation, data population, performance monitoring, and advanced query optimizations.  

---

## Tasks Completed  

### 1. Entity-Relationship Diagram (ERD)  
- Created a comprehensive ERD representing key entities like `User`, `Property`, `Booking`, and `Payment`.  
- File: `ERD/requirements.md`  

### 2. Schema Definition  
- Wrote SQL scripts to define the database schema with proper constraints (primary keys, foreign keys, indexes).  
- File: `database-script-0x01/schema.sql`  

### 3. Data Population  
- Generated sample data for all entities, simulating real-world use cases.  
- File: `database-script-0x02/seed.sql`  

### 4. Query Optimization  
- Created advanced SQL queries using joins, subqueries, and aggregation functions.  
- Optimized query performance through indexing and schema adjustments.  
- Files:  
  - `database-adv-script/joins_queries.sql`  
  - `database-adv-script/subqueries.sql`  
  - `database-adv-script/aggregations_and_window_functions.sql`  

### 5. Performance Monitoring and Improvements  
- Monitored query execution plans using `EXPLAIN ANALYZE`.  
- Identified bottlenecks and implemented optimizations:  
  - Added indexes to improve query performance.  
  - Refactored complex queries for reduced execution time.  
- Files:  
  - `database-adv-script/performance_monitoring.md`  
  - `database-adv-script/perfomance.sql`  

### 6. Table Partitioning  
- Implemented partitioning on the `Booking` table based on `start_date` for faster queries.  
- File: `database-adv-script/partitioning.sql`  

---

## Directory Structure  

```plaintext
alx-airbnb-database/
│
├── ERD/
│   └── requirements.md
├── database-script-0x01/
│   ├── schema.sql
│   └── README.md
├── database-script-0x02/
│   ├── seed.sql
│   └── README.md
├── database-adv-script/
│   ├── joins_queries.sql
│   ├── subqueries.sql
│   ├── aggregations_and_window_functions.sql
│   ├── index_performance.md
│   ├── performance_monitoring.md
│   ├── perfomance.sql
│   ├── partitioning.sql
│   └── partition_performance.md
└── README.md

