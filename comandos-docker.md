# Comandos

Puede darle una vista rápida al ChetSheet: https://docs.docker.com/get-started/docker_cheatsheet.pdf

Para obtener más información sobre cualquier comando específico:
```shell
docker <command> --help
```

## Contenedores

Para crear y ejecutar un contenedor a partir de una imagen. **Nota**: Este es un ejemplo específico, puede haber muchas opciones, dependiendo de lo que quiere crear y ejecutar.
```shell
docker run -d -p <puerto_host>:<puerto_contenedor> <nombre de la imagen>
```

Para ver la ejecución del contenedor lo que hace por consola
```shell
docker logs <nombre o ID del contenedor>
```

Para ver la lista de contenedores en ejecucción
```shell
docker ps
```

Para ver la lista de todos los contenedores en ejecucción y detenidos
```shell
docker ps -a
```

Para iniciar un contenedor
```shell
docker start "nombrecontenedor"
```

Para bajar o detener un contenedor 
```shell
docker stop <nombre o ID del contenedor>
```

Para eliminar un contenedor
```shell
docker rm <nombre o ID del contenedor>
```

Para crear redes personalizadas para conectar contenedores
```shell
docker network create my_network
```

## Imágenes
Nos devuelve el listado de las imagenes: docker images (o docker image ls)

```shell
docker image ls
```


Para descargar una imagen de Docker desde un registro público o privado. **Nota**:Puedes especificar la imagen completa o solo el nombre y la etiqueta.
```shell
docker pull <nombre de la imagen>:<tag>
```

Para crear una imagen de Docker a partir de un Dockerfile
```shell
docker build -t <nombre de la imagen> <path_to_dockerfile_directory>
```

Para guardar una imagen de Docker en un archivo tar para su posterior transporte o almacenamiento
```shell
docker save -o <output_file.tar> <nombre de la imagen>:<tag>
```

Para cargar una imagen previamente guardada desde un archivo tar en Docker
```shell
docker load -i <input_file.tar>
```

Para mostrar el historial de una imagen de Docker
```shell
docker history <output_file.tar> <nombre de la imagen>:<tag>
```

Para eliminar una imagen
```shell
docker rmi <nombre de la imagen>
```

Para eliminar imagenes no utilizadas y liberar espacio
```shell
docker image prune
```
## Volúmenes

Para mostrar una lista de volúmenes
```shell
docker volume ls
```

Para crear un nuevo volumen
```shell
docker volume create <nombre_del_volumen>
```

Para mostrar informacion detallada del volumen
```shell
docker volume create <nombre_del_volumen>
```

Para eliminar un volumen
```shell
docker volume rm <nombre_del_volumen>
```

Para eliminar todos los volumenes no utilizados
```shell
docker volume prune
```

Para asignar un volumen a un contenedor al crearlo
```shell
docker run -v <nombre_del_volumen>:<ruta_en_el_contenedor> <nombre_de_la_imagen>
```

Para montar un volumen de otro contenedor en uno nuevo.
```shell
docker run --volume-from <nombre_del_contenedor_fuente> <nombre_de_la_imagen>
```

Para copiar archivos o directorios entre el sistema anfitrión y un contenedor o entre contenedores
```shell
docker cp <archivo_o_directorio_origen> <nombre_del_contenedor>:<destino_en_el_contenedor>
```












