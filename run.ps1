Write-Host "starting nginx with docker compose"
docker-compose up -d

Write-Host "watinng for the container to start"
Start-Sleep -Seconds 2

Write-Host "Open in the browser"
Start-Sleep -Seconds 2

docker-compose down

