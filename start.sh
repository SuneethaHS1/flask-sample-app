#!/bin/bash

pkill -f "python3 app.py" || true
cd ~/flask-sample-app
git pull origin main
[ -d venv ] || python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
nohup python3 app.py &
