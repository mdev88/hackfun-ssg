#!/bin/bash
echo ""
echo "* * * Hackfun Static Site Generator * * *"

echo "> Haciendo limpieza..."
rm -rf public_html/*

echo "> Convirtiendo markdown..."

echo "> Fusionando archivos..."
cat core/header.html core/footer.html > public_html/index.html

echo "> Reemplazando placeholders..."

echo "> ¡Listo! Sitio generado en la carpeta public_html"