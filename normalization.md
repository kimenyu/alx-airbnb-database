# Database Normalization: Achieving 3NF  

## Objective  
To apply normalization principles to the Airbnb database schema, ensuring it is in **Third Normal Form (3NF)** by eliminating redundancies and dependencies.  

---

## Normalization Process  

### 1. First Normal Form (1NF): Ensure Atomicity  
- Verified that all columns contain atomic (indivisible) values.  
- Example: Attributes like `pricepernight` and `start_date` are scalar values.  
- **Result**: The schema satisfies 1NF.  

---

### 2. Second Normal Form (2NF): Eliminate Partial Dependencies  
- Ensured no non-prime attribute depends partially on a composite primary key.  
- Example: No composite keys are present in the schema.  
- **Result**: The schema satisfies 2NF.  

---

### 3. Third Normal Form (3NF): Eliminate Transitive Dependencies  
- Reviewed tables for dependencies between non-prime attributes and resolved any transitive relationships.  

#### Key Findings:  
- **User Table**: No transitive dependencies exist.  
- **Property Table**: Attributes depend only on the `property_id`.  
- **Booking Table**: The `total_price` is retained as it is specific to bookings and not derived solely from `Property`.  
- **Payment Table**: No changes required.  
- **Review Table**: No changes required.  
- **Message Table**: No changes required.  

---

## Outcome  
The Airbnb database schema is normalized and satisfies **Third Normal Form (3NF)**, ensuring:  
1. Data integrity.  
2. Minimization of redundancy.  
3. Optimal query performance.  


