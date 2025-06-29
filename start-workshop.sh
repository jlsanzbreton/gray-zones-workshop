#!/bin/bash

# 🚀 Gray Zones Workshop - Auto Setup Script
# Abre automáticamente workshop + control Mentimeter

echo "🎯 Configurando Gray Zones Workshop..."

# Abrir workshop en navegador principal
echo "📊 Abriendo workshop principal..."
open ./index.html

# Esperar un segundo
sleep 2

# Abrir Mentimeter presenter view
echo "🎮 Abriendo control Mentimeter..."
open "https://www.mentimeter.com/app/presentation/altvpk3xsbhg"

echo "✅ Setup completo!"
echo ""
echo "🎮 CONTROLES:"
echo "   Workshop: Space/Click para avanzar"
echo "   Mentimeter: Cambiar slides manualmente"
echo ""
echo "🔄 SINCRONIZACIÓN:"
echo "   Slide 8 → Mentimeter Slide 1"
echo "   Slide 9 → Mentimeter Slide 2"
echo "   Slide 10 → Mentimeter Slide 3"
echo "   Slide 11 → Mentimeter Slide 4"
echo "   Slide 12 → Mentimeter Slide 5"
echo ""
echo "🚀 ¡Listo para facilitar!"
