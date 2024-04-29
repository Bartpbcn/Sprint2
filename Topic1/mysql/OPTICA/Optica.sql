
-- Select 
USE Optica;


-- Create table for Addresses
CREATE TABLE Addresses (
    AddressID INT AUTO_INCREMENT PRIMARY KEY,
    Street VARCHAR(50),
    StreetNumber VARCHAR(5),
    Floor VARCHAR(2),
    Door VARCHAR(3),
    City VARCHAR(50),
    Postal_code VARCHAR(10),
    Country VARCHAR(100)
);

-- Create table for Suppliers
CREATE TABLE Suppliers (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    CompanyName VARCHAR(255) NOT NULL,
    Phone VARCHAR(20),
    Fax VARCHAR(20),
    NIF VARCHAR(20) NOT NULL,
    AddressID INT,
    FOREIGN KEY (AddressID) REFERENCES Addresses(AddressID)
);

-- Create table for Customers
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    ClientName VARCHAR(255) NOT NULL,
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Registration_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Referrer_customer_ID INT,
    AddressID INT,
    FOREIGN KEY (AddressID) REFERENCES Addresses(AddressID)
);

-- Create table for Glasses
CREATE TABLE Glasses (
    GlassesID INT AUTO_INCREMENT PRIMARY KEY,
    Brand VARCHAR(100) NOT NULL,
    Left_lens_graduation DECIMAL(4,2) NOT NULL,
    Right_lens_graduation DECIMAL(4,2) NOT NULL,
    Frame_type ENUM('floating', 'plastic', 'metallic') NOT NULL,
    Frame_color VARCHAR(50) NOT NULL,
    Left_lens_color VARCHAR(50),
    Right_lens_color VARCHAR(50),
    Price DECIMAL(10,2) NOT NULL,
    SupplierID INT NOT NULL,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

-- Create table for Employees
CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeName VARCHAR(255) NOT NULL,
    Position VARCHAR(100) NOT NULL,
    HireDate DATE NOT NULL
);

-- Create table for Sales
CREATE TABLE Sales (
    SaleID INT AUTO_INCREMENT PRIMARY KEY,
    GlassesID INT,
    CustomerID INT,
    EmployeeID INT,
    LastSaleDate DATETIME,
    FOREIGN KEY (GlassesID) REFERENCES Glasses(GlassesID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);