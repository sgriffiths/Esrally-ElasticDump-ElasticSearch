# Introduction 

This project uses elasticrally to run load tests against ElasticSearch:

https://github.com/elastic/rally

5 tracks are available:
* aggregate
* category
* review
* suggestion
* product

All tracks except product remove and create their indexes and the data for these lives in the /data folder

Product just runs the search queries direct against the Index and these are set in the /operations directory. Comnfiguration
of the clients(threads) and the duration/iteration is set in the 'parallel.json' file in the challenges directory

# Getting Started

1. Tests (tracks) can be run using docker-compose run {track / Index name} with one index being run per container
2. Reports are sent to the PT AAS monitoring box : http://10.12.49.7:9200/
3. Reports can be viewed in Kibana : http://10.12.49.6:5601 (dashboard still tbc)
4. elasticDump can be used to copy the mapping and data files (currently done from Dev AAE) by bash running the sh scripts in the /scripts directory

