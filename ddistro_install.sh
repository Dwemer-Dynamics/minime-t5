#!/bin/bash

export PIP_NO_CACHE_DIR=1
export PIP_DISABLE_PIP_VERSION_CHECK=1

cd /home/dwemer/minime-t5/
python3 -m venv /home/dwemer/python-minime
source /home/dwemer/python-minime/bin/activate

echo "Installing MiniMe-T5 and TXT2VEC..."
python -m pip install --no-cache-dir -r requirements.txt
if [ $? -ne 0 ]; then
  echo "Pip install failed."
  read -p "Press Ctrl+C to exit."
fi

./conf.sh




