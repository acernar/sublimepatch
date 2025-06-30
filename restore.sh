#!/bin/bash

echo "🔄 Restaurando configuraciones..."

# Restaurar configuración de VSCode
echo "📁 Copiando configuración de VSCode..."
mkdir -p ~/Library/Application\ Support/Code/User
cp ./vscode-config/settings.json ~/Library/Application\ Support/Code/User/settings.json

# Restaurar configuración de iTerm2
echo "📁 Copiando configuración de iTerm2..."
mkdir -p ~/sublimepatch/iterm2-config
cp ./iterm2-config/com.googlecode.iterm2.plist ~/sublimepatch/iterm2-config/com.googlecode.iterm2.plist

# Mensaje final
echo "✅ Configuraciones restauradas. Reinicia VSCode e iTerm2 para aplicar los cambios."