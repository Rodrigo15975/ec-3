# scripts/stop_application.sh
#!/bin/bash
cd /home/ec2-user/app
# Verifica si el proceso está corriendo y lo detiene
pm2 stop nestjs-app || true