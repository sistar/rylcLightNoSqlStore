#!/bin/bash
#delete database rents
db=rents
db_con=localhost:5984/${db}
curl -X DELETE ${db_con}

curl -X PUT ${db_con}
curl -X POST -d @order1.json -H "Content-Type: application/json" ${db_con}
curl -X POST -d @order2.json -H "Content-Type: application/json" ${db_con}
curl -X POST -d @view.json -H "Content-Type: application/json" ${db_con}
curl -X GET ${db_con}/_design/rylc/_view/all
echo 'july: '
curl -X GET ${db_con}'/_design/rylc/_view/by_timespan?startkey=\["ABC_AG","2011-07-01","2011-07-01"\]&endkey=\["ABC_AG","2011-07-31","2011-07-31"\]'
echo 'august: '
curl -X GET ${db_con}'/_design/rylc/_view/by_timespan?startkey=\["ABC_AG","2011-08-01","2011-08-01"\]&endkey=\["ABC_AG","2011-08-31","2011-08-31"\]'
 
