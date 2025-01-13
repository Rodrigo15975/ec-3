
# scripts/start_application.sh
#!/bin/bash
cd /home/ec2-user/app
# Iniciar la aplicación con PM2
pm2 start dist/main.js --name nestjs-app
