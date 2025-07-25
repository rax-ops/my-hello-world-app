echo "starting nginx with docker compose"
docker-compose up -d

echo "watinng for the container to start"
sleep 2

echo "Open in the browser"
sleep 2

docker-compose down

