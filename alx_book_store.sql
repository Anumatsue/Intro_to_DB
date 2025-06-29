CREATE DATABASE Online_Book_store;
USE Online_Book_store;

CREATE TABLE Books (book_id INT PRIMARY KEY, title VARCHAR(130), author_id, FOREIGN KEY (author_id) REFERENCES authors (author_id), price DOUBLE, publication_date DATE);
CREATE TABLE Authors (author_id INT PRIMARY KEY, author_name VARCHAR(215));
CREATE TABLE Customers (customer_id INT PRIMARY KEY, customer_name VARCHAR(215), email VARCHAR(215), address TEXT);
CREATE TABLE Orders (order_id INT PRIMARY KEY, customer_id FOREIGN KEY REFERENCES Customers, order_date DATE);
CREATE TABLE Order_Details (orderdetailid INT PRIMARY KEY, order_id FOREIGN KEY REFERENCES Orders, book_id FOREIGN KEY REFERENCES Books, quantity DOUBLE)