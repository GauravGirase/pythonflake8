#!/bin/sh
VENV="venv"
virtualenv $VENV
source $VENV/bin/activate
pip install flake8
pip install flake8-junit-report
pip install pytest
flake8 --format=pylint calculator/ >flake8-out.txt
flake8_junit flake8-out.txt flake8_junit.xml
py.test --junit-xml test-reports/results.xml mytests/
python --version
