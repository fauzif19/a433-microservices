# melakukan build Dockerfile menjadi docker image
docker build -t karsajobs-ui:latest .

# melihat list docker image yang ada di local
docker images

# mengubah tag docker image agar bisa di upload ke docker hub
docker tag karsajobs-ui:latest zikazama/karsajobs-ui:latest

# melakukan login ke docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u zikazama --password-stdin

# mengunggah docker image ke docker hub
docker push zikazama/karsajobs-ui:latest