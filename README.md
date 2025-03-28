# OrbitalBite – Backend

This is the backend API of **OrbitalBite**, an online food ordering system designed for restaurants.  
Built with Django and Django REST Framework, it powers the entire data layer and business logic of the application.

---

## 🧐 Tech Stack

- Python 3.10+
- Django 4+ (currently Django 5.1.x)
- Django REST Framework
- SQLite (for development) / PostgreSQL (for production)
- Docker (optional)
- Swagger / OpenAPI (coming soon)

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/orbitalbite/orbitalbite-backend.git
cd orbitalbite-backend
```

### 2. Create a Virtual Environment

```bash
python -m venv venv
source venv/bin/activate
```

> On Windows: `venv\Scripts\activate`

### 3. Install Dependencies

```bash
pip install -r requirements.txt
```

### 4. Set Up the Database

```bash
python manage.py migrate
```

### 5. Create a Superuser

```bash
python manage.py createsuperuser
```

### 6. Run the Server

```bash
python manage.py runserver
```

The API will be available at:  
📍 `http://127.0.0.1:8000/`

---

## 🔐 Admin Panel

After creating a superuser, access the Django admin panel here:  
🛠️ `http://127.0.0.1:8000/admin/`

---

## ⚙️ Environment Variables

Create a `.env` file in the root directory with the following content:

```env
DEBUG=True
SECRET_KEY=your-secret-key
ALLOWED_HOSTS=localhost,127.0.0.1

# Email (local development)
EMAIL_BACKEND=django.core.mail.backends.console.EmailBackend
EMAIL_USE_TLS=True
EMAIL_PORT=587
EMAIL_HOST=smtp.yourprovider.com
EMAIL_HOST_USER=your@email.com
EMAIL_HOST_PASSWORD=yourpassword
```

> ⚠️ **Do NOT commit your `.env` file to Git!**

### 🧪 Quick Setup for New Devs

```bash
cp .env.example .env
```

> `.env.example` dosyasını `.env` olarak kopyalayın ve içerikleri kendi lokal ortamınıza göre güncelleyin.

---

## 🦉 Migrations Info

These files under `menu/migrations/` and `orders/migrations/` define the database schema.  
They **should be committed** to version control so all team members share the same DB structure.

---

## 🔄 Quickstart for Devs (One-liner)

```bash
python -m venv venv && source venv/bin/activate && pip install -r requirements.txt && python manage.py migrate && python manage.py runserver
```

---

## 🧹️ Running Tests (Coming Soon)

```bash
pytest
```

---

## 📦 API Overview

| Endpoint                        | Description                     |
|--------------------------------|---------------------------------|
| `/api/menu-items/`             | Get all menu items              |
| `/api/categories/`             | Get menu categories             |
| `/api/basket/`                 | Get the user's basket           |
| `/api/item-details/<item_id>` | Get details of a specific item  |

> Full Swagger docs coming soon at: `/api/docs/`

---

## 📂 Project Structure

```
orbitalbite-backend/
├── core/                 # Main views & homepage
├── menu/                 # Menu items and categories
├── orders/               # Basket & order logic
├── users/                # (Planned) user-related views
├── migrations/           # Django DB schema history
├── static/               # Static files
├── templates/            # HTML templates
├── db.sqlite3            # Dev database (ignored in production)
├── .env                  # Local config (not versioned)
├── .gitignore
├── requirements.txt
└── manage.py
```

---

## 🤝 Contributing

1. Fork the repository  
2. Create a new branch: `git checkout -b feature/your-feature`  
3. Make your changes and commit: `git commit -m "Add your feature"`  
4. Push to your branch: `git push origin feature/your-feature`  
5. Open a Pull Request

---

## 📄 License

This project is licensed under the Apache License. See the `LICENSE` file for more information.
