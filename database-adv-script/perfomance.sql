-- 1. Retrieve all bookings along with user details, property details, and payment details.
SELECT
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    Booking.status,
    User.user_id,
    User.first_name,
    User.last_name,
    User.email,
    Property.property_id,
    Property.name AS property_name,
    Property.location AS property_location,
    Payment.payment_id,
    Payment.amount AS payment_amount,
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
    Booking.status = 'confirmed'
    AND Booking.start_date >= '2024-01-01'
    AND Booking.end_date <= '2024-12-31';

-- 2. Analyze the query’s performance using EXPLAIN.
EXPLAIN 
SELECT
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    Booking.status,
    User.user_id,
    User.first_name,
    User.last_name,
    User.email,
    Property.property_id,
    Property.name AS property_name,
    Property.location AS property_location,
    Payment.payment_id,
    Payment.amount AS payment_amount,
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
    Booking.status = 'confirmed'
    AND Booking.start_date >= '2024-01-01'
    AND Booking.end_date <= '2024-12-31';

-- 3. Refactor the query to improve performance using indexes and remove unnecessary columns if needed.
EXPLAIN 
SELECT
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    User.first_name,
    User.last_name,
    Property.name AS property_name,
    Payment.amount AS payment_amount
FROM
    Booking
JOIN
    User ON Booking.user_id = User.user_id
JOIN
    Property ON Booking.property_id = Property.property_id
LEFT JOIN
    Payment ON Booking.booking_id = Payment.booking_id
WHERE
    Booking.status = 'confirmed'
    AND Booking.start_date >= '2024-01-01'
    AND Booking.end_date <= '2024-12-31';

