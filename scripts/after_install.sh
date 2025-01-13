
# scripts/after_install.sh
#!/bin/bash
cd /home/ec2-user/app
# Instalar dependencias
npm install
# Construir la aplicación
npm run build