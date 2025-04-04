#!/bin/bash

echo "🚀 Starting OrbitalBite backend setup..."

# Check if .env.example exists
if [ ! -f ".env.example" ]; then
    echo "⚠️  .env.example not found. Please create one first."
    exit 1
fi

# Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv venv
source venv/bin/activate

# Copy environment variables
echo "⚙️  Setting up environment..."
cp .env.example .env

# Install dependencies
echo "⬇️  Installing dependencies..."
pip install -r requirements.txt

# Apply migrations
echo "📄 Applying database migrations..."
python manage.py migrate

# Run the server
echo "🖥️  Starting development server at http://127.0.0.1:8000 ..."
python manage.py runserver
