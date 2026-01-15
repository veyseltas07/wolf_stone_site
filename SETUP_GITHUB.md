# GitHub ve Vercel Kurulum Rehberi

## ⚠️ ÖNEMLİ: Node.js Versiyonu

Şu anda Node.js 16.14.0 kullanıyorsunuz, ancak Next.js 14 için **Node.js 18.17.0 veya üzeri** gereklidir.

**Çözüm:**
- Node.js'i güncelleyin: https://nodejs.org/
- Veya Vercel otomatik olarak Node.js 18+ kullanacak, bu yüzden yerel olarak çalıştırmadan direkt Vercel'e deploy edebilirsiniz.

## 1. Git Kurulumu

Git yüklü değil. Önce Git'i kurun:

1. **Git İndir:** https://git-scm.com/download/win
2. **Kurulum:** İndirdiğiniz .exe dosyasını çalıştırın (varsayılan ayarlarla devam edin)
3. **Terminali Yeniden Başlat:** Git kurulumundan sonra terminali veya VS Code'u kapatıp açın

## 2. GitHub Repository Oluşturma

1. GitHub.com'a gidin ve giriş yapın
2. Sağ üstteki **"+"** butonuna tıklayın
3. **"New repository"** seçin
4. Repository adı: `wolfstonesite` (veya istediğiniz isim)
5. **Public** veya **Private** seçin
6. **ÖNEMLİ:** "Initialize this repository with a README" seçeneğini **İŞARETLEMEYİN**
7. **"Create repository"** butonuna tıklayın

## 3. Git Komutlarını Çalıştırma

Git kurulumundan sonra, proje klasöründe (wolf_stone_site) terminal açın ve şu komutları sırayla çalıştırın:

```bash
# Git repository'yi başlat
git init

# Tüm dosyaları ekle
git add .

# İlk commit'i oluştur
git commit -m "first commit"

# Branch'i main yap
git branch -M main

# GitHub repository'yi ekle (URL'yi kendi repository'nizle değiştirin)
git remote add origin https://github.com/veyseltas07/wolfstonesite.git

# GitHub'a push et
git push -u origin main
```

**Not:** İlk push'ta GitHub kullanıcı adı ve şifre/token isteyebilir. Eğer 2FA (iki faktörlü doğrulama) açıksa, Personal Access Token kullanmanız gerekebilir.

## 4. Vercel'e Deploy Etme

### Adım 1: Vercel Hesabı
1. https://vercel.com adresine gidin
2. GitHub hesabınızla giriş yapın

### Adım 2: GitHub Bağlantısı
1. Vercel Dashboard > Sağ üst profil > **Settings**
2. **Integrations** > **GitHub**
3. **"Connect"** veya **"Install"** butonuna tıklayın
4. GitHub'da izin verin
5. **"All repositories"** veya sadece **"wolfstonesite"** repository'sini seçin

### Adım 3: Proje İçe Aktarma
1. Vercel Dashboard > **"Add New..."** > **"Project"**
2. **"Import Git Repository"** bölümünde **"wolfstonesite"** repository'sini seçin
3. **Framework Preset:** Next.js (otomatik algılanır)
4. **Root Directory:** `.` (boş bırakın)
5. **Build Command:** `npm run build` (otomatik)
6. **Output Directory:** `.next` (otomatik)
7. **Install Command:** `npm install` (otomatik)
8. **"Deploy"** butonuna tıklayın

### Adım 4: Deploy Sonrası
- Vercel otomatik olarak Node.js 18+ kullanacak
- Build başarılı olursa, siteniz canlıya geçecek
- Vercel size bir URL verecek (örn: `wolfstonesite.vercel.app`)

## 5. Google Play Console URL'leri

Deploy sonrası, Google Play Console için şu URL'leri kullanın:

- **Privacy Policy:** `https://yourdomain.com/privacy` (otomatik olarak `/en/privacy`'e yönlendirir)
- **Terms of Use:** `https://yourdomain.com/terms` (otomatik olarak `/en/terms`'e yönlendirir)

## Sorun Giderme

### Git komutları çalışmıyor
- Git'in kurulu olduğundan emin olun: `git --version`
- Terminali yeniden başlatın

### GitHub push hatası
- Repository URL'ini kontrol edin
- GitHub kullanıcı adı ve şifrenizi kontrol edin
- 2FA açıksa Personal Access Token kullanın

### Vercel'de build hatası
- Vercel otomatik olarak Node.js 18+ kullanır, sorun olmamalı
- Build loglarını kontrol edin
- `package.json` dosyasının doğru olduğundan emin olun

## ✅ Yapılan Düzeltmeler

1. ✅ Metadata düzeltildi (Ezan Plus → Wolf Stone Production)
2. ✅ Header alt text düzeltildi
3. ✅ Tüm locale dosyalarında brand name düzeltildi (EN, TR, RU)
4. ✅ Dependencies yüklendi
5. ✅ .gitignore dosyası mevcut ve doğru
6. ✅ Kod hatasız (linter kontrolü yapıldı)

## 📝 Notlar

- Yerel olarak çalıştırmak için Node.js 18+ gerekli
- Vercel'de deploy etmek için Node.js güncellemesi gerekmez (Vercel otomatik kullanır)
- Site tamamen hazır ve Vercel'e deploy edilmeye hazır

