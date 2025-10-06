## 🚀 Usage

1. **Clone this repository, create required directories, mount network shares, start the stack, and access services:**

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
   mkdir -p /mnt/truenas - Network Share
   mkdir -p /mnt/truenas/movies - Network Share
   mkdir -p /mnt/truenas/tvshows - Network Share
   mkdir -p /mnt/truenas/media-downloads - Network Share
   mkdir -p /mnt/truenas/jellyfin-transcodes - Network Share

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


| Service      | Port | URL                                            |
| ------------ | ---- | ---------------------------------------------- |
| Jellyfin     | 8097 | [http://localhost:8097](http://localhost:8097) |
| Jellyseerr   | 5055 | [http://localhost:5055](http://localhost:5055) |
| qBittorrent  | 8080 | [http://localhost:8080](http://localhost:8080) |
| Prowlarr     | 9696 | [http://localhost:9696](http://localhost:9696) |
| FlareSolverr | 8191 | [http://localhost:8191](http://localhost:8191) |
| Radarr       | 7878 | [http://localhost:7878](http://localhost:7878) |
| Sonarr       | 8989 | [http://localhost:8989](http://localhost:8989) |
