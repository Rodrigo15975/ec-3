FROM node:20-alpine

# Establecer el directorio de trabajo
WORKDIR /usr/src/app

# Copiar solo los archivos necesarios para instalar las dependencias
COPY package*.json ./

# Instalar las dependencias
RUN npm install 

# Copiar el resto de los archivos
COPY . .

# Compilar la aplicación
RUN npm run build

# Exponer el puerto
EXPOSE 8000

# Comando para iniciar la aplicación
CMD [ "npm", "run", "start:prod" ]
