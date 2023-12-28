# Usa la imagen de Node.js como base
FROM node:latest

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia los archivos del proyecto al contenedor
COPY package*.json ./
COPY app.js .

# Instala las dependencias
RUN npm install

# Expone el puerto 3001
EXPOSE 3001

# Comando para iniciar la aplicación al ejecutar el contenedor
CMD ["node", "app.js"]
