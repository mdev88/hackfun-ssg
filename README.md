# Hackfun Static Site Generator

Un generador de sitios estáticos minimalista.

## Filosofía

- Usar la menor cantidad de dependencias y tecnologías posibles, y las que se usen, que sean sólidas y tengan un historial de mantener compatibilidad a lo largo del tiempo.
- Pensado para durar y requerir la menor intervención posible en cuanto a actualizaciones y mantenimiento.

## Estructura

- `core`: Archivos HTML y CSS que componen la estructura del sitio. Algo así como la plantilla base sobre la que se construirá la web.
- `public_html`: El sitio generado se guardará en esta carpeta.
- `user_content/pages`: Carpeta donde se deben guardar los archivos que representan el contenido las páginas del sitio, en formato Markdown (.md)
- `user_content/blog`: (TODO) Aquí se guardarán los archivos Markdown que representan las publicaciones del blog.

## Cómo usar

1. Editar el archivo `config.txt`
2. Editar o crear archivos markdown para el contenido en `user_content/pages`
3. Ejecutar `./generate.sh`
4. Si no hubo errores, el sitio generado se guardará en `public_html`