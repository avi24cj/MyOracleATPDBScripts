select * from tab;


CREATE TABLE Jan18_tutorial_products (
    product_id     NUMBER PRIMARY KEY,
    product_name   VARCHAR2(200),
    category       VARCHAR2(100),
    price          NUMBER(10,2),
    brand          VARCHAR2(100)
);



INSERT INTO Jan18_tutorial_products (product_id, product_name, category, price, brand)
VALUES (1, 'Wireless Bluetooth Headphones', 'Electronics', 89.99, 'TechSound');

INSERT INTO Jan18_tutorial_products (product_id, product_name, category, price, brand)
VALUES (2, 'Smartphone Charging Cable', 'Electronics', 12.99, 'PowerLink');

INSERT INTO Jan18_tutorial_products (product_id, product_name, category, price, brand)
VALUES (3, 'Laptop Stand Adjustable', 'Electronics', 35.99, 'WorkSpace');

INSERT INTO Jan18_tutorial_products (product_id, product_name, category, price, brand)
VALUES (4, 'Wireless Mouse', 'Electronics', 24.99, 'ClickTech');

INSERT INTO Jan18_tutorial_products (product_id, product_name, category, price, brand)
VALUES (5, 'USB Flash Drive 32GB', 'Electronics', 15.99, 'DataStore');

INSERT INTO Jan18_tutorial_products (product_id, product_name, category, price, brand)
VALUES (6, 'Premium Gaming Keyboard', 'Electronics', 149.99, 'GamePro');

INSERT INTO Jan18_tutorial_products (product_id, product_name, category, price, brand)
VALUES (7, 'Smart Watch Fitness Tracker', 'Electronics', 199.99, 'FitTech');

INSERT INTO Jan18_tutorial_products (product_id, product_name, category, price, brand)
VALUES (8, 'Noise Canceling Earbuds', 'Electronics', 129.99, 'AudioMax');

select * from Jan18_tutorial_products;
