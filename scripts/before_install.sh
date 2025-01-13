# scripts/before_install.sh
#!/bin/bash
# Instalar dependencias necesarias
cd /home/ec2-user/app
# Limpiar la instalación anterior si existe
rm -rf node_modules
# Asegurarse que PM2 está instalado
npm install pm2 -g