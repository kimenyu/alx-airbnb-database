-- Step 1: Create a new partitioned table for the Booking table.
CREATE TABLE Booking_partitioned (
    booking_id UUID NOT NULL,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (booking_id, start_date)
) PARTITION BY RANGE (start_date);

-- Step 2: Define partitions based on the start_date.
CREATE TABLE Booking_2023 PARTITION OF Booking_partitioned 
FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking_partitioned 
FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE Booking_older PARTITION OF Booking_partitioned 
FOR VALUES FROM ('1900-01-01') TO ('2023-01-01');

-- Step 3: Insert data from the original Booking table into the partitioned table.
INSERT INTO Booking_partitioned
SELECT * FROM Booking;

-- Step 4: Verify partitioning.
SELECT table_name, parent_table FROM information_schema.inheritances WHERE parent_table = 'Booking_partitioned';

