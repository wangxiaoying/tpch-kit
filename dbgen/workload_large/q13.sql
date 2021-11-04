select
	c_custkey
from
	customer left outer join orders on
		c_custkey = o_custkey
