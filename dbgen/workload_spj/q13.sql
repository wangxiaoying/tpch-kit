select
	c_custkey,
	o_orderkey
from
	customer left outer join orders on
		c_custkey = o_custkey
		and o_comment not like '%special%requests%'
