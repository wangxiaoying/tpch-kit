drop table if exists orders;

create table orders  ( o_orderkey       integer not null,
	o_custkey        integer not null,
	o_orderstatus    char(1) not null,
	o_totalprice     decimal(15,2) not null,
	o_orderdate      date not null,
	o_orderpriority  char(15) not null,  
	o_clerk          char(15) not null, 
	o_shippriority   integer not null,
	o_comment        varchar(79) not null)
-- engine MergeTree()
engine ReplacingMergeTree()
order by (o_orderkey);

SET format_csv_delimiter = '|';
SET format_csv_null_representation = 'null';
INSERT INTO orders FROM INFILE '../data_sf10/orders.tbl' FORMAT CSV;
