#!/bin/sh
VENV = 'venv'
virtualenv $VENV
source $VENV/bin/activate
pip install flake8
flake8 --format=pylint calculator/ >flake8-out.txt
python --version
