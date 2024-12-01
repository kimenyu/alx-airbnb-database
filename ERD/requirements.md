# Entity-Relationship Diagram Requirements

## Objective
To define the database schema for the ALX Airbnb project by creating a comprehensive Entity-Relationship Diagram (ERD).

## Entities
1. **User**
   - Attributes: user_id, first_name, last_name, email, password_hash, phone_number, role, created_at.

2. **Property**
   - Attributes: property_id, host_id, name, description, location, pricepernight, created_at, updated_at.

3. **Booking**
   - Attributes: booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at.

4. **Payment**
   - Attributes: payment_id, booking_id, amount, payment_date, payment_method.

5. **Review**
   - Attributes: review_id, property_id, user_id, rating, comment, created_at.

6. **Message**
   - Attributes: message_id, sender_id, recipient_id, message_body, sent_at.

## Relationships
1. **User ↔ Property**: One-to-Many (User.user_id → Property.host_id)
2. **Property ↔ Booking**: One-to-Many (Property.property_id → Booking.property_id)
3. **User ↔ Booking**: One-to-Many (User.user_id → Booking.user_id)
4. **Booking ↔ Payment**: One-to-One (Booking.booking_id → Payment.booking_id)
5. **User ↔ Review**: One-to-Many (User.user_id → Review.user_id)
6. **Property ↔ Review**: One-to-Many (Property.property_id → Review.property_id)
7. **User ↔ Message**: One-to-Many for sender and recipient (User.user_id → Message.sender_id, Message.recipient_id).

## Instructions
1. Use Draw.io or another diagramming tool.
2. Save the file as `airbnb_erd.png`.
3. Upload to the `ERD/` directory in the repository.

