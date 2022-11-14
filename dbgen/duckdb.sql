.read dss.ddl
COPY lineitem FROM 'lineitem.tbl' (DELIMITER '|');
COPY part FROM 'part.tbl' (DELIMITER '|');
COPY customer FROM 'customer.tbl' (DELIMITER '|');
COPY orders FROM 'orders.tbl' (DELIMITER '|');
COPY supplier FROM 'supplier.tbl' (DELIMITER '|');
COPY partsupp FROM 'partsupp.tbl' (DELIMITER '|');
COPY nation FROM 'nation.tbl' (DELIMITER '|');
COPY region FROM 'region.tbl' (DELIMITER '|');
