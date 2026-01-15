@echo off
echo ========================================
echo Git Durumu Kontrol Ediliyor...
echo ========================================
echo.

REM Git'in yüklü olup olmadığını kontrol et
git --version >nul 2>&1
if errorlevel 1 (
    echo [HATA] Git yüklü değil!
    echo Lütfen önce Git'i yükleyin: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo [OK] Git yüklü
echo.

REM Git repository'sinin başlatılıp başlatılmadığını kontrol et
if not exist .git (
    echo [UYARI] Git repository başlatılmamış!
    echo.
    echo Git repository başlatılıyor...
    git init
    echo [OK] Git repository başlatıldı
    echo.
) else (
    echo [OK] Git repository mevcut
    echo.
)

REM app dizininin git'te olup olmadığını kontrol et
echo app dizini kontrol ediliyor...
git ls-files app >nul 2>&1
if errorlevel 1 (
    echo [HATA] app dizini Git'te takip edilmiyor!
    echo.
    echo app dizinindeki dosyalar:
    dir /b app 2>nul
    echo.
    echo [ÇÖZÜM] app dizinini Git'e ekleyin:
    echo   git add app
    echo   git commit -m "Add app directory"
    echo   git push origin main
    echo.
) else (
    echo [OK] app dizini Git'te takip ediliyor
    echo.
    echo app dizinindeki dosyalar (Git'te):
    git ls-files app | findstr /C:"app"
    echo.
)

REM Tüm değişiklikleri göster
echo ========================================
echo Git Durumu:
echo ========================================
git status --short
echo.

REM Remote kontrolü
echo ========================================
echo Remote Repository:
echo ========================================
git remote -v
echo.

echo ========================================
echo Sonuç:
echo ========================================
echo.
echo Eğer app dizini Git'te yoksa:
echo 1. git add app
echo 2. git commit -m "Add app directory"
echo 3. git push origin main
echo.
echo Eğer remote yoksa:
echo 1. git remote add origin https://github.com/veyseltas07/wolf_stone_site.git
echo 2. git push -u origin main
echo.
pause

