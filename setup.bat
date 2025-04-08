@echo off
echo 🚀 OrbitalBite Backend Kurulumu Başlatılıyor...

:: 1. Python var mı kontrol et
where python >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ Python sisteminizde bulunamadı. Lütfen Python 3.10+ kurun ve tekrar deneyin.
    pause
    exit /b
)

:: 2. Sanal ortam oluştur
echo 📦 Sanal ortam oluşturuluyor...
python -m venv venv

:: 3. Sanal ortamı aktive et
call venv\Scripts\activate

:: 4. pip güncelle
echo ⬆️ pip güncelleniyor...
python -m pip install --upgrade pip

:: 5. Django yükle
echo 🧱 Django yükleniyor...
python -m pip install --no-cache-dir "Django>=5.0,<5.3"

:: 6. requirements.txt bağımlılıklarını yükle
echo 📦 Gerekli bağımlılıklar yükleniyor...
python -m pip install -r requirements.txt

:: 7. .env dosyasını oluştur
echo 📄 .env yapılandırması kontrol ediliyor...
IF EXIST .env (
    echo ℹ️ .env zaten mevcut. Atlanıyor...
) ELSE IF EXIST .env.example (
    copy .env.example .env
    echo ✅ .env dosyası oluşturuldu.
) ELSE (
    echo ⚠️ .env.example bulunamadı. Lütfen .env dosyasını elle oluşturun.
)

:: 8. Migrasyonları çalıştır
echo 🔄 Veritabanı migrasyonları uygulanıyor...
python manage.py migrate

:: 9. Sunucuyu başlat
echo 🖥️ Geliştirme sunucusu başlatılıyor: http://127.0.0.1:8000
python manage.py runserver

pause