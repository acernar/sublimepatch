#!/bin/bash

echo "🗄️ Haciendo backup de configuraciones..."

# Verificar carpeta destino
mkdir -p vscode-config
mkdir -p iterm2-config

# Copiar settings VSCode
echo "📁 Guardando configuración de VSCode..."
cp ~/Library/Application\ Support/Code/User/settings.json vscode-config/settings.json

# Copiar keybindings si existe
if [ -f ~/Library/Application\ Support/Code/User/keybindings.json ]; then
  cp ~/Library/Application\ Support/Code/User/keybindings.json vscode-config/keybindings.json
  echo "✅ Keybindings copiados"
else
  echo "⚠️ No se encontró keybindings.json, se omite"
fi

# Copiar configuración iTerm2
echo "📁 Guardando configuración de iTerm2..."
cp ~/sublimepatch/iterm2-config/com.googlecode.iterm2.plist iterm2-config/

# Guardar en Git
echo "📦 Confirmando cambios en Git..."
git add vscode-config iterm2-config
git commit -m "Backup automático de configuraciones de VSCode e iTerm2"
git push

echo "✅ Backup completo y subido al repositorio."