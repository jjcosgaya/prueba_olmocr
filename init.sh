apt update && apt upgrade
sudo apt-get install poppler-utils ttf-mscorefonts-installer msttcorefonts fonts-crosextra-caladea fonts-crosextra-carlito gsfonts lcdf-typetools
apt install curl -y
curl -LsSf https://astral.sh/uv/install.sh | sh

uv init
uv python pin 3.11
uv add olmocr[gpu]
uv add https://download.pytorch.org/whl/cu128/flashinfer/flashinfer_python-0.2.5%2Bcu128torch2.7-cp38-abi3-linux_x86_64.whl
