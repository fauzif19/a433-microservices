# melakukan build Dockerfile menjadi docker image
docker build -t item-app:v1 .

# melihat list docker image yang ada di local
docker images

# mengubah tag docker image agar bisa di upload ke docker hub
docker tag item-app:v1 zikazama/item-app:v1

# melakukan login ke docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u zikazama --password-stdin

# mengunggah docker image ke docker hub
docker push zikazama/item-app:v1