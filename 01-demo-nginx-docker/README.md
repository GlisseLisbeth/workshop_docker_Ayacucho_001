# NGINX con Docker

```bash
#Descargar imagen desde Docker Hub
docker pull nginx

# Ejecutar Servidor Web Nginx
docker run --name mynginx -p 80:80 -d nginx

# Verificar que el contenedor se creó y se está ejecutando
docker ps

# Testear mynginx1
curl http://localhost

# Detener y eliminar el contenedor mynginx
docker stop mynginx
docker rm mynginx
```

