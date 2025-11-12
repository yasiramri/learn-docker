/Users/yasir/Documents/docker-file/backup

docker container create --name nginxbackup --mount "type=bind,source=/Users/yasir/Documents/docker-file/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest
docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=yasir --env MONGO_INITDB_ROOT_PASSWORD=yasir mongo:latest
docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://yasir:yasir@mongodb:27017/" mongo-express:latest