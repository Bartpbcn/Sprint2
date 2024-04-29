-- Create a new database 
CREATE DATABASE Pizzeria;

USE Pizzeria;

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Telephone VARCHAR(15)
    AddressID INT,
    FOREIGN KEY(AddressID) REFERENCES addresses(AddressID)
);
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    OrderDateTime DATETIME,
    DeliveryType ENUM('home_delivery', 'pickup'),
    TotalPrice DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT,
    Category ENUM('pizza', 'hamburgers', 'drinks'),
    ImageURL TEXT,
    Price DECIMAL(10,2)
);

CREATE TABLE Pizzas (
    ProductID INT,
    CategoryID INT,
    Name VARCHAR(50),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    PRIMARY KEY (ProductID, CategoryID)
);

CREATE TABLE Shops (
    ShopID INT AUTO_INCREMENT PRIMARY KEY,
    AddressID INT,
    FOREIGN KEY(AddressID) REFERENCES addresses(AddressID)
    
);

CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    NIF VARCHAR(15),
    Telephone VARCHAR(15),
    Function ENUM('cook', 'delivery'),
    ShopID INT,
    FOREIGN KEY (ShopID) REFERENCES Shops(ShopID)
);

CREATE TABLE OrderDeliveries (
    OrderID INT,
    EmployeeID INT,
    DeliveryDateTime DATETIME,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    PRIMARY KEY (OrderID, EmployeeID)
);

CREATE TABLE Adresses(
    AddressID INT AUTO_INCREMENT PRIMARY KEY,
    Street VARCHAR(255),
    Streetnumber INT(10),
    Floor INT(10),
    Door INT(10),
    PostalCode VARCHAR(10),
    City VARCHAR(100),
    Province VARCHAR(100),
    Country VARCHAR(100)
);

