# Utiliza una imagen base de Node.js LTS
FROM node:18-alpine

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos package.json y package-lock.json al directorio de trabajo
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos al directorio de trabajo
COPY . .

# Expone el puerto 3000
EXPOSE 3000

# Comando para iniciar la aplicación Node.js
CMD ["node", "app.js"]