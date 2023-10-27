# Hackfun Static Site Generator

Un generador de sitios estáticos minimalista y hackeable para la Small Web.

## Filosofía

* User lenguajes y herramientas testeados y que tengan historial de no cambiar drásticamente con el paso del tiempo.
* Usar Markdown como lenguaje para generar el contenido.
* El resultado debe ser una web elegante y atractiva, que puede sentirse minimalista pero no obsoleta o poco funcional.
* La web debe ser responsive y poder visualizarse correctamente en una computadora y en un teléfono.
* Debe alojar todos los recursos/assets, no debe contar con dependencias externas (estilos, scripts, fuentes, imágenes, etc)
* Debe poder alojarse en cualquier servidor web básico como apache o nginx, sin necesidad de módulos adicionales.
* Pensado para durar y requerir la menor intervención posible en cuanto a actualizaciones y mantenimiento.

## Estructura

* `core`: Archivos HTML y CSS que componen la estructura del sitio. Algo así como la plantilla base sobre la que se construirá la web.
* `public_html`: El sitio generado se guardará en esta carpeta.
* `public_html.old`: Copia de seguridad de `public_html` que se genera con cada generación.
* `temp`: Carpeta de archivos intermedios y otros archivos temporales.
* `user_content/pages`: Carpeta donde se deben guardar los archivos que representan el contenido las páginas del sitio, en formato Markdown (.md)
* `user_content/blog`: (TODO) Aquí se guardarán los archivos Markdown que representan las publicaciones del blog.

## Dependencias

* Bash 4+
* [Pandoc](https://pandoc.org/)

## Limitaciones

* Los nombres de los archivos Markdown no deben contener espacios

## Cómo usar

1. Editar el archivo `config.txt`
2. Crear archivos markdown para el contenido en `user_content/pages`. Opcionalmente usar los archivos de ejemplo ubicados en `user_content/pages.example`.
3. Ejecutar `./generate.sh`
4. Si no hubo errores, el sitio generado se guardará en `public_html`

## TODO

* Estilos
* Generar blog (listado breve, publicaciones individuales, feed RSS)