-- to lower letter
-- SELECT CONCAT('ALTER TABLE ', TABLE_NAME, ' CHANGE `', COLUMN_NAME, '` `', LOWER(COLUMN_NAME), '` ', COLUMN_TYPE, ';') FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'tpchsf1';
-- select concat('rename table ', table_name, ' to ' , lower(table_name) , ';') from information_schema.tables where table_schema = 'tpchsf1';

-- rename table CUSTOMER to customer;
-- rename table LINEITEM to lineitem;
-- rename table NATION to nation;
-- rename table ORDERS to orders;
-- rename table PART to part;
-- rename table PARTSUPP to partsupp;
-- rename table REGION to region;
-- rename table supplier to supplier;
 
-- set charset and collation
-- ALTER TABLE customer CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- ALTER TABLE lineitem CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- ALTER TABLE nation CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- ALTER TABLE orders CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- ALTER TABLE part CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- ALTER TABLE partsupp CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- ALTER TABLE region CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- ALTER TABLE supplier CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

SET GLOBAL local_infile = 'ON';
SHOW GLOBAL VARIABLES LIKE 'local_infile';
LOAD DATA LOCAL INFILE '/Users/momo/prog/tpch-kit/dbgen/customer.tbl' INTO TABLE `customer` FIELDS TERMINATED BY '|' ENCLOSED BY '\"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/Users/momo/prog/tpch-kit/dbgen/lineitem.tbl' INTO TABLE `lineitem` FIELDS TERMINATED BY '|' ENCLOSED BY '\"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/Users/momo/prog/tpch-kit/dbgen/nation.tbl' INTO TABLE `nation` FIELDS TERMINATED BY '|' ENCLOSED BY '\"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/Users/momo/prog/tpch-kit/dbgen/orders.tbl' INTO TABLE `orders` FIELDS TERMINATED BY '|' ENCLOSED BY '\"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/Users/momo/prog/tpch-kit/dbgen/part.tbl' INTO TABLE `part` FIELDS TERMINATED BY '|' ENCLOSED BY '\"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/Users/momo/prog/tpch-kit/dbgen/partsupp.tbl' INTO TABLE `partsupp` FIELDS TERMINATED BY '|' ENCLOSED BY '\"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/Users/momo/prog/tpch-kit/dbgen/region.tbl' INTO TABLE `region` FIELDS TERMINATED BY '|' ENCLOSED BY '\"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/Users/momo/prog/tpch-kit/dbgen/supplier.tbl' INTO TABLE `supplier` FIELDS TERMINATED BY '|' ENCLOSED BY '\"' LINES TERMINATED BY '\n';
