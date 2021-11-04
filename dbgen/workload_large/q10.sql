select
	c_custkey,
	c_name,
	l_extendedprice,
    l_discount,
	c_acctbal,
	n_name,
	c_address,
	c_phone,
	c_comment
from
	customer,
	orders,
	lineitem,
	nation
where
	c_custkey = o_custkey
	and l_orderkey = o_orderkey
	and c_nationkey = n_nationkey
