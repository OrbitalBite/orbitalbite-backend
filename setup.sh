#!/bin/bash

echo "🚀 Starting OrbitalBite backend setup..."

# 1. Virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv venv
source venv/bin/activate

# 2. Pip upgrade
echo "⬆️  Upgrading pip..."
pip install --upgrade pip

# 3. Install requirements
echo "⬇️  Installing dependencies..."
pip install -r requirements.txt
pip install "Django>=5.0,<5.3"

# 4. Copy .env file if exists
if [ -f ".env" ]; then
  echo "ℹ️  .env already exists. Skipping copy."
elif [ -f ".env.example" ]; then
  cp .env.example .env
  echo "✅ .env created from .env.example."
else
  echo "⚠️  .env.example not found. Create .env manually!"
fi

# 5. Run migrations
echo "📄 Applying database migrations..."
python manage.py migrate

# 6. Run server
echo "🖥️  Starting development server at http://127.0.0.1:8000 ..."
python manage.py runserver
