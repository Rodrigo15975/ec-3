# scripts/start_application.sh
#!/bin/bash
cd /home/ubuntu/nestjs-app

# Iniciar la aplicación con PM2
sudo pm2 delete nestjs-app 2>/dev/null || true
sudo pm2 start dist/main.js --name nestjs-app