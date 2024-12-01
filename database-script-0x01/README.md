# Airbnb Database Schema  

## Objective  
Define the database schema for the Airbnb project, ensuring proper structure, constraints, and indexing for optimal query performance.  

---

## File: `schema.sql`  

This file contains SQL statements to:  
1. Create tables for entities: User, Property, Booking, Payment, Review, and Message.  
2. Define relationships between entities using primary and foreign keys.  
3. Apply constraints to ensure data integrity
4. Add indexes to frequently queried columns like `email`, `property_id`, and `booking_id`.  

---

## Entities and Relationships  

- **User**: Holds user information (guest, host, or admin).  
- **Property**: Represents properties listed by hosts.  
- **Booking**: Links users and properties for reservations.  
- **Payment**: Tracks payments for bookings.  
- **Review**: Stores user reviews for properties.  
- **Message**: Manages user communication.  

---


## Indexes  

Indexes have been added for:  
- `User.email`: To ensure fast lookups for unique emails.  
- `Property.property_id`: For property-related queries.  
- `Booking.property_id` and `Booking.user_id`: To optimize booking-related queries.  
- `Payment.booking_id`: For efficient payment retrievals.  

---

## License  

This project is licensed under the MIT License.  

