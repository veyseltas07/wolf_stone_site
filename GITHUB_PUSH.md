# GitHub'a Push Rehberi

## Önkoşul: Git Kurulumu

Eğer Git yüklü değilse:
1. Git'i indirin: https://git-scm.com/download/win
2. Kurulumu tamamlayın (varsayılan ayarlarla devam edebilirsiniz)
3. **Terminali veya VS Code'u kapatıp yeniden açın**

## Hızlı Yöntem: Batch Dosyası

1. `GITHUB_PUSH.bat` dosyasına çift tıklayın
2. Komutlar otomatik olarak çalışacak
3. İlk push'ta GitHub kullanıcı adı ve şifre/token istenebilir

## Manuel Yöntem: Komut Satırı

### Adım 1: Git Repository Başlat (Eğer yoksa)
```bash
git init
```

### Adım 2: Remote Repository Ekle
```bash
git remote add origin https://github.com/veyseltas07/wolf_stone_site.git
```

Eğer remote zaten ekliyse ve güncellemek istiyorsanız:
```bash
git remote set-url origin https://github.com/veyseltas07/wolf_stone_site.git
```

### Adım 3: Tüm Dosyaları Ekle
```bash
git add .
```

### Adım 4: Commit Oluştur
```bash
git commit -m "Initial commit: Wolf Stone Production site with deployment configuration"
```

### Adım 5: Branch'i Main Yap
```bash
git branch -M main
```

### Adım 6: GitHub'a Push Et
```bash
git push -u origin main
```

## İlk Push'ta Karşılaşabileceğiniz Durumlar

### Durum 1: Kullanıcı Adı ve Şifre İstenir
- GitHub kullanıcı adınızı girin
- Şifrenizi girin (veya Personal Access Token)

### Durum 2: 2FA (İki Faktörlü Doğrulama) Açıksa
2FA açıksa şifre yerine **Personal Access Token** kullanmanız gerekir:

1. GitHub'a giriş yapın
2. Sağ üst profil > **Settings**
3. Sol menüden **Developer settings**
4. **Personal access tokens** > **Tokens (classic)**
5. **Generate new token (classic)**
6. İsim verin (örn: "wolf_stone_site")
7. **repo** iznini seçin
8. **Generate token** tıklayın
9. Token'ı kopyalayın (bir daha gösterilmeyecek!)
10. Push sırasında şifre yerine bu token'ı kullanın

### Durum 3: "Permission Denied" Hatası
- Repository'nin size ait olduğundan emin olun
- GitHub'da repository'nin var olduğunu kontrol edin
- Repository URL'ini kontrol edin

## Push Sonrası

Push başarılı olduktan sonra:

1. **GitHub'da kontrol edin**: https://github.com/veyseltas07/wolf_stone_site
2. **Vercel'de deploy edin**:
   - https://vercel.com adresine gidin
   - GitHub ile giriş yapın
   - "Add New Project" tıklayın
   - "wolf_stone_site" repository'sini seçin
   - "Deploy" butonuna tıklayın

## Sorun Giderme

### "git: command not found"
**Çözüm**: Git yüklü değil. Yukarıdaki kurulum adımlarını takip edin.

### "fatal: not a git repository"
**Çözüm**: `git init` komutunu çalıştırın.

### "fatal: remote origin already exists"
**Çözüm**: Remote zaten ekli. Güncellemek için:
```bash
git remote set-url origin https://github.com/veyseltas07/wolf_stone_site.git
```

### "error: failed to push some refs"
**Çözüm**: 
- GitHub'da repository'nin var olduğundan emin olun
- `git pull origin main --allow-unrelated-histories` komutunu çalıştırın
- Sonra tekrar `git push -u origin main` deneyin

### "Authentication failed"
**Çözüm**:
- Kullanıcı adı ve şifrenizi kontrol edin
- 2FA açıksa Personal Access Token kullanın
- Token'ın **repo** iznine sahip olduğundan emin olun

