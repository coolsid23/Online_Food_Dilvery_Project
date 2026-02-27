CREATE DATABASE IF NOT EXISTS food_app_project;

USE food_app_project;

-- Customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY ,
    name VARCHAR(255),
    city VARCHAR(255),
    signup_date DATE NOT NULL,
    gender VARCHAR(10)
);

-- Restaurants table
CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(255) NOT NULL,
    city VARCHAR(255),
    cuisine VARCHAR(100),
    rating DECIMAL(2,1)
);

-- Delivery agents table
CREATE TABLE delivery_agents (
    agent_id INT PRIMARY KEY ,
    agent_name VARCHAR(255) NOT NULL,
    city VARCHAR(255),
    joining_date DATE,
    rating DECIMAL(2,1)
);

-- Orders table (depends on customers, restaurants, delivery_agents)
CREATE TABLE orders (
    order_id INT PRIMARY KEY ,
    customer_id INT NOT NULL,
    restaurant_id INT NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    order_amount DECIMAL(10,2) NOT NULL,
    discount DECIMAL(10,2) DEFAULT 0,
    payment_method VARCHAR(50),
    delivery_time INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

-- Order items table (depends on orders)
CREATE TABLE order_item (
    order_item_id INT PRIMARY KEY ,
    order_id INT NOT NULL,
    item_name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

