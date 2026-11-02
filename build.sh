#!/bin/sh
# Wraps app.html (artifact fragment) into a standalone index.html for GitHub Pages / local use.
set -e
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="he" dir="rtl">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n<meta name="theme-color" content="#0d2a35">\n<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%%}[hidden]{display:none!important}</style>\n</head>\n<body>\n'
  cat app.html
  printf '\n</body>\n</html>\n'
} > index.html
