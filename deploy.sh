#!/bin/bash

# Script per deployare su GitHub Pages usando un branch separato

# Build del sito
echo "Building Hugo site..."
hugo

# Controllo se il build è andato a buon fine
if [ ! -d "public" ]; then
    echo "Errore: directory public non trovata"
    exit 1
fi

# Salva la directory corrente
REPO_DIR=$(pwd)

# Naviga nella directory public
cd public

# Inizializza un nuovo repo git nella cartella public
git init
git add .
git commit -m "Deploy to GitHub Pages"

# Aggiungi il remote origin (sostituisci con il tuo repository)
# git remote add origin https://github.com/belluscio-abafr/progetti-studenti.git

# Push al branch gh-pages
git push -f origin main:gh-pages

echo "Deploy completato!"
