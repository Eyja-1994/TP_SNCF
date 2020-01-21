use sncf
LOAD DATA LOCAL INFILE '/tmp/dataset/ville.txt' INTO TABLE ville FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE '/tmp/dataset/gare.txt' INTO TABLE gare FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE '/tmp/dataset/tgv.txt' INTO TABLE tgv FIELDS TERMINATED BY ',';



