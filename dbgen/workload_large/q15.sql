select
    s_suppkey,
    s_name,
    s_address,
    s_phone,
	l_suppkey,
	l_extendedprice,
    l_discount
from
    supplier,
	lineitem
where
    s_suppkey = l_suppkey
