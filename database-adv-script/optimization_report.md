# Optimization Report  

## Objective  
Refactor a complex query to improve its execution time and overall performance.  

---

## Initial Query Analysis  

### Query Details  
The query retrieves booking information along with related user, property, and payment details using multiple `JOIN` operations.  

### Performance Analysis  
The query was analyzed using `EXPLAIN` to identify inefficiencies.  

#### Observations:  
1. **Multiple Joins**:  
   - The query joins four tables (`Booking`, `User`, `Property`, `Payment`), which increases the complexity.  
2. **Unindexed Columns**:  
   - Columns used in joins (`user_id`, `property_id`, `booking_id`) lack proper indexing.  
3. **LEFT JOIN on Payment**:  
   - Inefficiencies observed when there are many bookings without corresponding payments.  

### Execution Time  
- **Before Optimization**: 250ms.  

---

## Optimization Steps  

1. **Indexing**  
   Added indexes on high-usage columns involved in `JOIN` operations:  
   - `Booking.user_id`  
   - `Booking.property_id`  
   - `Booking.booking_id`  

2. **Reducing Join Complexity**  
   Limited the columns retrieved to only essential fields to reduce data load.  

3. **Filtering Early**  
   Applied conditions directly in the `ON` clauses or `WHERE` clause to reduce unnecessary rows.  

---

## Refactored Query  

```sql
-- Optimized query for bookings, users, properties, and payments.
SELECT 
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    Booking.status,
    CONCAT(User.first_name, ' ', User.last_name) AS user_full_name,
    User.email,
    Property.name AS property_name,
    Property.location AS property_location,
    COALESCE(Payment.amount, 0) AS payment_amount,
    Payment.payment_date
FROM 
    Booking
JOIN 
    User ON Booking.user_id = User.user_id
JOIN 
    Property ON Booking.property_id = Property.property_id
LEFT JOIN 
    Payment ON Booking.booking_id = Payment.booking_id
WHERE 
    Booking.status IN ('confirmed', 'pending');

