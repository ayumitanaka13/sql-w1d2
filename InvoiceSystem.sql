USE InvoiceSystem;

CREATE TABLE Invoice (
	invoice_id int PRIMARY KEY AUTO_INCREMENT,
    invoice_date date,
    total_amount double(5, 2)
);

CREATE TABLE Product (
	product_id int PRIMARY KEY AUTO_INCREMENT,
    price double(4, 2),
    product_name varchar(20)
);

CREATE TABLE ProductInvoices (
	product_invoice_id int PRIMARY KEY AUTO_INCREMENT,
    invoice_id int,
    product_id int,
    FOREIGN KEY (invoice_id) REFERENCES Invoice(invoice_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

INSERT INTO Invoice (invoice_date, total_amount) VALUES ('2020-01-01', 23.3);
INSERT INTO Product (price, product_name) VALUES (55.5, 'sweater');

INSERT INTO ProductInvoices(invoice_id, product_id) VALUES (1, 1);
