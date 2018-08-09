echo "elasticdump data input and output to a json file per index"
INPUT=$"http://10.17.18.30:9200"
echo "Input URL = ${INPUT}" 

indices=$(curl -s -XGET $INPUT/_cat/indices?h=i)

#Iterate through each of the indexes and save just the mappings to a file
for INDEX in $indices
do
  elasticdump --limit=100 --input=${INPUT}/$INDEX --output=$INDEX".mapping.json" --type=mapping
  echo ${INPUT}/$INDEX
done
