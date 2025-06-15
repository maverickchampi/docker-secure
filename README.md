# Steps

## 1. Create image and container

Run command for create image, create container and run it:

```
docker compose up -d --build
```

- Create only the image (without running the container):

```
docker compose build
```

- Create container after image is created:

```
docker compose create
```

## 2. Enter to container

We enter to container

```
docker exec -it docker-secure-sandbox-1 bash
```

## 3. Clone repository and run the project

Run script

```
bash /usr/local/bin/bootstrap.sh
```

Place the repository to clone

```
https://github.com/anmedina-arg/docker-secure-demo
```

Already in the project

```
cd /workspace/nombre-del-repo
npm install
npm run dev
```

In the meantime you can:

- View active connections with: ```netstat -tulnp``` or ```lsof -i```

- View open files with: ```lsof```

- View suspicious processes with: ```ps aux```

- Use ```strace``` to follow specific processes if you want to go more proactive.