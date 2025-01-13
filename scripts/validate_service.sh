# scripts/validate_service.sh
#!/bin/bash
# Esperar a que la aplicación esté disponible
sleep 10
HTTP_RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:3000)

if [ "$HTTP_RESPONSE" -eq 200 ]; then
  echo "Aplicación funcionando correctamente"
  exit 0
else
  echo "Error al iniciar la aplicación"
  exit 1
fi
