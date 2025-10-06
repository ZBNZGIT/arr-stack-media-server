# 📺 ARR Stack Media Server

A fully containerized media server stack using Docker Compose, based on the popular *Arr* suite with Jellyfin for streaming. Automate your movie and TV show downloads, indexers, and playback — all self-hosted.

---

## 📦 Services Included

| Service      | Description                                        |
|--------------|--------------------------------------------------|
| Jellyfin     | Media server to stream your TV shows and movies  |
| Jellyseerr   | Media request manager for Jellyfin                |
| qBittorrent  | Torrent downloader with web UI                     |
| Prowlarr     | Indexer manager for Sonarr, Radarr, etc.          |
| FlareSolverr | Proxy server to bypass Cloudflare protection      |
| Radarr       | Movie manager for automated downloads              |
| Sonarr       | TV show manager for automated downloads            |

---

## 🚀 Usage

1. Clone this repository, create required directories, start the stack, and access services:

```bash
git clone https://github.com/ZBNZGIT/arr-stack-media-server.git
cd arr-stack-media-server

# Create necessary directories (adjust paths as needed)
mkdir -p /config/jellyfin
mkdir -p /config/jellyseerr
mkdir -p /config/qbittorrent
mkdir -p /config/prowlarr
mkdir -p /config/radarr
mkdir -p /config/sonarr
mkdir -p /mnt/truenas/movies
mkdir -p /mnt/truenas/tvshows
mkdir -p /mnt/truenas/media-downloads
mkdir -p /mnt/truenas/jellyfin-transcodes

# Start all containers
docker-compose up -d

# 🌐 Access Web Interfaces

**Once the containers are running, access the services using the URLs below:**

| Service      | Port | URL                                            |
| ------------ | ---- | ---------------------------------------------- |
| Jellyfin     | 8097 | [http://localhost:8097](http://localhost:8097) |
| Jellyseerr   | 5055 | [http://localhost:5055](http://localhost:5055) |
| qBittorrent  | 8080 | [http://localhost:8080](http://localhost:8080) |
| Prowlarr     | 9696 | [http://localhost:9696](http://localhost:9696) |
| FlareSolverr | 8191 | [http://localhost:8191](http://localhost:8191) |
| Radarr       | 7878 | [http://localhost:7878](http://localhost:7878) |
| Sonarr       | 8989 | [http://localhost:8989](http://localhost:8989) |

🗂 Mount TrueNAS Shares (Optional)

To mount your TrueNAS shares, add these lines to /etc/fstab:

Then mount all shares with:
