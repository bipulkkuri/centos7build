# centos7build

To test
```javascript
docker build -t centos7build .
docker image ls
docker run  -d  centos7build

docker exec -it  <<IMAGEID>> /bin/sh

docker tag bipulkkuri/centos7build bipulkkuri/centos7build
docker push  bipulkkuri/centos7build:latest
```
