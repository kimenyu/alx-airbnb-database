# Performance Report: Table Partitioning  

## Objective  
Optimize query performance for the Booking table by implementing partitioning based on the `start_date` column.  

---

## Approach  

### Implementation Steps  
1. **Partitioning**:  
   - Created a partitioned table `Booking_partitioned` using PostgreSQL's `PARTITION BY RANGE` feature.  
   - Defined three partitions:  
     - `Booking_2023`: For bookings in 2023.  
     - `Booking_2024`: For bookings in 2024.  
     - `Booking_older`: For bookings before 2023.  

2. **Data Migration**:  
   - Migrated data from the original `Booking` table to the partitioned table.  

3. **Testing**:  
   - Ran queries to fetch bookings within specific date ranges using `EXPLAIN` to measure performance before and after partitioning.  

---

## Performance Analysis  

### Query Used for Testing  
```sql
SELECT * FROM Booking_partitioned 
WHERE start_date BETWEEN '2023-06-01' AND '2023-06-30';

