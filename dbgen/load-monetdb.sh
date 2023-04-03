CUR_DIR=$(pwd)
echo $CUR_DIR
for i in `ls *.tbl`; do
	table=${i/.tbl/}
	echo "upload $table..."
	mclient -dtpch -s "COPY INTO $table FROM '$CUR_DIR/$i' USING DELIMITERS '|';"
done
