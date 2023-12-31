# Comandos

- Información básica de Docker

```bash
# Devuelve la versión de Docker
docker version

# Más detalle sobre la configuración de Docker
docker info

# Mostrar comando que podemos usar en Docker
docker
```

- Contenedores

```bash
# Ejecutar Servidor Web Nginx
docker run -p 80:80 nginx

# Ejecutar Servidor Web Nginx en diferentes puertos
docker run -p 81:80 nginx

# Lista de contenedores en ejecucción
docker ps

# Lista de contenedores en ejecucción y detenidos
docker ps -a

# Iniciar un contenedor
docker start <nombre o ID del contenedor>

# Detener un contenedor 
docker stop <nombre o ID del contenedor>

# Eliminar un contenedor
docker rm <nombre o ID del contenedor>

# Forzar una eliminación de un contenedor
docker rm -f <nombre o ID del contenedor>

# Eliminar todos los contenedores detenidos
docker container prune

# Eliminar todos los contenedores incluso en ejecucción
docker rm -f $(docker ps -aq)

# Crear redes y conectar contenedores
docker network create my_network
```

- Imágenes

```bash
# Listado de las imagenes
docker image ls
# Eliminar imagenes no utilizadas
docker image prune
# Eliminar todas las imagenes
docker rmi $(docker images -q)
```

- Administrar múltiples contenedores: nginx, MySQl and httpd

```bash
# Ejecutar contenedor nginx
docker run --name nginx  -p 80:80 --d nginx

# Pruebas Nginx
curl localhost:80


# Ejecutar contenedor mysql, usar password random
docker run -p 3306:3306 -d --name mysql -e MYSQL_ROOT_PASSWORD=mysecretpw mysql

# Ingrese el contenedor MySQL con bash
docker exec -it <container-id> bash

# Conectar a MySQL Server
mysql -u root -p

# Ejecutar httpd container
docker run -p 8080:80 --name httpd -d httpd

# Prueba httpd
curl localhost:8080

# Eliminar imagenes y contenedores
docker stop nginx httpd mysql
docker rm nginx httpd mysql
docker rmi nginx httpd mysql
```

- Dockerfiles: Creando nuestras propias imagenes

```Dockerfile
# Crear Archivo Dockerfile
FROM ubuntu
RUN apt-get update
CMD ["echo", "Hola Docker Community Ayacucho desde mi primera imagen de Docker"]
```

```bash
# Ejecutar Dockerfile
docker image build -t myimage:1.0.0 .
docker images

# Construir el contenedor con nuestra iamgen myimage
docker run myimage:1.0.0
```

- DockerHub: Publicar nuestra imagen a DockerHub

```bash
docker login
docker image tag myimage:1.0.0 glisselisbeth/myimage:1.0.0
docker image push glisselisbeth/myimage:1.0.0

# Chequea tu imagen en DockerHub: https://hub.docker.com/
```

- Dockeriza tu aplicacion web (OPTIONAL)

```Dockerfile
# Crear Archivo Dockerfile

# Utilice runtime de Node como imagen principal
FROM node:lts

# Establecer el directorio /app
WORKDIR /app

# Copie el contenido del directorio actual en el contenedor /app
ADD . /app

# Poner el puerto 80 al contenedor.
EXPOSE 80

# Ejecutar app.js usando node cuando se lanza un contenedor
CMD ["node", "app.js"]
```

```bash
# Ejecutar Dockerfile
docker build -t node-app:0.1 .
docker run -p 3000:3000  --name my-app node-app:0.1
```

- Volúmenes para almacenar datos de la base de datos en forma persistente

```bash
# Crear un volumen de Docker "mysql_data"
docker volume create mysql_data

# Run the image:
docker run --name my-mysql -e MYSQL_ROOT_PASSWORD=mysecretpw -v mysql_data:/var/lib/mysql -d mysql:latest

# Conectarse con la base de datos
docker exec -it <id del contenedor> mysql -u root -p

# Para detener o eliminar el contenedor
docker stop <id del contenedor>
docker rm <id del contenedor>
```

Referencia: 
- [Cheatsheet](https://docs.docker.com/get-started/docker_cheatsheet.pdf) by Docker
- [hands-on-to-docker](https://github.com/edithturn/hands-on-to-docker) by Edith Puclla
