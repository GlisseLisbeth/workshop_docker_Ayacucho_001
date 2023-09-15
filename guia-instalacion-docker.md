# Instalación de Docker Desktop
Docker Desktop es una aplicación que facilita la administración de Docker y se puede instalar en Mac, Linux o Windows. 

Puedes revisar de este link:
https://docs.docker.com/desktop/

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

## Instalar Docker en Ubuntu

> Docker Desktop es una aplicación específica para macOS y Windows, y no
> está disponible para Linux, incluyendo Ubuntu. Sin embargo, puedes
> utilizar Docker en Ubuntu

Para instalar Docker en Ubuntu, puedes seguir estos pasos:

**Nota**: A partir de la versión de Ubuntu 20.04 en adelante, Docker ha sido reemplazado por containerd como el runtime predeterminado del sistema. Sin embargo, puedes seguir instalando Docker en Ubuntu 20.04 si lo prefieres. Los siguientes pasos te mostrarán cómo hacerlo.

**Instalación de Docker en Ubuntu 20.04 o versiones posteriores:**

1.  Abre una terminal en tu sistema Ubuntu. 
2.  Actualiza la lista de paquetes de tu sistema para asegurarte de que esté al día:
```shell
    sudo apt update
```
3.  Instala las dependencias necesarias para permitir que Ubuntu utilice paquetes a través de HTTPS:
```shell
    sudo apt install apt-transport-https ca-certificates curl software-properties-common
```
4.  Descarga la clave GPG oficial de Docker:
```shell
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```
5.  Agrega el repositorio de Docker a tus fuentes de paquetes:
```shell
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```
6.  Actualiza nuevamente la lista de paquetes para incluir el repositorio de Docker:
```shell
    sudo apt update
```
7.  Finalmente, instala Docker:
```shell
    sudo apt install docker-ce docker-ce-cli containerd.io
```
8.  Una vez que la instalación se complete, inicia el servicio Docker y habilita su inicio automático en el arranque:
```shell
    sudo systemctl start docker
    sudo systemctl enable docker
```
9.  Verifica que Docker se haya instalado correctamente ejecutando el siguiente comando, que debería mostrar la información de la versión de Docker:
```shell
    docker --version
```

Puedes comenzar a utilizar Docker para crear y ejecutar contenedores.

## Instalar Docker Desktop en macOS

1.  **Requisitos previos:**
    -   Asegúrate de que tu Mac esté ejecutando macOS Yosemite (10.10) o una versión posterior.
    -   Asegúrate de tener una cuenta de usuario con privilegios de administrador en tu Mac.
2.  **Descarga Docker Desktop:**
    -   Abre un navegador web y ve al sitio web oficial de Docker: [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop).
    -   Haz clic en el botón "Download for Mac" para iniciar la descarga del archivo de instalación de Docker Desktop.
3.  **Instala Docker Desktop:**
 Una vez que se complete la descarga, haz doble clic en el archivo descargado llamado "Docker.dmg" para montar la imagen del disco.
4.  **Instala Docker Desktop:**
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