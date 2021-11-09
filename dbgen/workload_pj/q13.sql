select
	c_custkey,
	o_orderkey
from
	customer left outer join orders on
		c_custkey = o_custkey
