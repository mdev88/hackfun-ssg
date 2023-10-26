#!/bin/bash
echo ""
echo ">>> Hackfun Static Site Generator <<<"

# Incorporo variables declaradas en el archivo de configuración
source config.txt

echo "> Haciendo copia de seguridad de carpeta public_html..."
rm -rf public_html.old/* 2>/dev/null
cp -r public_html public_html.old 2>/dev/null
rm -rf public_html/* 2>/dev/null

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

echo "> Limpiando archivos temporales..."
rm -rf temp/* 2>/dev/null

echo "> ¡Listo! Sitio generado en la carpeta 'public_html'"
echo ""