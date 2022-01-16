# Docker container with PostgreSQL latest (14) runing in Alpine

## How to...

### Run container with PostgreSQL

- Create a directory for the database

```bash
sudo mkdir -pv /home/projects/database
```
<br>

- Change directories owner to your br>

```bash
sudo chown $USER:$USER -Rf /home/projects
```

<br>

- Download this files into ```/home/projects/database/```
  - [docker-compose.yml](https://raw.githubusercontent.com/Viniciusalopes/docker-images/bc91c1a8dc6c982cea2e3d6119c3bae22fedd5fa/postgres-latest-alpine/docker-compose.yml)
  - [.env](https://raw.githubusercontent.com/Viniciusalopes/docker-images/bc91c1a8dc6c982cea2e3d6119c3bae22fedd5fa/postgres-latest-alpine/.env)

```bash
wget -O /home/projects/database/ https://raw.githubusercontent.com/Viniciusalopes/docker-images/bc91c1a8dc6c982cea2e3d6119c3bae22fedd5fa/postgres-latest-alpine/docker-compose.yml 
```

---



---

- Download this files
  - [docker-compose.yml](https://raw.githubusercontent.com/Viniciusalopes/docker-images/bc91c1a8dc6c982cea2e3d6119c3bae22fedd5fa/postgres-latest-alpine/docker-compose.yml)
  - [.env](https://raw.githubusercontent.com/Viniciusalopes/docker-images/bc91c1a8dc6c982cea2e3d6119c3bae22fedd5fa/postgres-latest-alpine/.env)

- Edit environment variables in __.env__ file
  - POSTGRES_DB, is the database name
  - POSTGRES_USER, is the database user
  - POSTGRES_PASSWORD, is the password of user database <i>(prefer nasa password)</i> __;)__
