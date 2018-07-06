INPUT=$"http://10.17.18.30:9200"
read -p "Press enter to continue"

elasticdump --all=true --limit=5000 --input=$INPUT --output="productionESData.json"