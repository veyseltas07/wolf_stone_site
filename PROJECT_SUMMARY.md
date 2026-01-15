# Wolfstone Production - Professional Corporate Website

## ✅ Project Status: READY FOR DEPLOYMENT

### Features Implemented

✅ **Multi-language Support (EN/TR/RU)**
- English (default)
- Turkish
- Russian
- Language switcher in header
- localStorage persistence

✅ **Pages**
1. **Home** - Hero section, services overview, about section, selected works, CTA
2. **About** - Mission, values, approach (anonymous, no personal names)
3. **Services** - Production, Digital, Creative (3 services)
4. **Privacy Policy** - GDPR + Google Play compliant
5. **Terms of Use** - Google Play compliant
6. **Contact** - Email, location, Instagram

✅ **Design**
- Dark theme: Black background (#000), white text (#fff), blue accents (#2DA8FF)
- Minimal and professional
- Fully responsive
- Tailwind CSS

✅ **Contact Details**
- Email: wolfstoneproduction@gmail.com
- Location: Antalya, Turkey
- Instagram: https://instagram.com/wolfstoneproduction

✅ **Legal Pages**
- Privacy Policy: GDPR compliant, suitable for Google Play Console
- Terms of Use: Google Play compliant
- Routes: `/privacy` and `/terms` (redirect to `/en/privacy` and `/en/terms`)

### Technical Stack

- **Framework:** Next.js 14 (App Router)
- **Language:** TypeScript
- **Styling:** Tailwind CSS
- **Deployment:** Vercel-ready (no backend required)

### Project Structure

```
├── app/
│   ├── [locale]/          # Localized routes
│   │   ├── page.tsx       # Home
│   │   ├── about/
│   │   ├── services/
│   │   ├── contact/
│   │   ├── privacy/
│   │   └── terms/
│   ├── privacy/           # Redirect to /en/privacy
│   ├── terms/             # Redirect to /en/terms
│   └── layout.tsx
├── components/
│   ├── Header.tsx         # Navigation + language switcher
│   └── Footer.tsx         # Footer with links + Instagram
├── locales/
│   ├── en.json
│   ├── tr.json
│   └── ru.json
├── lib/
│   └── i18n.ts           # i18n utilities
└── public/
    └── logo.svg
```

### Quick Start

1. **Install dependencies:**
```bash
npm install
```

2. **Run development server:**
```bash
npm run dev
```

3. **Build for production:**
```bash
npm run build
```

4. **Deploy to Vercel:**
- Push to GitHub
- Import in Vercel
- Auto-deploy

### Google Play Console URLs

After deployment, use these URLs:
- **Privacy Policy:** `https://<your-domain>/privacy`
- **Terms of Use:** `https://<your-domain>/terms`

These automatically redirect to English versions (`/en/privacy` and `/en/terms`).

### Brand Name

**Wolfstone Production** (no space between "Wolf" and "stone")

### Services

1. **Production** - Music video production, creative direction, cinematography
2. **Digital** - Web design, digital content, mobile apps
3. **Creative** - Creative direction, visual design, brand identity

### Notes

- All pages are anonymous (no personal names in About page)
- Legal pages are GDPR and Google Play compliant
- Site is fully responsive and optimized
- Ready for Vercel deployment without backend

