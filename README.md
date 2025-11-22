# TEMPO Privacy & Legal Documentation

This directory contains TEMPO's Privacy Policy, Terms of Service, and Account Deletion pages.

## Files

- **index.html** - Privacy Policy
- **terms-of-service.html** - Terms of Service
- **delete-account.html** - Account & Data Deletion Request

## Hosting Options

### Option 1: GitHub Pages (Recommended)

1. Create a new repository: `tempo-privacy`
2. Upload these HTML files
3. Enable GitHub Pages in repository settings
4. URL will be: `https://[username].github.io/tempo-privacy/`

### Option 2: Custom Domain

Host on your own domain (e.g., `https://tempo-nutrition.com/privacy/`)

### Option 3: Firebase Hosting

```bash
# Install Firebase CLI
npm install -g firebase-tools

# Initialize hosting
firebase init hosting

# Deploy
firebase deploy --only hosting
```

## URLs to Update

Once hosted, update these URLs in:

### 1. Google Play Store

**Developer Console > App content > Privacy policy**
- Privacy Policy URL: `[YOUR_HOST]/index.html`

### 2. In-App Links

Update URLs in `lib/config/app_config.dart`:

```dart
static const String privacyPolicyUrl = 'YOUR_PRIVACY_URL';
static const String termsOfServiceUrl = 'YOUR_TERMS_URL';
static const String deleteAccountUrl = 'YOUR_DELETE_ACCOUNT_URL';
```

### 3. AndroidManifest.xml

If needed for app store verification.

## Customization

Before deploying, customize these placeholders:

### Email Addresses

Replace in all files:
- `privacy@tempo-nutrition.com` → Your privacy email
- `support@tempo-nutrition.com` → Your support email
- `legal@tempo-nutrition.com` → Your legal email

### Legal Jurisdiction

In `terms-of-service.html`, section 15.1:
- `[Your Jurisdiction]` → e.g., "Spain" or "California, USA"

### Company Information

If you have a registered company, add:
- Company name
- Registered address
- VAT/Tax ID (if applicable)

## AdMob Compliance

**Important**: The Privacy Policy includes AdMob disclosures required by Google:

- Section 5.2: AdMob data collection
- Section 11: Advertising & cookies
- Data sharing with Google for ads

This is **required** for AdMob approval.

## GDPR & CCPA Compliance

Both policies include:

✅ Right to access data
✅ Right to delete data (account deletion)
✅ Right to export data (data portability)
✅ Opt-out options (analytics, ads, cloud sync)
✅ Data retention policies
✅ Third-party service disclosures

## Testing

Before going live:

1. **Read thoroughly** - Make sure all information is accurate
2. **Update email addresses** - Replace example emails with real ones
3. **Test all links** - Ensure internal links work
4. **Mobile responsive** - Test on mobile devices
5. **Legal review** - Have a lawyer review if possible

## Differences from RITMO

TEMPO's policies include additional sections for:

- AdMob advertising (RITMO doesn't have ads)
- Health/nutrition data (more sensitive than habit data)
- Gemini AI food recognition
- RevenueCat subscriptions
- Nutrition APIs (Edamam, OpenFoodFacts)

## Support

For questions about privacy policies:
- See original RITMO policies: https://github.com/NoSFeR88/ritmo-privacy
- Contact: privacy@tempo-nutrition.com (once set up)

## License

These policies are specific to TEMPO and should not be copied for other apps without modification.

---

**Last Updated**: November 22, 2025
**Version**: 1.0.0
