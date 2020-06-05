#!/bin/bash

#
# Bash script to create an empty flask app 
# Usage: Navigate to folder where you desire 
# the flask app to be located and run
# ~/location/of/script/empty-flask-app-generator.sh
#

# Create venv
python3 -m venv env
source env/bin/activate

# Create all folders and files
touch app.py
touch config.py
touch requirements.txt
mkdir app
touch app/__init__.py
touch app/routes.py
touch app/forms.py
touch app/models.py
mkdir app/templates
touch app/templates/base.html
touch app/templates/index.html
mkdir app/static
mkdir app/static/css
touch app/static/css/main.css
mkdir app/static/js

# Add basic contents to some files
echo 'from app import app' > app.py
echo 'from app import app' > app/routes.py
echo 'from flask import render_template, flash, redirect, url_for' >> app/routes.py
echo 'from flask import Flask' > app/__init__.py
echo 'app = Flask(__name__)' >> app/__init__.py
echo 'from app import routes, models' >> app/__init__.py
