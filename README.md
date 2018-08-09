# Introduction 

This project uses elasticrally to run load tests against ElasticSearch:

https://github.com/elastic/rally

1 tracks are available:
* product

# Getting Started

1. Tests (tracks) can be run using docker-compose run {track / Index name} with one index being run per container
2. Define in the rally.ini file your ES server where you want the logging to go
3. elasticDump can be used to copy the mapping and data files by bash running the sh scripts in the /scripts directory