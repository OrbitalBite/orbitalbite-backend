#!/bin/bash

echo "🚀 Starting OrbitalBite backend setup..."

# Step 1: Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv venv

# Step 2: Activate it
source venv/bin/activate

# Step 3: Upgrade pip
echo "⬆️  Upgrading pip..."
python -m pip install --upgrade pip

# Step 4: Install requirements
echo "⬇️  Installing dependencies..."
pip install -r requirements.txt

echo "📄 .env file already present."

# Step 6: Run migrations
echo "📄 Applying database migrations..."
python manage.py migrate

# Step 7: Run server
echo "🖥️  Starting development server at http://127.0.0.1:8000 ..."
python manage.py runserver
