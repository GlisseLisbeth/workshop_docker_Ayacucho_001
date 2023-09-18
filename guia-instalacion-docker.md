# Instalación de Docker Desktop
Docker Desktop es una aplicación que facilita la administración de Docker y se puede instalar en Mac, Linux o Windows. 

**Nota:** 
- Crear cuenta de Docker Hub en https://hub.docker.com/

## Instalar Docker Desktop en Windows

1. **Requisitos previos:**
    - Tener una versión de Windows compatible. Docker Desktop es compatible con Windows 10 Pro, Enterprise o Education (build 15063 o superior) o Windows 11. No es compatible con Windows 10 Home.
    - La virtualización debe estar habilitada en la configuración de BIOS/UEFI de su computadora.
    - Tener instalada WSL (Windows Subsystem for Linux). En caso de no tener instalada Diríjase a este link: [Instalación de WSL](guia-instalacion-wsl.md)

 2. **Descargue Docker Desktop:**
Visite el sitio web oficial de Docker Desktop en https://www.docker.com/products/docker-desktop y haga clic en "Download for Windows" para descargar el instalador.

 3. **Ejecute el instalador:**
Una vez que se complete la descarga, ejecute el archivo de instalación de Docker Desktop (por lo general, se llama Docker Desktop Installer.exe).

 4. **Configuración de Docker:**
Durante la instalación, se le pedirá que configure Docker Desktop. Asegúrese de permitir la configuración predeterminada, que incluye la habilitación de la virtualización, la configuración de recursos y la integración con Windows.

 5. **Inicio de Docker:**
Una vez que la instalación haya finalizado, Docker Desktop se iniciará automáticamente. Puede encontrar el icono de Docker en la bandeja del sistema (cerca del reloj) en la parte inferior derecha de la pantalla.

 6. **Verificación de la instalación:**
Abra una ventana de PowerShell o Command Prompt y ejecute el siguiente comando para verificar que Docker esté funcionando correctamente:
```shell
    docker --version
```

 7. **Uso de Docker:**
Ahora puede comenzar a usar Docker Desktop para ejecutar contenedores en su sistema Windows. Puede usar la línea de comandos de Docker o herramientas de administración de contenedores con interfaz gráfica como Portainer para gestionar sus contenedores.

> En caso que tengas algún problema al momento usar Docker Desktop con WSL, 
> es importante dejar como por default la imagen de Ubuntu. Para poder realizarlo hay que hacer lo siguiente

```shell
    # Listamos las imagenes que tenemos en WSL
    wsl.exe -l -v

    # En el caso de que estés usando Ubuntu para WSL podrías utilizar:
    wsl --set-default ubuntu
```

## Instalar Docker Desktop en Ubuntu

1.  **Requisitos previos:**
- Cumplir con los requisitos del sistema: https://docs.docker.com/desktop/install/linux-install/#system-requirements
- Tener una versión de 64 bits de Ubuntu Lunar Lobster 23.04 o Ubuntu Jammy Jellyfish 22.04 (LTS). Docker Desktop es compatible con la arquitectura x86_64(o amd64).

2.  **Descargar Docker Desktop:**
    -   Abre un navegador web y ve al sitio web oficial de Docker: [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop).
    -   Haz clic en el botón "Download for Linnux" para iniciar la descarga del archivo de instalación de Docker Desktop.
3.  **Instala Docker Desktop:**
 Instale el paquete con apt de la siguiente manera:
```shell
    $ sudo apt-get update
    $ sudo apt-get install ./docker-desktop-<version>-<arch>.deb
```

 4. **Configuración de Docker:**
Hay algunos pasos de configuración posteriores a la instalación que se realizan a través del script posterior a la instalación contenido en el paquete deb.

El script posterior a la instalación:

