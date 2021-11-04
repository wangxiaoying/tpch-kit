select
	o_orderdate,
	l_extendedprice,
    l_discount,
	n_name
from
	part,
	supplier,
	lineitem,
	orders,
	customer,
	nation,
	region
where
	p_partkey = l_partkey
	and s_suppkey = l_suppkey
	and l_orderkey = o_orderkey
	and o_custkey = c_custkey
	and c_nationkey = n_nationkey
	and n_regionkey = r_regionkey
	and s_nationkey = n_nationkey
