CREATE TABLE users(
	user_id varchar(20) PRIMARY KEY,
	password VARCHAR(100) NOT NULL,
	role VARCHAR(20) NOT NULL CHECK (role IN ('CUSTOMER','OFFICER')),
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Customers (
    customer_id INT GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    country_code VARCHAR(5),
    mobile VARCHAR(15),
    address CLOB NOT NULL, -- Using CLOB for TEXT equivalent
    user_id VARCHAR(20) UNIQUE NOT NULL,
    preferences CLOB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

-- OFFICERS table
CREATE TABLE officers (
    officer_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    user_id VARCHAR(20) UNIQUE NOT NULL,
    officer_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    mobile_number VARCHAR(15) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

-- BOOKINGS table
CREATE TABLE bookings (
    booking_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    customer_id INT NOT NULL,
    sender_name VARCHAR(50) NOT NULL,
    sender_address CLOB NOT NULL,
    sender_mobile VARCHAR(15) NOT NULL,
    rec_name VARCHAR(50) NOT NULL,
    rec_address CLOB NOT NULL,
    rec_pin VARCHAR(10) NOT NULL,
    rec_mobile VARCHAR(15) NOT NULL,
    par_weight_gram INT NOT NULL,
    par_contents_description CLOB NOT NULL,
    par_delivery_type VARCHAR(50) NOT NULL,
    par_packing_preference VARCHAR(50) NOT NULL,
    par_pickup_time TIMESTAMP,
    par_dropoff_time TIMESTAMP,
    par_service_cost DECIMAL(10,2) NOT NULL,
    par_payment_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    par_status VARCHAR(20) DEFAULT 'Booked' 
        CHECK (par_status IN ('Booked', 'In Transit', 'Delivered', 'Returned')),
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- SAMPLE DATA
INSERT INTO users (user_id, password, role) VALUES 
('admin', 'Admin@123', 'OFFICER'),
('customer1', 'Customer@123', 'CUSTOMER');

select * from customers;

INSERT INTO officers (user_id, officer_name, email, mobile_number) VALUES 
('admin', 'Admin Officer', 'admin@courier.com', '9876543210');

INSERT INTO customers (user_id, name, email, country_code, mobile, address, preferences) VALUES 
('customer1', 'John Doe', 'john@email.com', '+91', '9876543210', '123 Main St, City, State, 12345', 'Email notifications preferred');


drop table users;