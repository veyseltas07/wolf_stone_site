# Vercel Build Hatası Çözümü

## Hata Mesajı
```
Hata: > `pages` veya `app` dizini bulunamadı. 
Lütfen proje kök dizini altında bir tane oluşturun.
```

## Çözüm Adımları

### 1. GitHub'a Dosyaları Push Edin

**ÖNEMLİ**: Vercel, GitHub repository'nizden dosyaları çeker. Eğer `app` dizini GitHub'a push edilmemişse, Vercel onu bulamaz.

```bash
# Git repository başlat (eğer yoksa)
git init

# Tüm dosyaları ekle
git add .

# Commit oluştur
git commit -m "Fix: Add all files including app directory"

# GitHub'a push et
git remote add origin https://github.com/veyseltas07/wolf_stone_site.git
git branch -M main
git push -u origin main
```

**VEYA** `GITHUB_PUSH.bat` dosyasını çalıştırın.

### 2. Vercel'de Root Directory Ayarlarını Kontrol Edin

**ÖNEMLİ**: `rootDirectory` ayarı `vercel.json` dosyasında DEĞİL, Vercel Dashboard'da yapılmalıdır.

1. Vercel Dashboard'a gidin: https://vercel.com
2. Projenizi seçin
3. **Settings** sekmesine gidin
4. **General** bölümünde **Root Directory** ayarını kontrol edin
5. **Root Directory** boş bırakılmalı (proje kök dizini)
6. **Build and Output Settings** bölümünde:
   - **Framework Preset**: Next.js
   - **Build Command**: `npm run build` (otomatik)
   - **Output Directory**: `.next` (otomatik)
   - **Install Command**: `npm install` (otomatik)

### 3. Vercel'de Yeniden Deploy Edin

1. Vercel Dashboard'da projenizi açın
2. **Deployments** sekmesine gidin
3. En son deployment'ın yanındaki **⋯** (üç nokta) menüsüne tıklayın
4. **Redeploy** seçin
5. Veya GitHub'da yeni bir commit yapın (otomatik deploy tetiklenir)

### 4. Build Loglarını Kontrol Edin

1. Vercel Dashboard'da deployment'ı açın
2. **Build Logs** sekmesine gidin
3. Hata mesajlarını kontrol edin
4. `app` dizininin görünüp görünmediğini kontrol edin

## Olası Sorunlar ve Çözümleri

### Sorun 1: `app` Dizini GitHub'da Yok

**Kontrol**: https://github.com/veyseltas07/wolf_stone_site/tree/main/app

**Çözüm**: 
- Tüm dosyaları GitHub'a push edin
- `.gitignore` dosyasının `app` dizinini ignore etmediğinden emin olun

### Sorun 2: Vercel Yanlış Root Directory'de Arıyor

**Çözüm**: 
- Vercel Dashboard → Settings → General → **Root Directory** boş bırakın
- **NOT**: `rootDirectory` ayarı `vercel.json` dosyasında DEĞİL, Vercel Dashboard'da yapılmalıdır

### Sorun 3: Dosyalar Push Edilmiş Ama Hala Hata Alıyorsunuz

**Çözüm**:
1. Vercel'de projeyi silin
2. GitHub repository'sini tekrar import edin
3. Bu sefer tüm dosyalar mevcut olacak

### Sorun 4: `.gitignore` `app` Dizinini Ignore Ediyor

**Kontrol**: `.gitignore` dosyasını açın ve `app` kelimesinin geçip geçmediğine bakın.

**Çözüm**: Eğer `app` ignore ediliyorsa, `.gitignore` dosyasından kaldırın.

## Doğrulama Adımları

### 1. GitHub'da Kontrol
https://github.com/veyseltas07/wolf_stone_site adresinde:
- ✅ `app` dizini görünüyor mu?
- ✅ `app/layout.tsx` dosyası var mı?
- ✅ `app/[locale]/page.tsx` dosyası var mı?
- ✅ `package.json` dosyası var mı?
- ✅ `next.config.js` dosyası var mı?

### 2. Vercel'de Kontrol
- ✅ Root Directory boş veya `.`
- ✅ Framework Preset: Next.js
- ✅ Build Command: `npm run build`
- ✅ Output Directory: `.next`

### 3. Build Loglarında Kontrol
Vercel build loglarında şunları görmelisiniz:
```
> next build
...
Creating an optimized production build...
...
✓ Compiled successfully
```

## Hızlı Çözüm (Önerilen)

1. **GitHub'a tüm dosyaları push edin**:
   ```bash
   git add .
   git commit -m "Fix: Ensure app directory is included"
   git push origin main
   ```

2. **Vercel'de projeyi yeniden deploy edin**:
   - Vercel Dashboard → Projeniz → Deployments → En son deployment → Redeploy

3. **Veya Vercel'de projeyi silip yeniden import edin**:
   - Vercel Dashboard → Projeniz → Settings → Danger Zone → Delete Project
   - Sonra tekrar "Add New Project" → Repository seçin → Deploy

## Güncellenen Dosyalar

✅ `vercel.json` - `rootDirectory` özelliği kaldırıldı (Vercel Dashboard'da ayarlanmalı)

**NOT**: `rootDirectory` ayarı `vercel.json` dosyasında desteklenmiyor. Bu ayar Vercel Dashboard → Settings → General bölümünden yapılmalıdır.

