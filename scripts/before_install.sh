# scripts/before_install.sh
#!/bin/bash
# Actualizar el sistema e instalar dependencias
sudo apt-get update
sudo apt-get install -y nodejs npm
sudo npm install -g pm2

# Limpiar directorio de la aplicación si existe
if [ -d "/home/ubuntu/nestjs-app" ]; then
    sudo rm -rf /home/ubuntu/nestjs-app
fi
sudo mkdir -p /home/ubuntu/nestjs-app