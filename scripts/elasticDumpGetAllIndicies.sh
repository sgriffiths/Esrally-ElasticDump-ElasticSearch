echo "elasticdump input/output"
INPUT=$"http://10.17.12.4:9200"
echo "input URL =" $INPUT
DEST=$"http://10.12.48.11:9200"
echo "Dest URL =" $DEST

read -p "Press enter to continue"

indices=$(curl -s -XGET $INPUT/_cat/indices?h=i)
for INDEX in $indices
do
  elasticdump --limit=1000 --input=$INPUT/$INDEX --output=$DEST/$INDEX
  echo $INPUT/$INDEX
done

