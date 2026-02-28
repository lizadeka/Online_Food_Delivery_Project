create database food_app_project;

use food_app_project;

-- create table customers where columns are customer_id, name, city, signup_date, gender
create table customers (
    customer_id int primary key,
    name varchar(100),
    city varchar(100),
    signup_date date not null,
    gender varchar(10)
);

-- Create table restaurants
CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    rest_name VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    cuisine VARCHAR(50),
    rating DECIMAL(3,2)
);

-- Create table delivery_agents
CREATE TABLE delivery_agents (
    agent_id INT PRIMARY KEY,
    agent_name VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    joining_date DATE,
    rating DECIMAL(3,2)
);

-- Create table orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    restaurant_id INT,
    order_date DATETIME NOT NULL,
    order_amount DECIMAL(10,2),
    discount DECIMAL(10,2),
    payment_method VARCHAR(50),
    delivery_time INT, -- in minutes
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

-- Create table order_items
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    item_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

