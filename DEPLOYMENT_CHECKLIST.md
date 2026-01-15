# Deployment Checklist - Wolf Stone Production

## ✅ Pre-Deployment Checklist

### 1. Code Quality
- [x] All TypeScript files compile without errors
- [x] No linter errors
- [x] All dependencies are listed in `package.json`
- [x] `.gitignore` is properly configured

### 2. Configuration Files
- [x] `package.json` has correct scripts and dependencies
- [x] `next.config.js` is properly configured
- [x] `tsconfig.json` is properly configured
- [x] `vercel.json` is created (for Vercel deployment)
- [x] `.github/workflows/deploy.yml` is created (for CI/CD)

### 3. Build Verification
- [ ] **IMPORTANT**: Build must succeed on deployment platform
- [ ] Node.js version: 18+ (Vercel/GitHub will use this automatically)
- [ ] All pages render correctly
- [ ] No missing imports or broken links

## 🚀 Deployment Steps

### Option 1: Vercel Deployment (Recommended)

1. **Push to GitHub**
   ```bash
   git add .
   git commit -m "Ready for deployment"
   git push origin main
   ```

2. **Connect to Vercel**
   - Go to https://vercel.com
   - Sign in with GitHub
   - Click "Add New Project"
   - Select your repository
   - Vercel will auto-detect Next.js
   - Click "Deploy"

3. **Verify Deployment**
   - Check build logs for errors
   - Visit the provided URL
   - Test all routes:
     - `/` (should redirect to `/tr`)
     - `/en`, `/tr`, `/ru`
     - `/privacy` (should redirect to `/en/privacy`)
     - `/terms` (should redirect to `/en/terms`)

### Option 2: GitHub Pages (Static Export)

If you need GitHub Pages, you'll need to:
1. Configure Next.js for static export in `next.config.js`
2. Add `output: 'export'` to next.config.js
3. Use GitHub Actions to build and deploy

**Note**: Next.js App Router with dynamic routes may not work well with static export. Vercel is recommended.

## 🔍 Common Deployment Issues & Solutions

### Issue 1: Build Fails - "Node.js version too old"
**Solution**: Vercel automatically uses Node.js 18+. If building locally, upgrade Node.js to 18+.

### Issue 2: Build Fails - "Module not found"
**Solution**: 
- Run `npm install` to ensure all dependencies are installed
- Check `package.json` has all required dependencies
- Delete `node_modules` and `package-lock.json`, then run `npm install` again

### Issue 3: Build Fails - "TypeScript errors"
**Solution**:
- Run `npm run lint` to see all errors
- Fix TypeScript errors before deploying
- Check `tsconfig.json` configuration

### Issue 4: Routes Not Working
**Solution**:
- Verify `next.config.js` rewrites are correct
- Check that all page files exist in `app/[locale]/` directory
- Ensure `generateStaticParams` is exported from layout

### Issue 5: "404 Not Found" on Deployed Site
**Solution**:
- Check that all routes are properly exported
- Verify `generateStaticParams` function exists
- Check Vercel build logs for warnings

## 📋 Files Created/Updated for Deployment

1. ✅ `vercel.json` - Vercel deployment configuration
2. ✅ `.github/workflows/deploy.yml` - CI/CD workflow for testing builds
3. ✅ `DEPLOYMENT_CHECKLIST.md` - This file

## 🎯 Next Steps

1. **Push all changes to GitHub**
   ```bash
   git add .
   git commit -m "Add deployment configuration files"
   git push origin main
   ```

2. **Deploy to Vercel**
   - Follow Option 1 steps above
   - Monitor build logs
   - Fix any errors that appear

3. **Test the deployed site**
   - Check all pages load correctly
   - Test language switching
   - Verify redirects work (`/privacy` → `/en/privacy`)

4. **Update Google Play Console URLs**
   - Privacy Policy: `https://your-domain.vercel.app/privacy`
   - Terms of Use: `https://your-domain.vercel.app/terms`

## ⚠️ Important Notes

- **Node.js Version**: Your local Node.js is 16.14.0, but Next.js 14 requires 18+. This won't affect Vercel deployment (Vercel uses Node.js 18+ automatically), but you'll need to upgrade locally to test builds.

- **Content Updates**: Some pages still reference "Ezan Plus" instead of "Wolf Stone Production". Consider updating:
  - `app/[locale]/apps/page.tsx`
  - `app/[locale]/contact/page.tsx`
  - `app/[locale]/privacy/page.tsx`
  - `app/[locale]/terms/page.tsx`

- **Build Command**: Vercel will automatically use `npm run build`. The `vercel.json` file ensures this is explicit.

## 🆘 Getting Help

If deployment still fails:
1. Check Vercel build logs for specific error messages
2. Verify all files are committed and pushed to GitHub
3. Ensure repository is connected to Vercel
4. Check that Vercel has access to your GitHub repository

