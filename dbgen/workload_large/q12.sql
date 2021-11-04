select
	l_shipmode,
	o_orderpriority,
from
	orders,
	lineitem
where
	o_orderkey = l_orderkey
