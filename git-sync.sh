#!/bin/bash
cd "$(dirname "$0")"
BRANCH=$(git rev-parse --abbrev-ref HEAD)
echo "🔄 Synchronisation bidirectionnelle..."
echo ""
echo "📥 Récupération..."
git pull origin $BRANCH
echo ""
echo "📤 Envoi..."
git add -A
git commit -m "Auto-sync: $(date +'%Y-%m-%d %H:%M:%S')" || echo "✓ Rien à commiter"
git push origin $BRANCH
echo ""
echo "✓ Synchronisation terminée"
