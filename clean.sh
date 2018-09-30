# all docker container remove
docker stop mysql
docker rm `docker ps -a -q`