mkdir sf10
CUR_DIR=$(pwd)
export DSS_QUERY=$CUR_DIR/queries
echo $DSS_QUERY
for ((i=1;i<=22;i++)); do
    # `-d`: default parameters
    ./qgen -v -c -d -s 10 ${i} | sed 's/limit -1;//' | sed 's/day (3)/day/' > ./sf10/q${i}.sql
done
