#!/bin/bash

# Script para verificar estado de presentación Mentimeter
# Uso: ./verify-mentimeter.sh [codigo]

CODE=${1:-"altvpk3xsbhg"}

echo "🔍 Verificando presentación Mentimeter..."
echo "📱 Código: $CODE"
echo "🌐 URL: https://www.menti.com/$CODE"
echo "📦 Embed: https://www.mentimeter.com/app/presentation/$CODE/embed"
echo ""

# Test básico de conectividad
echo "⏳ Probando conectividad..."
if curl -s --head "https://www.menti.com/$CODE" | head -n 1 | grep -q "200 OK"; then
    echo "✅ URL responde correctamente"
else
    echo "❌ URL no responde o presentación no activa"
    echo ""
    echo "💡 Posibles soluciones:"
    echo "   1. Verificar que la presentación esté activa en Mentimeter"
    echo "   2. Comprobar el código de la presentación"
    echo "   3. Crear nueva presentación con código: $CODE"
fi

echo ""
echo "📱 Para probar manualmente:"
echo "   • Ir a menti.com"
echo "   • Introducir código: $CODE"
echo "   • Debería cargar la presentación"

# Generar QR code de backup
echo ""
echo "🔄 QR Code backup URL:"
echo "https://api.qrserver.com/v1/create-qr-code/?size=200x200&data=https://www.menti.com/$CODE"