- Establece la capacidad en el binario de Docker Desktop para asignar puertos privilegiados y establecer límites de recursos.
- Agrega un nombre DNS para Kubernetes a /etc/hosts.
- Crea un enlace simbólico desde /usr/local/bin/com.docker.clia /usr/bin/docker. Esto se debe a que la CLI clásica de Docker está instalada en /usr/bin/docker. El instalador de Docker Desktop también instala un binario de Docker CLI que incluye capacidades de integración en la nube y es esencialmente un contenedor para Compose CLI, en /usr/local/bin/com.docker.cli. El enlace simbólico garantiza que el contenedor pueda acceder a la CLI clásica de Docker.

 5. **Inicio de Docker:**
Para iniciar Docker Desktop para Linux, busque Docker Desktop en el menú Aplicaciones y ábralo. Esto inicia el ícono del menú de Docker y abre el Panel de Docker, informando el estado de Docker Desktop.

Alternativamente, abra una terminal y ejecute:
```shell
    $ systemctl --user start docker-desktop
```
Cuando se inicia Docker Desktop, crea un contexto dedicado que Docker CLI puede usar como destino y lo establece como el contexto actual en uso. 

 6. **Verificación de la instalación:**
Abra una ventana de Terminal y ejecute el siguiente comando para verificar que Docker esté funcionando correctamente:
```shell
    $ docker compose version
    Docker Compose version v2.17.3

    $ docker --version
    Docker version 23.0.5, build bc4487a

    $ docker version
    Client: Docker Engine - Community
    Cloud integration: v1.0.31
    Version:           23.0.5
    API version:       1.42
    <...>
```

 7. **Uso de Docker:**
Para permitir que Docker Desktop se inicie al iniciar sesión, en el menú de Docker, seleccione Configuración > General > Iniciar Docker Desktop cuando inicie sesión .

## Instalar Docker Desktop en macOS

1.  **Requisitos previos:**
    -   Asegúrate de que tu Mac esté ejecutando macOS Yosemite (10.10) o una versión posterior.
    -   Asegúrate de tener una cuenta de usuario con privilegios de administrador en tu Mac.
2.  **Descarga Docker Desktop:**
    -   Abre un navegador web y ve al sitio web oficial de Docker: [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop).
    -   Haz clic en el botón "Download for Mac" para iniciar la descarga del archivo de instalación de Docker Desktop.
3.  **Instala Docker Desktop:**
 Una vez que se complete la descarga, haz doble clic en el archivo descargado llamado "Docker.dmg" para montar la imagen del disco.
4.  **Instala Docker Desktop en Applications:**
Se abrirá una ventana del Finder que contiene la aplicación Docker. Arrastra la aplicación Docker a la carpeta "Applications" para instalarla.
5.  **Inicia Docker Desktop:**
Ve a la carpeta "Applications" en tu Mac y haz doble clic en la aplicación Docker para iniciarla.
6.  **Configura Docker Desktop (opcional):**
    -   Puedes configurar la cantidad de recursos (CPU, memoria, etc.) que Docker Desktop puede usar en la pestaña "Resources" de la aplicación.
    -   También puedes configurar la integración de Docker con tu IDE o editor de código en la pestaña "File Sharing" si lo deseas.
7.  **Inicia Docker:**
 Al abrir Docker Desktop, se iniciará automáticamente el servicio Docker. Puedes verificar que Docker esté en funcionamiento haciendo clic en el icono de Docker en la barra de menú en la parte superior de la pantalla. Si el icono está en color, Docker está en funcionamiento.
8.  **Usa Docker:**
Una vez que Docker esté en funcionamiento, puedes abrir una terminal en tu Mac y comenzar a utilizar comandos de Docker para crear y ejecutar contenedores.

Ahora tienes Docker Desktop instalado y funcionando en tu Mac, lo que te permite trabajar con contenedores de Docker de manera fácil y conveniente.

Referencia: 
- [Manual Oficial del Docker](https://docs.docker.com/desktop/) by Docker
- [hands-on-to-docker](https://github.com/edithturn/hands-on-to-docker) by Edith Puclla