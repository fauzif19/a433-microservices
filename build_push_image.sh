# melakukan build Dockerfile menjadi docker image
docker build -t karsajobs:latest .

# melihat list docker image yang ada di local
docker images

# mengubah tag docker image agar bisa di upload ke docker hub
docker tag karsajobs:latest zikazama/karsajobs:latest

# melakukan login ke docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u zikazama --password-stdin

# mengunggah docker image ke docker hub
docker push zikazama/karsajobs:latest