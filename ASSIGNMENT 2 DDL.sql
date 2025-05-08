CREATE DATABASE SALES;
USE SALES;

CREATE TABLE ORDERS (
    ORDER_ID INT AUTO_INCREMENT PRIMARY KEY,
    CUSTOMER_NAME VARCHAR(100) NOT NULL,
    PRODUCT_CATEGORY VARCHAR(50) NOT NULL,
    ORDERED_ITEM VARCHAR(100) NOT NULL, 
    CONTACT_NUMBER VARCHAR(15) unique,
);
DESC ORDERS;
ALTER table ORDERS ADD ORDER_QUANTITY VARCHAR(100);
RENAME TABLE ORDERS TO SALES_ORDERS;
INSERT INTO Sales_Orders (CUSTOMER_NAME,PRODUCT_CATEGORY,ORDERED_ITEM,CONTACT_NUMBER,ORDER_QUANTITY)
VALUES
    ('Alice', 'Electronics', 'Smartphone', '1234567890', 2),
    ('Bob', 'Clothing', 'T-Shirt', '1234567891', 3),
    ('Charlie', 'Books', 'Novel', '1234567892', 1),
    ('Diana', 'Groceries', 'Rice', '1234567893', 5),
    ('Eve', 'Furniture', 'Chair', '1234567894', 4),
    ('Frank', 'Electronics', 'Laptop', '1234567895', 1),
    ('Grace', 'Clothing', 'Jacket', '1234567896', 2),
    ('Henry', 'Books', 'Magazine', '1234567897', 6),
    ('Ivy', 'Groceries', 'Vegetables', '1234567898', 7),
    ('Jack', 'Furniture', 'Table', '1234567899', 1);
    
    SELECT Customer_name, Ordered_item FROM Sales_Orders;
    UPDATE Sales_Orders
SET Ordered_item = 'Smartphone Pro'
WHERE Order_Id = 1;
DROP TABLE Sales_Orders;

