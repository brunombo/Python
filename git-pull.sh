#!/bin/bash
cd "$(dirname "$0")"
echo "📥 Récupération depuis GitHub..."
git pull origin $(git rev-parse --abbrev-ref HEAD)
echo "✓ À jour"
