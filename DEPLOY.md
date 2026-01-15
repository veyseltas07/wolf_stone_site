# Vercel Deploy Talimatları

## A) PROJE TİPİ
✅ **Next.js 14 (App Router)** projesi - Vercel otomatik algılayacak

## B) GITHUB REPO OLUŞTUR + PUSH

### 1. Git Kurulumu (Eğer yoksa)
Windows için Git indir: https://git-scm.com/download/win
Kurulumdan sonra terminali yeniden başlat.

### 2. GitHub'da Repo Oluştur
1. GitHub.com'a git
2. Sağ üstte "+" > "New repository"
3. Repository name: `wolfstone-production-site`
4. Public veya Private seç (fark etmez)
5. "Create repository" tıkla
6. **ÖNEMLİ:** "Initialize this repository with a README" seçme!

### 3. Projeyi Push Et
Terminalde proje klasöründe şu komutları çalıştır:

```bash
# Git başlat (eğer yoksa)
git init

# Tüm dosyaları ekle
git add .

# Commit oluştur
git commit -m "Initial commit: Wolf Stone Production site"

# Branch'i main yap
git branch -M main

# GitHub repo URL'ini ekle (KENDİ USERNAME'İNİ YAZ)
git remote add origin https://github.com/<GITHUB_USERNAME>/wolfstone-production-site.git

# Push et
git push -u origin main
```

**Not:** İlk push'ta GitHub kullanıcı adı ve şifre/token isteyebilir.

## C) VERCEL'DE REPO NEDEN GÖRÜNMÜYOR?

### Çözüm 1: GitHub Bağlantısı
1. Vercel Dashboard > Settings (sağ üst profil)
2. Integrations > GitHub
3. "Connect" veya "Install" tıkla
4. GitHub'da izin ver

### Çözüm 2: Repo Erişim İzni
- GitHub App ayarlarında "All repositories" seç
- Veya sadece "wolfstone-production-site" repo'sunu seç

### Çözüm 3: Doğru Hesap
- Vercel sağ üst profil > doğru hesap mı kontrol et

## D) VERCEL DEPLOY

### Adımlar:
1. Vercel Dashboard > "Add New..." > "Project"
2. "Import Git Repository" bölümünde "wolfstone-production-site" repo'sunu seç
3. **Framework Preset:** Next.js (otomatik algılanır)
4. **Root Directory:** `.` (boş bırak)
5. **Build Command:** `npm run build` (otomatik)
6. **Output Directory:** `.next` (otomatik)
7. **Install Command:** `npm install` (otomatik)
8. "Deploy" butonuna tıkla

### Vercel Otomatik Ayarlar:
- Framework: Next.js
- Build Command: `npm run build`
- Output Directory: `.next`
- Install Command: `npm install`

## E) ROUTE KONTROL

✅ **Hazır!** Projede şu route'lar mevcut:
- `/` → `/en` (default)
- `/en/privacy` → Privacy Policy
- `/en/terms` → Terms of Use
- `/privacy` → `/en/privacy` (redirect - Google Play için)
- `/terms` → `/en/terms` (redirect - Google Play için)

**vercel.json** dosyası ile `/privacy` ve `/terms` otomatik `/en/privacy` ve `/en/terms`'e yönlendirilir.

## F) DEPLOY SONRASI

Deploy tamamlandıktan sonra:
1. Vercel Dashboard'da projeyi aç
2. "Domains" sekmesinden production URL'i al
3. Şu linkler çalışacak:
   - `https://<vercel-domain>/`
   - `https://<vercel-domain>/privacy`
   - `https://<vercel-domain>/terms`
   - `https://<vercel-domain>/en/privacy`
   - `https://<vercel-domain>/en/terms`

## GOOGLE PLAY CONSOLE İÇİN URL'LER

Deploy sonrası şu URL'leri kullan:
- **Privacy Policy:** `https://<vercel-domain>/privacy`
- **Terms of Use:** `https://<vercel-domain>/terms`

Bu URL'ler otomatik olarak İngilizce versiyona yönlendirir.

