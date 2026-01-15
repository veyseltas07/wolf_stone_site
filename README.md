# Wolf Stone Production

Minimal corporate website built with Next.js, TypeScript, and Tailwind CSS. Multi-language support (EN, TR, RU, DE, ES).

## Features

- **Multi-language**: 5 languages (EN default, TR, RU, DE, ES)
- **Fast & Modern**: Next.js 14 with App Router
- **Responsive**: Mobile-first design with Tailwind CSS
- **Legal Pages**: Privacy Policy and Terms of Use (Turkish law)

## Getting Started

### Prerequisites

- Node.js 18+ 
- npm or yarn

### Installation

1. Install dependencies:
```bash
npm install
```

2. Run the development server:
```bash
npm run dev
```

3. Open [http://localhost:3000](http://localhost:3000) in your browser.

### Build for Production

```bash
npm run build
npm start
```

## Deployment

### Vercel (Recommended)

1. Push your code to GitHub
2. Import project in Vercel
3. Deploy automatically

### Other Platforms

The site can be deployed to any platform that supports Next.js:
- Netlify
- AWS Amplify
- Railway
- Self-hosted with Node.js

## URLs for Google Play Console

After deployment, use these URLs:
- Privacy Policy: `https://yourdomain.com/en/privacy`
- Terms of Use: `https://yourdomain.com/en/terms`

## Project Structure

```
├── app/
│   ├── [locale]/          # Localized routes
│   │   ├── page.tsx       # Home page
│   │   ├── about/
│   │   ├── services/
│   │   ├── contact/
│   │   ├── privacy/
│   │   └── terms/
│   ├── layout.tsx         # Root layout
│   └── globals.css        # Global styles
├── components/
│   ├── Header.tsx         # Navigation header
│   └── Footer.tsx        # Footer
├── locales/              # Translation files
│   ├── en.json
│   ├── tr.json
│   ├── ru.json
│   ├── de.json
│   └── es.json
├── lib/
│   └── i18n.ts           # i18n utilities
└── public/
    └── logo.svg          # Logo file
```

## Language Support

Default language is English (EN). Users can switch languages via the header dropdown. Language preference is saved in localStorage.

Supported languages:
- English (EN) - Default
- Turkish (TR)
- Russian (RU)
- German (DE)
- Spanish (ES)

## License

© Wolf Stone Production
