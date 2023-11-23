#!/bin/bash

# Membuat Docker image dari Dockerfile
docker build -t order-service:latest .

# Menampilkan daftar images
docker images

# Mengubah nama image sesuai format Docker Hub
docker tag order-service:latest yosi101/order-service:latest

# jika belum login docker
 echo $PASSWORD_DOCKER_HUB | docker login -u yosi101 --password-stdin

# Mengunggah image ke Docker Hub
docker push yosi101/order-service:latest