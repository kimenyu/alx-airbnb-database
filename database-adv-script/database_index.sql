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

