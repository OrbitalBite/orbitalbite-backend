#!/bin/bash

echo "🚀 Starting OrbitalBite backend setup..."

# Step 1: Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv venv

# Step 2: Activate virtual environment
source venv/bin/activate

# Step 3: Upgrade pip
echo "⬆️  Upgrading pip..."
python -m pip install --upgrade pip

# Step 4: Install requirements
echo "⬇️  Installing dependencies..."
pip install -r requirements.txt || {
  echo "❌ Failed to install dependencies. Trying to install Django manually..."
  pip install "Django>=5.1,<5.2"
}

# Step 5: Ensure .env file exists
if [ ! -f ".env" ]; then
  if [ -f ".env.example" ]; then
    echo "📄 Copying .env.example to .env..."
    cp .env.example .env
  else
    echo "⚠️  .env.example not found. Please create a .env file manually."
  fi
else
  echo "📄 .env file already present."
fi

# Step 6: Apply migrations
echo "📄 Applying database migrations..."
python manage.py migrate

# Step 7: Run server
echo "🖥️  Starting development server at http://127.0.0.1:8000 ..."
python manage.py runserver
