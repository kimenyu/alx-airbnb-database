-- 1. Create an index on the email column in the User table for faster lookups.
CREATE INDEX idx_user_email ON User(email);

-- 2. Create an index on the property_id column in the Booking table for faster joins and filtering.
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- 3. Create an index on the user_id column in the Booking table for faster joins and filtering.
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- 4. Create an index on the location column in the Property table for faster searches by location.
CREATE INDEX idx_property_location ON Property(location);

-- 5. Create a composite index on start_date and end_date in the Booking table for optimized date range queries.
CREATE INDEX idx_booking_dates ON Booking(start_date, end_date);

-- 6. Measure the query performance BEFORE creating the indexes.
EXPLAIN ANALYZE 
SELECT User.email, Booking.start_date, Booking.end_date
FROM User
JOIN Booking ON User.user_id = Booking.user_id
WHERE Booking.start_date BETWEEN '2024-01-01' AND '2024-01-31';

-- 7. Measure the query performance AFTER creating the indexes.
EXPLAIN ANALYZE 
SELECT User.email, Booking.start_date, Booking.end_date
FROM User
JOIN Booking ON User.user_id = Booking.user_id
WHERE Booking.start_date BETWEEN '2024-01-01' AND '2024-01-31';

