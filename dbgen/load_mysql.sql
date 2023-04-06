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
LOAD DATA LOCAL INFILE '/root/tpch-kit/dbgen/data_sf10/customer.tbl' INTO TABLE `customer` FIELDS TERMINATED BY '|' ENCLOSED BY '\"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/root/tpch-kit/dbgen/data_sf10/lineitem.tbl' INTO TABLE `lineitem` FIELDS TERMINATED BY '|' ENCLOSED BY '\"' LINES TERMINATED BY '\n' (`l_orderkey`,`l_partkey`,`l_suppkey`,`l_linenumber`,`l_quantity`,`l_extendedprice`,`l_discount`,`l_tax`,`l_returnflag`,`l_linestatus`,`l_shipdate`,`l_commitdate`,`l_receiptdate`,`l_shipinstruct`,`l_shipmode`,`l_comment`) set l_id = NULL;
-- LOAD DATA LOCAL INFILE '/root/tpch-kit/dbgen/data_sf10/lineitem.tbl' INTO TABLE `lineitem` FIELDS TERMINATED BY '|' ENCLOSED BY '\"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/root/tpch-kit/dbgen/data_sf10/nation.tbl' INTO TABLE `nation` FIELDS TERMINATED BY '|' ENCLOSED BY '\"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/root/tpch-kit/dbgen/data_sf10/orders.tbl' INTO TABLE `orders` FIELDS TERMINATED BY '|' ENCLOSED BY '\"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/root/tpch-kit/dbgen/data_sf10/part.tbl' INTO TABLE `part` FIELDS TERMINATED BY '|' ENCLOSED BY '\"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/root/tpch-kit/dbgen/data_sf10/partsupp.tbl' INTO TABLE `partsupp` FIELDS TERMINATED BY '|' ENCLOSED BY '\"' LINES TERMINATED BY '\n' (`ps_partkey`, `ps_suppkey`, `ps_availqty`, `ps_supplycost`, `ps_comment`) set ps_id = NULL;
-- LOAD DATA LOCAL INFILE '/root/tpch-kit/dbgen/data_sf10/partsupp.tbl' INTO TABLE `partsupp` FIELDS TERMINATED BY '|' ENCLOSED BY '\"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/root/tpch-kit/dbgen/data_sf10/region.tbl' INTO TABLE `region` FIELDS TERMINATED BY '|' ENCLOSED BY '\"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/root/tpch-kit/dbgen/data_sf10/supplier.tbl' INTO TABLE `supplier` FIELDS TERMINATED BY '|' ENCLOSED BY '\"' LINES TERMINATED BY '\n';



