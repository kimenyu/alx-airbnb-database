-- Sample data for User Table
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
  ('uuid-1', 'John', 'Doe', 'john.doe@example.com', 'passwordhash123', '555-0100', 'host', NOW()),
  ('uuid-2', 'Jane', 'Smith', 'jane.smith@example.com', 'passwordhash456', '555-0101', 'guest', NOW()),
  ('uuid-3', 'Mike', 'Johnson', 'mike.johnson@example.com', 'passwordhash789', '555-0102', 'guest', NOW()),
  ('uuid-4', 'Sara', 'Williams', 'sara.williams@example.com', 'passwordhash101', '555-0103', 'admin', NOW());

-- Sample data for Property Table
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
  ('uuid-10', 'uuid-1', 'Cozy Studio Apartment', 'A small, cozy apartment in downtown.', 'New York, NY', 120.00, NOW(), NOW()),
  ('uuid-11', 'uuid-1', 'Beachfront Bungalow', 'A beautiful bungalow right by the beach.', 'Miami, FL', 250.00, NOW(), NOW()),
  ('uuid-12', 'uuid-2', 'Luxury Penthouse', 'A luxury penthouse with amazing city views.', 'Los Angeles, CA', 500.00, NOW(), NOW());

-- Sample data for Booking Table
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
  ('uuid-100', 'uuid-10', 'uuid-2', '2024-12-10', '2024-12-15', 600.00, 'confirmed', NOW()),
  ('uuid-101', 'uuid-11', 'uuid-3', '2024-12-12', '2024-12-18', 1500.00, 'pending', NOW()),
  ('uuid-102', 'uuid-12', 'uuid-2', '2024-12-14', '2024-12-20', 3000.00, 'confirmed', NOW());

-- Sample data for Payment Table
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
  ('uuid-200', 'uuid-100', 600.00, NOW(), 'credit_card'),
  ('uuid-201', 'uuid-102', 3000.00, NOW(), 'paypal');

-- Sample data for Review Table
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
  ('uuid-300', 'uuid-10', 'uuid-2', 5, 'Amazing stay! Very cozy apartment.', NOW()),
  ('uuid-301', 'uuid-11', 'uuid-3', 4, 'Nice place, but a little too far from the center.', NOW()),
  ('uuid-302', 'uuid-12', 'uuid-2', 5, 'Incredible penthouse! Will book again.', NOW());

-- Sample data for Message Table
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
  ('uuid-400', 'uuid-2', 'uuid-1', 'Hi, I would like to confirm my booking for the Cozy Studio Apartment.', NOW()),
  ('uuid-401', 'uuid-3', 'uuid-1', 'Can I check in early on 12th December for the Beachfront Bungalow?', NOW());

