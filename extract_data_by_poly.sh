osmconvert  dnipropetrovsk_oblast-latest.osm.pbf -B=dnipro.poly  -o=1_to-node.o5m --all-to-nodes 
osmfilter 1_to-node.o5m --keep="building AND addr*" --drop-author --drop-version -o=2.building-addr.o5m
osmconvert 2.building-addr.o5m -o=3.addr.csv --csv-headline --csv-separator=';' --csv='@id addr:street addr:housenumber @lat @lon'
