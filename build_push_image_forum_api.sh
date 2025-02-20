docker build -t forum-api-hapi-js:1.0.0 .

docker tag forum-api-hapi-js:1.0.0 ghcr.io/fakhrylinux/forum-api-hapi-js:1.0.0

echo $CR_PAT | docker login ghcr.io -u gamalama --password-stdin

docker push ghcr.io/fakhrylinux/forum-api-hapi-js:1.0.0
