# Instalación de WSL

**Requisitos previos:**
1.  Asegúrate de que estás utilizando Windows 10 o una versión posterior. WSL no está disponible en versiones más antiguas de Windows.
2.  Asegúrate de que tienes privilegios de administrador en tu computadora.

**Pasos para instalar WSL:**
1.  Abre PowerShell como administrador. Para hacerlo, presiona la tecla Windows, escribe "PowerShell", haz clic derecho en "Windows PowerShell" y selecciona "Ejecutar como administrador".
2.  Ejecuta el siguiente comando para habilitar la característica WSL:
```powershell
wsl --install
```
3.  Reinicia tu computadora cuando se te indique hacerlo.

**Configura una distribución de Linux:**

1.  Después de reiniciar, abre la Microsoft Store desde el menú de inicio y busca una distribución de Linux. Puedes encontrar distribuciones populares como Ubuntu, Debian, Fedora, etc. Haz clic en la que prefieras.
2.  Haz clic en el botón "Obtener" o "Instalar" para descargar e instalar la distribución que seleccionaste.
3.  Después de la instalación, se te pedirá que crees una cuenta de usuario y establezcas una contraseña para tu distribución de Linux.
4.  Una vez que hayas configurado tu cuenta, la distribución de Linux estará lista para su uso.  

**Usar WSL:**

1.  Puedes abrir tu distribución de Linux instalada desde el menú de inicio o ejecutando el siguiente comando en PowerShell:
```powershell
wsl
```
2.  A partir de este momento, puedes usar comandos de Linux y ejecutar aplicaciones de Linux en tu distribución dentro de Windows.