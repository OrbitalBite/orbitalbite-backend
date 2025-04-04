# OrbitalBite Backend

Backend project of OrbitalBite using Django and Channels. One-liner setup for developers!

## 🚀 Quick Setup

Inside the project folder, run:

```bash
bash setup.sh
```

This script will:
- Create a Python virtual environment
- Upgrade `pip`
- Automatically detect Python version and install the matching Django version
- Install all dependencies from `requirements.txt`
- Copy `.env` from `env.example` if not present
- Run initial database migrations
- Start the development server

## ⚙️ Development Server

After setup, the server runs automatically. To start it manually later:

```bash
source venv/bin/activate
python manage.py runserver
```

## 📂 Environment Variables

This project uses a `.env` file for configuration. If it's missing, the setup script will auto-generate it using the `env.example` file.

---

🛠 For contributors: getting started has never been easier!
