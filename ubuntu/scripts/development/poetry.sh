#!/bin/bash

echo "Installing poetry..."

python3 --v && curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3

# then poetry will be adde to the $PATH in .zshrc
