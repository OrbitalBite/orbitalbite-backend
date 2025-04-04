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
if ! pip install -r requirements.txt; then
    echo "❌ Failed to install dependencies. Trying to install Django manually..."
    pip install "Django>=5.1,<5.2"
fi

# Step 5: Check for .env file
if [ ! -f ".env" ]; then
  echo "⚠️  .env file not found. Please create one manually."
else
  echo "📄 .env file already present."
fi

# Step 6: Run migrations
echo "📄 Applying database migrations..."
python manage.py migrate

# Step 7: Run server
echo "🖥️  Starting development server at http://127.0.0.1:8000 ..."
python manage.py runserver
