/

-- Create Revenue table
CREATE TABLE Revenue (
    Channel VARCHAR2(50) NOT NULL,
    Product VARCHAR2(50) NOT NULL,
    Revenue NUMBER(10,2) NOT NULL
);
-- Insert sample data
INSERT INTO Revenue (Channel, Product, Revenue) VALUES ('Facebook', 'T-Shirts', 125);
INSERT INTO Revenue (Channel, Product, Revenue) VALUES ('Facebook', 'Pants', 120);
INSERT INTO Revenue (Channel, Product, Revenue) VALUES ('LinkedIn', 'Shorts', 140);
INSERT INTO Revenue (Channel, Product, Revenue) VALUES ('Twitter', 'Hats', 90);
INSERT INTO Revenue (Channel, Product, Revenue) VALUES ('Email', 'T-Shirts', 120);
INSERT INTO Revenue (Channel, Product, Revenue) VALUES ('Facebook', 'Pants', 125);
