mkdir sf${SF}
CUR_DIR=$(pwd)
export DSS_QUERY=$CUR_DIR/queries
echo $DSS_QUERY
for ((i=1;i<=22;i++)); do
    # `-d`: default parameters
    ./qgen -v -c -d -s ${SF} ${i} | sed '/^--/d' | sed '/^$/d' | sed '/^limit /d' | sed 's/;//' | sed 's/day (3)/day/' > ./sf${SF}/q${i}.sql
done
