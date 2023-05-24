-- create a table for products
CREATE TABLE products (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  value DECIMAL(10,2) NOT NULL,
  status VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

-- create a table for companies
CREATE TABLE companies (
  id INT(11) NOT NULL AUTO_INCREMENT,
  cnpj VARCHAR(14) NOT NULL,
  status VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

-- add a product to the products table
INSERT INTO products (id, name, value, status)
VALUES (1, 'Product 1', 10.99, 'active');

-- add a company to the companies table
INSERT INTO companies (id, cnpj, status)
VALUES (1, '12345678901234', 'active');