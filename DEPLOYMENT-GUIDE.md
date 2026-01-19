# 🚀 Quick Deployment Guide - Purrify Resource Center

## Fastest Way to Share with Partners (5 minutes)

### Option 1: Netlify Drop (RECOMMENDED - 100% Free)

**No coding required. Drag & drop.**

1. **Go to**: https://app.netlify.com/drop
2. **Drag the entire folder**: `purrify-retail-training`
3. **Done!** You get an instant URL like: `https://quirky-pasteur-a1b2c3.netlify.app`

**Customize the URL** (optional):
- Click "Site settings" → "Change site name"
- Rename to: `purrify-resources`
- New URL: `https://purrify-resources.netlify.app`

**Add password protection**:
- Site settings → Access control → Visitor access → Password protection
- Set password (e.g., `Purrify2026`)
- Share URL + password with partners

**Benefits:**
- ✅ Free forever
- ✅ Instant HTTPS
- ✅ Password protection available
- ✅ Custom domain support
- ✅ Auto-updates if you drag new version

---

### Option 2: Google Drive Share (No Web Hosting)

**Best if partners want to download and view offline**

1. Go to Google Drive
2. Upload the entire `purrify-retail-training` folder
3. Right-click → Share → "Anyone with the link"
4. Copy link and share with partners

Partners:
- Download the folder
- Open `resource-center/index.html` in their browser
- Works 100% offline

---

### Option 3: GitHub Pages (Free, Professional)

**If you have a GitHub account**

```bash
cd ~/purrify-retail-training
git init
git add .
git commit -m "Initial resource center"
git branch -M main
git remote add origin https://github.com/YOUR-USERNAME/purrify-resources.git
git push -u origin main
```

Then on GitHub:
- Settings → Pages
- Source: main branch
- Save

URL: `https://YOUR-USERNAME.github.io/purrify-resources/resource-center/`

---

### Option 4: Your Own Website

**If you have a website/hosting**

Upload via FTP or cPanel:
1. Connect to your server
2. Upload `purrify-retail-training` folder to `public_html`
3. Access at: `https://yourwebsite.com/purrify-retail-training/resource-center/`

---

## 🔐 Password Protection Options

### Simple Client-Side (Good enough for most cases)

Add to `resource-center/index.html` before `</body>`:

```html
<script>
if (!sessionStorage.getItem('auth')) {
    const pass = prompt('Partner Password:');
    if (pass === 'Purrify2026') {
        sessionStorage.setItem('auth', 'true');
    } else {
        alert('Access denied');
        window.location = 'https://purrify.ca';
    }
}
</script>
```

Change `Purrify2026` to your password.

---

### Strong Server-Side (Most secure)

**For Netlify:**
1. Site Settings → Access Control
2. Enable "Visitor access: Password"
3. Set password
4. Done!

**For Your Server (.htaccess):**

Create `.htaccess` file:
```apache
AuthType Basic
AuthName "Partner Access"
AuthUserFile /path/to/.htpasswd
Require valid-user
```

Create `.htpasswd`:
```bash
htpasswd -c .htpasswd partner
# Enter password when prompted
```

---

## 📧 Sharing with Partners

### Email Template

```
Subject: Access Your Purrify Partner Resources

Hi [Partner Name],

We've created a dedicated resource center just for you!

🔗 Access here: [YOUR-URL]
🔑 Password: [YOUR-PASSWORD]

What's inside:
✅ Training materials in English, French & Spanish
✅ Profit calculators & margin guides
✅ POS display recommendations
✅ Customer FAQ handouts
✅ Seasonal promotional materials

Everything you need to maximize Purrify sales!

Questions? Reply to this email or call 1-800-PURRIFY.

Best regards,
The Purrify Team
```

---

## 📊 Track Partner Usage (Optional)

### Google Analytics (Free)

1. Go to https://analytics.google.com
2. Create account/property
3. Copy your tracking ID (looks like: `G-XXXXXXXXXX`)
4. Add to `resource-center/index.html` before `</head>`:

```html
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

You'll see:
- How many partners visit
- Which resources they download
- Which languages they prefer

---

## 🔄 Updating Resources

When you add new materials:

1. Add resource card to appropriate section in `index.html`
2. If using Netlify: Drag updated folder to Netlify Drop
3. If using GitHub Pages: `git add . && git commit -m "Update" && git push`
4. If using your server: Re-upload via FTP

Partners will see updates immediately!

---

## ✅ Final Checklist

Before sharing:

- [ ] Test all download links work
- [ ] Try search and filters
- [ ] Test on mobile device
- [ ] Add password protection
- [ ] Customize contact info if needed
- [ ] Test with a partner first

---

## 🆘 Troubleshooting

**Links don't work:**
- Check file paths are relative (`../english/...` not absolute)

**Search doesn't work:**
- Check JavaScript is enabled in browser
- Try clearing cache

**Looks weird on mobile:**
- Already responsive, but test different devices

**Partners can't access:**
- Verify URL is correct
- Check password (case-sensitive)
- Try incognito mode

---

## 💡 Pro Tips

1. **Use Netlify** - Easiest and most professional
2. **Set up analytics** - Know what partners actually use
3. **Password protect** - Keep materials confidential
4. **Send reminder emails** - Partners forget the URL
5. **Update seasonally** - Add holiday materials in advance

---

## 📞 Need Help?

If you get stuck deploying:
- Email: hello@purrify.ca
- Phone: 1-450-663-6773
- Or reply to this guide with questions!

---

**Built: January 2026**
**Last Updated: January 2026**
