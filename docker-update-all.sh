#!/bin/bash
echo "Pulling latest images..."
IMAGES=$(sudo docker ps --format "{{.Image}}" | sort | uniq)

for IMAGE in $IMAGES; do
  echo "Pulling $IMAGE..."
  sudo docker pull "$IMAGE"
done

echo "Restarting all containers..."
sudo docker restart $(sudo docker ps -q)
echo "Update complete."