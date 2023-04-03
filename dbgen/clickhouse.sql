SET format_csv_delimiter = '|';
SET format_csv_null_representation = 'null';

INSERT INTO lineitem FROM INFILE 'lineitem.tbl' FORMAT CSV;
INSERT INTO part FROM INFILE 'part.tbl' FORMAT CSV;
INSERT INTO customer FROM INFILE 'customer.tbl' FORMAT CSV;
INSERT INTO orders FROM INFILE 'orders.tbl' FORMAT CSV;
INSERT INTO supplier FROM INFILE 'supplier.tbl' FORMAT CSV;
INSERT INTO partsupp FROM INFILE 'partsupp.tbl' FORMAT CSV;
INSERT INTO nation FROM INFILE 'nation.tbl' FORMAT CSV;
INSERT INTO region FROM INFILE 'region.tbl' FORMAT CSV;
