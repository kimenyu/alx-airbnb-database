-- 1. Aggregation: Find the total number of bookings made by each user.
SELECT
    User.user_id,
    User.first_name,
    User.last_name,
    COUNT(Booking.booking_id) AS total_bookings
FROM
    User
LEFT JOIN
    Booking ON User.user_id = Booking.user_id
GROUP BY
    User.user_id, User.first_name, User.last_name
ORDER BY
    total_bookings DESC;

-- 2. Window function: Rank properties based on the total number of bookings using ROW_NUMBER.
WITH PropertyBookingCount AS (
    SELECT
        Property.property_id,
        Property.name,
        COUNT(Booking.booking_id) AS booking_count
    FROM
        Property
    LEFT JOIN
        Booking ON Property.property_id = Booking.property_id
    GROUP BY
        Property.property_id, Property.name
)
SELECT
    property_id,
    name,
    booking_count,
    ROW_NUMBER() OVER (ORDER BY booking_count DESC) AS rank
FROM
    PropertyBookingCount;

