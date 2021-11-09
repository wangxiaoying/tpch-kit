select
	o_orderdate,
	l_extendedprice,
    l_discount,
	n2.n_name as nation
from
	part,
	supplier,
	lineitem,
	orders,
	customer,
	nation n1,
	nation n2,
	region
where
	p_partkey = l_partkey
	and s_suppkey = l_suppkey
	and l_orderkey = o_orderkey
	and o_custkey = c_custkey
	and c_nationkey = n1.n_nationkey
	and n1.n_regionkey = r_regionkey
	and r_name in ('AMERICA', 'AFRICA')
	and s_nationkey = n2.n_nationkey
	and o_orderdate between date '1994-01-01' and date '1997-12-31'
	and p_type like 'ECONOMY%'
