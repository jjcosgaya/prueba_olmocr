sudo apt-get update -y
sudo apt-get install poppler-utils ttf-mscorefonts-installer msttcorefonts fonts-crosextra-caladea fonts-crosextra-carlito gsfonts lcdf-typetools -y

conda create -n olmocr python=3.11
conda activate olmocr

pip install olmocr[gpu]  --extra-index-url https://download.pytorch.org/whl/cu128
pip install https://download.pytorch.org/whl/cu128/flashinfer/flashinfer_python-0.2.5%2Bcu128torch2.7-cp38-abi3-linux_x86_64.whl
