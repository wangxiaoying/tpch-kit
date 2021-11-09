select
	p_type,
    l_extendedprice,
    l_discount
from
	lineitem,
	part
where
	l_partkey = p_partkey
