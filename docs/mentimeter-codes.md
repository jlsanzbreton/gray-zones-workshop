# Mentimeter Presentation Codes

## Instructions
1. Create 5 presentations on mentimeter.com
2. Replace the placeholder codes below with real ones
3. Update the HTML file with these codes
4. Download QR code images and place in images/qr-codes/

## Presentation Codes

### Warm-up Word Cloud (Slide 8)
- **Code**: REPLACE_WITH_REAL_CODE
- **URL**: https://www.menti.com/REPLACE_WITH_REAL_CODE
- **QR Image**: images/qr-codes/warmup.png

### Uncertainty Question (Slide 9)
- **Code**: REPLACE_WITH_REAL_CODE
- **URL**: https://www.menti.com/REPLACE_WITH_REAL_CODE
- **QR Image**: images/qr-codes/uncertainty.png

### Ownership Question (Slide 10)
- **Code**: REPLACE_WITH_REAL_CODE
- **URL**: https://www.menti.com/REPLACE_WITH_REAL_CODE
- **QR Image**: images/qr-codes/ownership.png

### Over-reliance Question (Slide 11)
- **Code**: REPLACE_WITH_REAL_CODE
- **URL**: https://www.menti.com/REPLACE_WITH_REAL_CODE
- **QR Image**: images/qr-codes/overreliance.png

### Constraints Question (Slide 12)
- **Code**: REPLACE_WITH_REAL_CODE
- **URL**: https://www.menti.com/REPLACE_WITH_REAL_CODE
- **QR Image**: images/qr-codes/constraints.png

## Update HTML
Once you have the real codes, update the mentimeterConfig object in index.html:

```javascript
const mentimeterConfig = {
  enabled: true,
  baseUrl: 'https://www.menti.com',
  eventCode: 'YOUR_MAIN_EVENT_CODE', // Update this
  presentations: {
    warmup: { id: 'WARMUP_CODE', type: 'wordcloud', question: 'emotional-response' },
    uncertainty: { id: 'UNCERTAINTY_CODE', type: 'opentext', question: 'information-gaps' },
    ownership: { id: 'OWNERSHIP_CODE', type: 'opentext', question: 'responsibility-confusion' },
    overreliance: { id: 'OVERRELIANCE_CODE', type: 'opentext', question: 'assumptions-dependencies' },
    constraints: { id: 'CONSTRAINTS_CODE', type: 'opentext', question: 'human-limitations' }
  }
};
```
