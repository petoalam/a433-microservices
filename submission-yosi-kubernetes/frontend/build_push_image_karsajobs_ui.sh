#!/bin/bash

#Membuat Docker image dari Dockerfile
docker build -t karsajobs-ui .

#menampilkan daftar images
docker images

# Mengubah nama image sesuai format Docker Hub
docker tag karsajobs-ui yosi101/karsajobs-ui:latest

#Login to Docker Hub using the environment variable
echo $PASSWORD_DOCKER_HUB | docker login -u yosi101 --password-stdin



# Mengunggah image ke Docker Hub
docker push yosi101/karsajobs-ui:latest