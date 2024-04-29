-- Create table for Addresses
CREATE TABLE Addresses (
    'id_address' INT,
    'street' VARCHAR(50),
    'number' VARCHAR(5),
    'floor' VARCHAR(2),
    'door' VARCHAR(3),
    'city' VARCHAR(50),
    'postal_code' VARCHAR(10),
    'country' VARCHAR(100)
);

-- Create table for Suppliers

CREATE TABLE Suppliers (
    'id_supplier' INT AUTO_INCREMENT,
    'name' VARCHAR(255) NOT NULL,
    'phone' VARCHAR(20),
    'fax' VARCHAR(20),
    'nif' VARCHAR(20) NOT NULL,
    'id_address' INT,
   
);

-- Create table for Customers
CREATE TABLE Customers (
    'id_customers' INT AUTO_INCREMENT,
    'name' VARCHAR(255) NOT NULL,
    'phone' VARCHAR(20),
    'email' VARCHAR(100),
    'registration_date' DATE NOT NULL,
    'referrer_customer_id' INT,
    'id_address' INT,
    
);

-- Create table for Eyeglasses
CREATE TABLE Eyeglasses (
    'id_eyeglasses' INT AUTO_INCREMENT,
    'brand' VARCHAR(100) NOT NULL,
    'left_lens_graduation' DECIMAL(4,2) NOT NULL,
    'right_lens_graduation' DECIMAL(4,2) NOT NULL,
    'frame_type' ENUM('floating', 'plastic', 'metallic') NOT NULL,
    'frame_color' VARCHAR(50) NOT NULL,
    'left_lens_color' VARCHAR(50),
    'right_lens_color' VARCHAR(50),
    'price' DECIMAL(10,2) NOT NULL,
    'id_supplier' INT NOT NULL,
);