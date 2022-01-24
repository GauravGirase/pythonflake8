#!/bin/sh
VENV="venv"
virtualenv $VENV
source $VENV/bin/activate
pip install flake8
pip install flake8-junit-report
flake8 --format=pylint calculator/ >flake8-out.txt
flake8_junit flake8.txt flake8_junit.xml
python --version
