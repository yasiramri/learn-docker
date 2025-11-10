/Users/yasir/Documents/docker-file/backup

docker container create --name nginxbackup --mount "type=bind,source=/Users/yasir/Documents/docker-file/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest