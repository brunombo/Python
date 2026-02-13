#!/bin/bash
cd "$(dirname "$0")"
BRANCH=$(git rev-parse --abbrev-ref HEAD)
echo "📤 Envoi vers GitHub..."
git add -A
git commit -m "Auto-sync: $(date +'%Y-%m-%d %H:%M:%S')" || true
git push origin $BRANCH
echo "✓ Synchronisé"
