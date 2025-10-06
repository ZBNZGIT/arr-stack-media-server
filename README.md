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

   git clone https://github.com/ZBNZGIT/arr-stack-media-server.git
   cd arr-stack-media-server

   # Create necessary directories (adjust paths as needed)
   mkdir -p /config/jellyfin
   mkdir -p /config/jellyseerr
   mkdir -p /config/qbittorrent
   mkdir -p /config/prowlarr
   mkdir -p /config/radarr
   mkdir -p /config/sonarr
   mkdir -p /mnt/truenas             # Network Share base
   mkdir -p /mnt/truenas/movies      # Network Share
   mkdir -p /mnt/truenas/tvshows     # Network Share
   mkdir -p /mnt/truenas/media-downloads # Network Share
   mkdir -p /mnt/truenas/jellyfin-transcodes # Network Share

   # Mount your TrueNAS shares (add these lines to /etc/fstab):
   #
   # //10.0.0.84/movies               /mnt/truenas/movies               cifs credentials=/etc/samba/cred,file_mode=0777,dir_mode=0777 0 0
   # //10.0.0.84/tvshows              /mnt/truenas/tvshows              cifs credentials=/etc/samba/cred,file_mode=0777,dir_mode=0777 0 0
   # //10.0.0.84/media-downloads      /mnt/truenas/media-downloads      cifs credentials=/etc/samba/cred,file_mode=0777,dir_mode=0777 0 0
   # //10.0.0.84/jellyfin-transcodes  /mnt/truenas/jellyfin-transcodes  cifs credentials=/etc/samba/cred,file_mode=0777,dir_mode=0777 0 0

   # Then mount all shares:
   sudo mount -a

   # Start all containers
   docker-compose up -d

## 🚀 Usage

1. **Clone this repository, create required directories, start the stack, and access services:**

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
