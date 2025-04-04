#!/bin/bash

echo "🚀 Starting OrbitalBite backend setup..."

# 1. Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv venv
. venv/bin/activate  # <- BU ÇOK ÖNEMLİ, "source" yerine "." kullandık

# 2. Upgrade pip
echo "⬆️  Upgrading pip..."
pip install --upgrade pip

# 3. Install Django first (bağımlılık çözüm problemi için)
pip install --no-cache-dir "Django>=5.0,<5.3"

# 4. Install all requirements
echo "⬇️  Installing dependencies..."
pip install -r requirements.txt

# 5. Create .env from .env.example if it doesn't exist
echo "📄 Setting up environment variables..."
if [ -f ".env" ]; then
  echo "ℹ️  .env already exists. Skipping copy."
elif [ -f ".env.example" ]; then
  cp .env.example .env
  echo "✅ .env created from .env.example."
else
  echo "⚠️  .env.example not found. Please create a .env file manually."
fi

# 6. Run database migrations
echo "📄 Applying database migrations..."
python manage.py migrate

# 7. Start development server
echo "🖥️  Starting development server at http://127.0.0.1:8000 ..."
python manage.py runserver
