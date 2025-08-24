#!/bin/bash

# List of service container names
services=(
  "jellyfin"
  "jellyseerr"
  "qbittorrent"
  "prowlarr"
  "flaresolverr"
  "radarr"
  "sonarr"
  "Exit"
)

clear
echo "Select a service to view Docker logs:"
echo

# Display options
for i in "${!services[@]}"; do
  echo "$((i+1)). ${services[$i]}"
done

echo
read -rp "Enter number (1-${#services[@]}): " choice

# Validate input and handle Exit
if [[ "$choice" =~ ^[1-9][0-9]*$ ]] && [ "$choice" -ge 1 ] && [ "$choice" -le "${#services[@]}" ]; then
  service="${services[$((choice-1))]}"
  if [ "$service" == "Exit" ]; then
    clear
    echo "Exiting."
    exit 0
  fi
  clear
  echo "Showing logs for '$service' (press Ctrl+C to exit)..."
  docker logs -f "$service"
  clear
else
  clear
  echo "Invalid choice. Exiting."
  exit 1
fi