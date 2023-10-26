#!/bin/bash
echo ""
echo ">>> Hackfun Static Site Generator <<<"

# Incorporo variables declaradas en el archivo de configuración
source config.txt

echo "> Haciendo limpieza..."
rm -rf public_html/* temp/*

echo "> Generando $website_name..."

echo "> Subpáginas: ${#menu_entries[@]}"

echo "> Convirtiendo archivos markdown..."

echo "> Generando subpáginas..."
for key in ${!menu_entries[@]}
do
  pandoc -f markdown user_content/pages/${key}.md -o temp/${key}.html
  cat core/header.html temp/${key}.html core/footer.html > public_html/${key}.html
  sed -i "s/{website_name}/$website_name/g" public_html/${key}.html
  sed -i "s/{footer_text}/$footer_text/g" public_html/${key}.html
done

echo "> ¡Listo! Sitio generado en la carpeta 'public_html'"
echo ""