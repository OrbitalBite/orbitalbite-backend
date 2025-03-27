
# OrbitalBite – Backend

This is the backend API of **OrbitalBite**, an online food ordering system designed for restaurants. Built with Django and Django REST Framework, it powers the entire data layer and business logic of the application.

---

## Tech Stack

- Python 3.10+
- Django 4+
- Django REST Framework
- SQLite (for development) / PostgreSQL (for production)
- Docker (optional)
- Swagger / OpenAPI (coming soon)

---

## Getting Started

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
 `http://127.0.0.1:8000/`

---

## API Overview

| Endpoint                       | Description                     |
|-------------------------------|---------------------------------|
| `/api/menu-items/`            | Get all menu items              |
| `/api/categories/`            | Get menu categories             |
| `/api/basket/`                | Get the user's basket           |
| `/api/item-details/<item_id>` | Get details of a specific item  |

> Full Swagger docs will be available soon at `/api/docs/`

---

## Running Tests (Coming Soon)

```bash
pytest
```

---

## Project Structure

```
orbitalbite-backend/
├── apps/               # Modular Django apps (menu, basket, etc.)
├── config/             # Settings, URLs, WSGI
├── db.sqlite3          # Development database
├── requirements.txt
└── manage.py
```

---

## Contributing

1. Fork the repository  
2. Create a new branch: `git checkout -b feature/your-feature`  
3. Make your changes and commit: `git commit -m "Add your feature"`  
4. Push to your branch: `git push origin feature/your-feature`  
5. Open a Pull Request

---

## License

This project is licensed under the Apache License. See the `LICENSE` file for more information.
