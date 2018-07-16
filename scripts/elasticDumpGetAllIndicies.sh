# used to copy indexes from one ES cluster to another

echo "elasticdump input/output"
#Below is currently pointing to Dev AAE
INPUT=$"http://10.17.12.4:9200"
echo "input URL =" $INPUT
#Below is pointing to PT AAS
DEST=$"http://10.12.48.11:9200"
echo "Dest URL =" $DEST
# To be removed if running form the CLI (build pipeline)
read -p "Press enter to continue"

#Returns all the indexes available and pushes this data to the destination
indices=$(curl -s -XGET $INPUT/_cat/indices?h=i)
for INDEX in $indices
do
  elasticdump --limit=1000 --input=$INPUT/$INDEX --output=$DEST/$INDEX
  echo $INPUT/$INDEX
done

