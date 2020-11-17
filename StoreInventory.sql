USE StoreInventory;
CREATE TABLE Vendor (
	vendor_id	int PRIMARY KEY AUTO_INCREMENT,
    vendor_name varchar(20),
    vendor_province varchar(3)
);

INSERT INTO Vendor (vendor_name, vendor_province) VALUES ('Yogi', 'BC');
INSERT INTO Vendor (vendor_name, vendor_province) VALUES ('Medi', 'QC');