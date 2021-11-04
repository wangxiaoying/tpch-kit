select
	p_brand,
	p_type,
	p_size,
	ps_suppkey
from
	partsupp,
	part
where
	p_partkey = ps_partkey
