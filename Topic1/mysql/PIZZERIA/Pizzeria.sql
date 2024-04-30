USE Pizzeria;

CREATE TABLE IF NOT EXISTS Addresses(
    AddressID INT AUTO_INCREMENT PRIMARY KEY,
    Street VARCHAR(255),
    Streetnumber INT,
    Floor INT,
    Door INT,
    PostalCode VARCHAR(10),
    City VARCHAR(100),
    Province VARCHAR(100),
    Country VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Telephone VARCHAR(15),
    AddressID INT,
    FOREIGN KEY(AddressID) REFERENCES Addresses(AddressID)
);
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT PRIMARY KEY,
    Quantity INT,
    OrderDateTime DATETIME,
    DeliveryType ENUM('home_delivery', 'pickup'),
    TotalPrice DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
);

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT,
    Category ENUM('pizza', 'hamburgers', 'drinks'),
    ImageURL TEXT,
    Price DECIMAL(10,2)
);

CREATE TABLE IF NOT EXISTS Categories (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Pizzas (
    ProductID INT PRIMARY KEY,
    CategoryID INT PRIMARY KEY,
    Name VARCHAR(50),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)

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

CREATE TABLE IF NOT EXISTS Kitchenticket (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Received_at TIMESTAMP,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    PRIMARY KEY (OrderID, ProductID)
);

CREATE TABLE OrderDeliveries (
    OrderID INT,
    EmployeeID INT,
    DeliveryDateTime DATETIME,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    PRIMARY KEY (OrderID, EmployeeID)
);


