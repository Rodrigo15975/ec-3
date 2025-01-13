# scripts/after_install.sh
#!/bin/bash
cd /home/ubuntu/nestjs-app

# Instalar dependencias
npm install

# Construir la aplicación
npm run build