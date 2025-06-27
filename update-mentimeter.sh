#!/bin/bash

# Script to update Mentimeter codes in the workshop HTML
# Usage: ./update-mentimeter.sh

echo "=== Mentimeter Code Updater ==="
echo "Please enter your Mentimeter presentation codes:"

read -p "Warm-up Word Cloud code: " WARMUP_CODE
read -p "Uncertainty Question code: " UNCERTAINTY_CODE
read -p "Ownership Question code: " OWNERSHIP_CODE
read -p "Over-reliance Question code: " OVERRELIANCE_CODE
read -p "Constraints Question code: " CONSTRAINTS_CODE
read -p "Main event code (for general access): " EVENT_CODE

# Backup original file
cp index.html index.html.backup-$(date +%Y%m%d_%H%M%S)

# Update the HTML file
sed -i.bak "s/eventCode: 'GRAYZONES2025'/eventCode: '$EVENT_CODE'/" index.html
sed -i.bak "s/warmup: { id: 'warmup'/warmup: { id: '$WARMUP_CODE'/" index.html
sed -i.bak "s/uncertainty: { id: 'uncertainty'/uncertainty: { id: '$UNCERTAINTY_CODE'/" index.html
sed -i.bak "s/ownership: { id: 'ownership'/ownership: { id: '$OWNERSHIP_CODE'/" index.html
sed -i.bak "s/overreliance: { id: 'overreliance'/overreliance: { id: '$OVERRELIANCE_CODE'/" index.html
sed -i.bak "s/constraints: { id: 'constraints'/constraints: { id: '$CONSTRAINTS_CODE'/" index.html

# Clean up backup file created by sed
rm index.html.bak

echo "✅ Mentimeter codes updated successfully!"
echo "📝 Backup created: index.html.backup-$(date +%Y%m%d_%H%M%S)"
echo ""
echo "📱 Next steps:"
echo "1. Download QR code images from Mentimeter"
echo "2. Save them as:"
echo "   - images/qr-codes/warmup.png"
echo "   - images/qr-codes/uncertainty.png"
echo "   - images/qr-codes/ownership.png"
echo "   - images/qr-codes/overreliance.png"
echo "   - images/qr-codes/constraints.png"
echo ""
echo "🚀 Your workshop is ready to go!"
