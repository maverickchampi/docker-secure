# Steps

Run command for create image

```
docker compose up -d --build
```

We enter to container

```
docker exec -it <NAME_CONTAINER> bash
```

Run script

```
bash /usr/local/bin/bootstrap.sh
```

Place the repository to clone

```
https://github.com/alguien/proyecto-malicioso.git
```

Already in the project

```
cd /workspace/nombre-del-repo
npm install
npm run dev
```

In the meantime you can:

- View active connections with: ```netstat -tulnp``` or ```lsof -i```

- View suspicious processes with: ```ps aux```

- View open files with: ```lsof```

- Use ```strace``` to follow specific processes if you want to go more proactive.