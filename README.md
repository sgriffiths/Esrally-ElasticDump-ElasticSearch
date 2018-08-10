# Introduction 

This project uses elasticrally to run load tests against ElasticSearch. 
This just uses json queries and does not include the 

# To Run:
terminal session:
1. git clone https://github.com/sgriffiths/Esrally-ElasticSearch.git && cd Esrally-ElasticSearch
2. Update the 'rally.ini' datastore details(localhost or remote IP addres and user/password if using xpack with basic auth)
3. docker-compose run product

1 tracks are available:
"product"

# Getting Started

1. Tests (tracks) can be run using docker-compose run {track / Index name} with one index being run per container
2. Define in the rally.ini file your ES server where you want the logging to go
3. elasticDump can be used to copy the mapping and data files by bash running the sh scripts in the /scripts directory
