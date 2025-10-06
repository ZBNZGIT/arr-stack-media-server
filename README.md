# 📺 ARR Stack Media Server

A fully containerized media server stack using Docker Compose, based on the popular *Arr* suite with Jellyfin for streaming. Automate your movie and TV show downloads, indexers, and playback — all self-hosted.

---

## 📦 Services Included

| Service       | Description |
|---------------|-------------|
| **Jellyfin**      | Media server to stream your TV shows and movies |
| **Jellyseerr**    | Media request manager for Jellyfin |
| **qBittorrent**   | Torrent downloader with web UI |
| **Prowlarr**      | Indexer manager for Sonarr, Radarr, etc. |
| **FlareSolverr**  | Proxy server to bypass Cloudflare protection (used by Prowlarr) |
| **Radarr**        | Movie manager for automated downloads |
| **Sonarr**        | TV show manager for automated downloads |

---

## 🚀 Usage

1. **Clone this repository:**

   ```bash
   git clone https://github.com/ZBNZGIT/arr-stack-media-server.git
   cd arr-stack-media-server

/config/jellyfin
/config/jellyseerr
/config/qbittorrent
/config/prowlarr
/config/radarr
/config/sonarr
/mnt/truenas/movies
/mnt/truenas/tvshows
/mnt/truenas/media-downloads
/mnt/truenas/jellyfin-transcodes

docker-compose up -d

| Service      | Port | URL                                            |
| ------------ | ---- | ---------------------------------------------- |
| Jellyfin     | 8097 | [http://localhost:8097](http://localhost:8097) |
| Jellyseerr   | 5055 | [http://localhost:5055](http://localhost:5055) |
| qBittorrent  | 8080 | [http://localhost:8080](http://localhost:8080) |
| Prowlarr     | 9696 | [http://localhost:9696](http://localhost:9696) |
| FlareSolverr | 8191 | [http://localhost:8191](http://localhost:8191) |
| Radarr       | 7878 | [http://localhost:7878](http://localhost:7878) |
| Sonarr       | 8989 | [http://localhost:8989](http://localhost:8989) |


arr-stack-media-server/
├── docker-compose.yml         # Main Docker stack
├── docker-logs-viewer.sh      # Helper script to view container logs
├── docker-ports.txt           # Port mapping reference
├── docker-update-all.sh       # Script to update all containers


