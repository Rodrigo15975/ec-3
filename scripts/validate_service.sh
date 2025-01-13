# scripts/validate_service.sh
#!/bin/bash
# Esperar a que el servicio esté disponible
sleep 10
# Verificar si el servicio está respondiendo
curl http://localhost:8000 || exit 1
