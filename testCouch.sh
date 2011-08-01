#curl -v -X POST -d @order1.json -H "Content-Type: application/json" localhost:5984/cats
#curl -v -X POST -d @order2.json -H "Content-Type: application/json" localhost:5984/cats
curl -v -X POST -d @view.json -H "Content-Type: application/json" localhost:5984/cats
curl -X GET localhost:5984/cats/_design/rylc/_view/all
echo 'july: '
curl -X GET 'localhost:5984/cats/_design/rylc/_view/by_timespan?startkey=\["ABC_AG","2011-07-01","2011-07-01"\]&endkey=\["ABC_AG","2011-07-31","2011-07-31"\]'
echo 'august: '
curl -X GET 'localhost:5984/cats/_design/rylc/_view/by_timespan?startkey=\["ABC_AG","2011-08-01","2011-08-01"\]&endkey=\["ABC_AG","2011-08-31","2011-08-31"\]'
 
