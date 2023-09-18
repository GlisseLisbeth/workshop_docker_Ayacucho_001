# NodeJS con Docker

```bash
# Construir imagen de nodejs
docker build -t  node-app:0.1 .
docker run -p 3000:3000 --name my-app node-app:0.1
```

