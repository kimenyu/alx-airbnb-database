# Index Performance Analysis  

## Objective  
Enhance query performance by identifying high-usage columns and creating appropriate indexes.  

---

## Indexed Columns  

### User Table  
- **Column**: `email`  
- **Reason**: Frequently used in `WHERE` clauses for user authentication and lookups.  

### Booking Table  
- **Columns**:  
  - `property_id`: Used in `JOIN` operations with the `Property` table.  
  - `user_id`: Used in `JOIN` operations with the `User` table.  
  - `start_date`, `end_date`: Commonly used in date range queries.  

### Property Table  
- **Column**: `location`  
- **Reason**: Commonly searched or filtered in `WHERE` clauses for properties.  

---

## Query Performance Measurement  

### Baseline Performance  
Before creating indexes, queries were measured using the `EXPLAIN` or `ANALYZE` command to understand their execution plan and cost.  

#### Example  
Query: Retrieve bookings for a specific property within a date range.  

```sql
EXPLAIN ANALYZE
SELECT * 
FROM Booking
WHERE property_id = 'example-property-id'
  AND start_date >= '2024-12-01'
  AND end_date <= '2024-12-31';

