# Mentimeter Presentation Setup - Single Presentation Mode

## Configuración Optimizada (RECOMENDADA)

**Mejor opción:** Una sola presentación con múltiples slides para máximo control del facilitador.

### Setup Rápido (5 minutos)

1. **Crear UNA presentación en Mentimeter** con 5 slides:
   - Slide 1: Word Cloud - "In one word, what would you feel upon hearing about this collision?"
   - Slide 2: Open Text - "What missing information created the most uncertainty?"
   - Slide 3: Open Text - "Which responsibilities fell into gray areas?"
   - Slide 4: Open Text - "What did the committee over-rely on?"
   - Slide 5: Open Text - "What human limitations affected crisis management?"

2. **Obtener el código de la presentación**
3. **Actualizar `eventCode` en index.html** (línea ~853)
4. **Descargar UN QR code** y guardarlo como `images/qr-codes/mentimeter_qr_code.png`

### Configuración Actual

- **Code**: altvpk3xsbhg
- **URL**: https://www.menti.com/altvpk3xsbhg  
- **QR Image**: images/qr-codes/mentimeter_qr_code.png ✅

### Ventajas de Esta Configuración

✅ **Un solo QR code** - Participantes se unen una vez
✅ **Control total** - Tú decides cuándo avanzar slides
✅ **Flujo narrativo** mantenido - Sin interrupciones
✅ **Menos confusión** - Sin cambios de código
✅ **Funcionamiento inmediato** - Sin setup adicional

## Update HTML

Once you have the real codes, update the mentimeterConfig object in index.html:

```javascript
const mentimeterConfig = {
  enabled: true,
  baseUrl: "https://www.menti.com",
  eventCode: "YOUR_MAIN_EVENT_CODE", // Update this
  presentations: {
    warmup: {
      id: "WARMUP_CODE",
      type: "wordcloud",
      question: "emotional-response",
    },
    uncertainty: {
      id: "UNCERTAINTY_CODE",
      type: "opentext",
      question: "information-gaps",
    },
    ownership: {
      id: "OWNERSHIP_CODE",
      type: "opentext",
      question: "responsibility-confusion",
    },
    overreliance: {
      id: "OVERRELIANCE_CODE",
      type: "opentext",
      question: "assumptions-dependencies",
    },
    constraints: {
      id: "CONSTRAINTS_CODE",
      type: "opentext",
      question: "human-limitations",
    },
  },
};
```
