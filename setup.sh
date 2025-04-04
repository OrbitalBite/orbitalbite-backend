#!/bin/bash

echo "🚀 Starting OrbitalBite backend setup..."

# Python version check
PYTHON_VERSION=$(python3 -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}')")
if [[ "$PYTHON_VERSION" < "3.9" ]]; then
  echo "❌ Python 3.9 or higher is required. Found: $PYTHON_VERSION"
  exit 1
fi

# Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv venv
source venv/bin/activate

# Upgrade pip
echo "⬆️  Upgrading pip..."
pip install --upgrade pip

# Install requirements
echo "⬇️  Installing dependencies..."
pip install -r requirements.txt

# Copy .env.example to .env if not exists
if [ ! -f .env ]; then
  echo "📄 Copying .env.example to .env..."
  cp .env.example .env
fi

# Migrate DB
echo "📄 Applying database migrations..."
python manage.py migrate

# Run server
echo "🖥️  Starting development server at http://127.0.0.1:8000 ..."
python manage.py runserver
