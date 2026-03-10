#!/bin/bash
# Detener el script inmediatamente si ocurre algún error
set -e

echo "=== 1. Actualizando el sistema e instalando dependencias ==="
sudo apt update && sudo apt upgrade -y
sudo apt-get install -y poppler-utils ttf-mscorefonts-installer fonts-crosextra-caladea fonts-crosextra-carlito gsfonts lcdf-typetools curl

echo "=== 2. Instalando uv ==="
curl -LsSf https://astral.sh/uv/install.sh | sh

# Recargar el PATH para que el script reconozca el comando 'uv' recién instalado
export PATH="$HOME/.local/bin:$PATH"

echo "=== 3. Creando e inicializando el proyecto ==="
uv init
uv python pin 3.11

echo "=== 4. Corrigiendo pyproject.toml para evitar errores de versión ==="
sed -i 's/requires-python = .*/requires-python = "==3.11.*"/' pyproject.toml

echo "=== 5. Descargando e instalando olmocr y flashinfer ==="
uv add "olmocr[gpu]" --extra-index-url https://download.pytorch.org/whl/cu128
uv add https://download.pytorch.org/whl/cu128/flashinfer/flashinfer_python-0.2.5%2Bcu128torch2.7-cp38-abi3-linux_x86_64.whl

echo "=========================================="
echo "¡Instalación completada con éxito!"
echo "Tu proyecto está en la carpeta: mi_proyecto_olmocr"
echo "=========================================="
