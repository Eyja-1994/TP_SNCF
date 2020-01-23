#!/bin/bash
export VERSION_APPLY=2
echo $VERSION_APPLY
/usr/local/bin/docker-compose build
docker tag configuration_httpdserver eyja1994/server_sncf:$VERSION_APPLY
docker tag configuration_db eyja1994/server_sncf:$VERSION_APPLY
docker push eyja1994/server_sncf:$VERSION_APPLY
docker push eyja1994/db_sncf:$VERSION_APPLY
