@echo off
echo ========================================
echo GitHub'a Push Etme Scripti
echo ========================================
echo.

REM Git'in kurulu olup olmadigini kontrol et
git --version >nul 2>&1
if errorlevel 1 (
    echo [HATA] Git kurulu degil!
    echo Lutfen once Git'i kurun: https://git-scm.com/download/win
    echo Kurulumdan sonra bu scripti tekrar calistirin.
    pause
    exit /b 1
)

echo [OK] Git kurulu
echo.

REM Git repository'yi baslat
echo [1/5] Git repository baslatiliyor...
git init
if errorlevel 1 (
    echo [HATA] git init basarisiz!
    pause
    exit /b 1
)

REM Tum dosyalari ekle
echo [2/5] Dosyalar ekleniyor...
git add .
if errorlevel 1 (
    echo [HATA] git add basarisiz!
    pause
    exit /b 1
)

REM Commit olustur
echo [3/5] Commit olusturuluyor...
git commit -m "first commit"
if errorlevel 1 (
    echo [HATA] git commit basarisiz!
    pause
    exit /b 1
)

REM Branch'i main yap
echo [4/5] Branch main'e cevriliyor...
git branch -M main
if errorlevel 1 (
    echo [HATA] git branch basarisiz!
    pause
    exit /b 1
)

REM Remote ekle
echo [5/5] GitHub repository ekleniyor...
echo.
echo NOT: Eger remote zaten ekliyse, bu adim atlanacak.
git remote add origin https://github.com/veyseltas07/wolfstonesite.git 2>nul
if errorlevel 1 (
    echo [BILGI] Remote zaten ekli veya farkli bir URL kullaniliyor.
)

echo.
echo ========================================
echo GitHub'a push ediliyor...
echo ========================================
echo.
echo NOT: GitHub kullanici adi ve sifre/token istenebilir.
echo.

git push -u origin main

if errorlevel 1 (
    echo.
    echo [HATA] Push basarisiz!
    echo.
    echo Olası nedenler:
    echo 1. GitHub kullanici adi/sifre yanlis
    echo 2. Repository URL'i yanlis
    echo 3. Repository henuz olusturulmadi
    echo 4. 2FA aciksa Personal Access Token gerekli
    echo.
    pause
    exit /b 1
) else (
    echo.
    echo ========================================
    echo [BASARILI] Kodlar GitHub'a push edildi!
    echo ========================================
    echo.
    echo Simdi Vercel'e gidip projeyi import edebilirsiniz.
    echo Detaylar icin SETUP_GITHUB.md dosyasina bakin.
    echo.
)

pause

