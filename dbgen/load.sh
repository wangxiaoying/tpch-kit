CUR_DIR=$(pwd)
echo $CUR_DIR
echo $POSTGRES_URL
for i in `ls *.tbl`; do
	table=${i/.tbl/}
	echo "upload $table..."
	psql $POSTGRES_URL -c "\copy $table FROM '$CUR_DIR/$i' DELIMITER '|' ENCODING 'LATIN1';"
done
