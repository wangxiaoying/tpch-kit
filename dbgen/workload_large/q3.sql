select
	l_orderkey,
	l_extendedprice,
    l_discount,
	o_orderdate,
	o_shippriority
from
	customer,
	orders,
	lineitem
where
	c_custkey = o_custkey
	and l_orderkey = o_orderkey
