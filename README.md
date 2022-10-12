!!!!!!# Avaamo

Avaamo exercise
===============

#####Usage#####

1) Clone the repo locally and then get into directory Avaamo.
2) From directory Avaamo build the Dockerfile. Note: Make sure your docker desktop is running.....
3) Once the image is created run the image.
4) Hit the local browser on expose port to check the app up and running.

git clone https://github.com/srideransundareshan/Avaamo.git

cd Avaamo

docker build -t avaamo/node:v1 .

docker images

docker run -d --restart always -p 8080:8080 avaamo/node:v1

docker ps

cid=$(docker ps | awk '/avaamo/ {print $1}')

docker exec -it $cid /bin/bash

Validation:

http://localhost:8080/

