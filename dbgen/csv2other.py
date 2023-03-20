import pandas as pd

for i in range(1, 17):
    df = pd.read_csv(f"lineitem_sf10/lineitem.tbl.{i}", sep='|', header=None, names=["l_orderkey", "l_partkey", "l_suppkey", "l_linenumber", "l_quantity", "l_extendedprice", "l_discount", "l_tax", "l_returnflag", "l_linestatus", "l_shipdate", "l_commitdate", "l_receiptdate", "l_shipinstruct", "l_shipmode", "l_comment"])
    # df.to_parquet(f"lineitem_sf10/lineitem.parquet.{i}")
    df.to_orc(f"lineitem_sf10/lineitem.orc.{i}")
