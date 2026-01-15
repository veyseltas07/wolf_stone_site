@echo off
REM GitHub'a push için gerekli komutlar
REM Bu dosyayı çalıştırmadan önce Git'in yüklü olduğundan emin olun

echo ========================================
echo GitHub'a Push İşlemi Başlatılıyor...
echo ========================================
echo.

REM Git'in yüklü olup olmadığını kontrol et
git --version >nul 2>&1
if errorlevel 1 (
    echo [HATA] Git yüklü değil!
    echo.
    echo Lütfen önce Git'i yükleyin:
    echo https://git-scm.com/download/win
    echo.
    echo Kurulumdan sonra terminali yeniden başlatın ve tekrar deneyin.
    pause
    exit /b 1
)

echo [OK] Git yüklü
echo.

REM Git repository'sinin başlatılıp başlatılmadığını kontrol et
if not exist .git (
    echo Git repository başlatılıyor...
    git init
    echo [OK] Git repository başlatıldı
    echo.
) else (
    echo [OK] Git repository zaten başlatılmış
    echo.
)

REM Remote'un eklenip eklenmediğini kontrol et
git remote get-url origin >nul 2>&1
if errorlevel 1 (
    echo Remote repository ekleniyor...
    git remote add origin https://github.com/veyseltas07/wolf_stone_site.git
    echo [OK] Remote repository eklendi
    echo.
) else (
    echo [OK] Remote repository zaten ekli
    REM Mevcut remote'u güncelle
    git remote set-url origin https://github.com/veyseltas07/wolf_stone_site.git
    echo [OK] Remote URL güncellendi
    echo.
)

REM Tüm dosyaları ekle
echo Dosyalar ekleniyor...
git add .
echo [OK] Dosyalar eklendi
echo.

REM Commit oluştur
echo Commit oluşturuluyor...
git commit -m "Initial commit: Wolf Stone Production site with deployment configuration"
if errorlevel 1 (
    echo [UYARI] Commit oluşturulamadı - muhtemelen değişiklik yok
    echo.
) else (
    echo [OK] Commit oluşturuldu
    echo.
)

REM Branch'i main yap
echo Branch main olarak ayarlanıyor...
git branch -M main
echo [OK] Branch main olarak ayarlandı
echo.

REM GitHub'a push et
echo GitHub'a push ediliyor...
echo.
echo NOT: İlk push'ta GitHub kullanıcı adı ve şifre/token istenebilir.
echo Eğer 2FA (iki faktörlü doğrulama) açıksa, Personal Access Token kullanmanız gerekebilir.
echo.
git push -u origin main

if errorlevel 1 (
    echo.
    echo [HATA] Push başarısız oldu!
    echo.
    echo Olası nedenler:
    echo 1. GitHub kullanıcı adı/şifre yanlış
    echo 2. 2FA açıksa Personal Access Token gerekli
    echo 3. Repository'ye erişim izni yok
    echo.
    echo Personal Access Token oluşturmak için:
    echo https://github.com/settings/tokens
    echo.
    pause
    exit /b 1
) else (
    echo.
    echo ========================================
    echo [BAŞARILI] Kod GitHub'a push edildi!
    echo ========================================
    echo.
    echo Şimdi Vercel'de deploy edebilirsiniz:
    echo 1. https://vercel.com adresine gidin
    echo 2. GitHub ile giriş yapın
    echo 3. "Add New Project" tıklayın
    echo 4. "wolf_stone_site" repository'sini seçin
    echo 5. "Deploy" butonuna tıklayın
    echo.
    pause
)

