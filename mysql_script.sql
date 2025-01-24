-- Create the customers table
CREATE TABLE customers (
    customer_id VARCHAR(100) PRIMARY KEY,            -- Unique identifier for each customer
    customer_name VARCHAR(100) NOT NULL,    -- Name of the customer
    address_line VARCHAR(255),            -- Address of the customer
    city VARCHAR(100),                      -- City of the customer
    country VARCHAR(100),                   -- Country of the customer
    postcode VARCHAR(20),                   -- Postcode of the customer
    loyalty_card BOOLEAN                    -- Whether the customer has a loyalty card
);

-- Create the products table
CREATE TABLE products (
    product_id VARCHAR(100) PRIMARY KEY,             -- Unique identifier for each product
    coffee_type VARCHAR(100),               -- Type of coffee (e.g., Arabica, Robusta)
    roast_type VARCHAR(50),                 -- Roast type (e.g., Light, Medium, Dark)
    size float,                       -- Package size (e.g., 500g, 1kg)
    unit_price float,              -- Price per unit
    price_per_100g float,          -- Price per 100 grams
    profit float                   -- Profit for this product
);

-- Create the orders table
CREATE TABLE orders (
    order_id VARCHAR(100) ,               -- Unique identifier for each order
    order_date DATE NOT NULL,               -- Date of the order
    customer_id VARCHAR(100),                        -- Foreign key to customers table
    product_id VARCHAR(100),                         -- Foreign key to products table
    quantity INT,                           -- Quantity of product ordered
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE
);

commit ;


select * from orders;
