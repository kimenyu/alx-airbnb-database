# Database Performance Monitoring and Optimization  

## Objective  
Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.  

---

## Step 1: Queries Monitored  

### Query 1: Fetch Bookings with User and Property Details  
```sql
EXPLAIN ANALYZE
SELECT b.booking_id, u.name AS user_name, p.name AS property_name, b.start_date, b.end_date 
FROM Booking b
INNER JOIN User u ON b.user_id = u.user_id
INNER JOIN Property p ON b.property_id = p.property_id
WHERE b.start_date BETWEEN '2023-06-01' AND '2023-06-30';

