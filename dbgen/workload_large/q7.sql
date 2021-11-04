select
	n_name,
	l_shipdate,
	l_extendedprice,
    l_discount
from
	supplier,
	lineitem,
	orders,
	customer,
	nation
where
	s_suppkey = l_suppkey
	and o_orderkey = l_orderkey
	and c_custkey = o_custkey
	and s_nationkey = n_nationkey
	and c_nationkey = n_nationkey
