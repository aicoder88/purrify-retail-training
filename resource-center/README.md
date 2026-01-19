# Purrify Partner Resource Center

A professional web portal for your retail partners to access all training materials, marketing assets, and product information.

## 🌟 Features

### Smart Organization
- **4 Main Categories**: Training Materials, Marketing & Display, Seasonal Promotions, Product Info
- **Trilingual Support**: All resources available in English, French, and Spanish (plus Chinese for some materials)
- **Resource Cards**: Beautiful cards showing language availability, file type, and page count

### Search & Filter
- **Real-time Search**: Find resources instantly by typing keywords
- **Filter by Type**: Training, Marketing, Seasonal, or Product Information
- **Filter by Language**: English, French, Spanish, Chinese, or view all
- **Resource Counter**: See how many resources match your filters

### User-Friendly Design
- **Responsive**: Works on desktop, tablet, and mobile
- **Quick Actions**: One-click access to popular categories
- **Visual Language Badges**: See at a glance what languages are available
- **Color-Coded Categories**: Easy visual identification of resource types

## 📁 What's Included

### Training Materials (15 documents)
1. **Employee Training Guide** (EN/FR/ES) - Complete product knowledge and sales training
2. **Store Owner Profit Calculator** (EN/FR/ES) - Margin analysis and profit scenarios
3. **Quick Reference Card** (EN/FR/ES) - Pocket-sized cheat sheet for staff
4. **Staff Quick Guide** (EN/FR) - NASA technology sales approach

### Marketing & Display (6 documents)
5. **Point-of-Sale Display Guide** (EN/FR/ES) - Merchandising strategies
6. **Product Brochure** (EN/FR/ZH) - Beautiful tri-fold brochure
7. **Customer FAQ Handout** (EN/FR/ES) - Leave-behind for customers

### Seasonal Promotions (1 document)
8. **Christmas POS Display** (EN/FR) - Holiday gift positioning

## 🚀 How to Use

### Option 1: Open Locally (Immediate)
```bash
# Navigate to the resource center
cd ~/purrify-retail-training/resource-center

# Open in your default browser
open index.html
```

### Option 2: Deploy to Web Server (Recommended)

#### A. Simple Hosting (Netlify - FREE)
1. Go to [netlify.com](https://netlify.com)
2. Sign up (free account)
3. Drag and drop the entire `purrify-retail-training` folder
4. Get instant URL: `https://purrify-resources.netlify.app` (customizable)
5. Share with partners!

**Benefits:**
- Free hosting
- Auto HTTPS
- Custom domain support
- Password protection available

#### B. Your Own Server
Upload the entire `purrify-retail-training` folder to your web server:
```bash
# Via FTP, or command line:
scp -r ~/purrify-retail-training user@your-server.com:/var/www/html/
```

Access at: `https://your-domain.com/purrify-retail-training/resource-center/`

#### C. Google Drive + HTML (Quick Share)
1. Upload `resource-center` folder to Google Drive
2. Set sharing to "Anyone with link can view"
3. Share the link with partners
4. They download `index.html` and open locally

## 🔒 Adding Password Protection

### Option 1: Add Simple Password (Client-side)
Add this script before the closing `</body>` tag in `index.html`:

```html
<script>
    // Simple password protection
    if (sessionStorage.getItem('authenticated') !== 'true') {
        const password = prompt('Enter partner password:');
        if (password === 'Purrify2026!') {
            sessionStorage.setItem('authenticated', 'true');
        } else {
            alert('Incorrect password');
            window.location = 'https://www.purrify.ca';
        }
    }
</script>
```

### Option 2: Server-side Protection (More Secure)
If using your own web server, add `.htaccess` file:

```apache
AuthType Basic
AuthName "Purrify Partner Access"
AuthUserFile /path/to/.htpasswd
Require valid-user
```

### Option 3: Netlify Password Protection
In Netlify dashboard:
1. Site Settings → Access Control
2. Enable "Password Protection"
3. Set password
4. Share with partners

## 📊 Tracking Partner Downloads

### Google Analytics Integration
Add before `</head>` in `index.html`:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=YOUR-GA-ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'YOUR-GA-ID');

  // Track downloads
  document.addEventListener('click', function(e) {
    if (e.target.classList.contains('btn-primary') || e.target.classList.contains('btn-secondary')) {
      gtag('event', 'download', {
        'event_category': 'Resource',
        'event_label': e.target.textContent
      });
    }
  });
</script>
```

## 🎨 Customization

### Change Colors
Edit the CSS variables in `index.html`:

```css
/* Primary Blue */
.header { background: linear-gradient(135deg, #4A90E2 0%, #2C5F8D 100%); }

/* Orange Accent */
.welcome-banner { background: linear-gradient(135deg, #FF6B35 0%, #F7931E 100%); }

/* Change to your brand colors */
```

### Add Your Logo
Replace the emoji logo with an image:

```html
<div class="logo">
    <img src="assets/purrify-logo.png" alt="Purrify" style="height: 50px;">
</div>
```

### Add New Resources
Copy an existing resource card and modify:

```html
<div class="resource-card" data-type="training" data-languages="english">
    <div class="resource-header">
        <span class="resource-type type-training">Training</span>
        <div class="language-badges">
            <span class="language-badge">EN</span>
        </div>
    </div>
    <h3 class="resource-title">Your New Resource</h3>
    <p class="resource-description">Description here...</p>
    <div class="resource-meta">
        <span>📄 PDF</span>
        <span>5 pages</span>
    </div>
    <div class="resource-actions">
        <a href="path/to/file.html" class="btn btn-primary" target="_blank">View</a>
    </div>
</div>
```

## 📱 Mobile-Friendly

The resource center is fully responsive:
- Desktop: 3-column grid
- Tablet: 2-column grid
- Mobile: Single column, stacked filters

## 🔄 Updates

When you add new training materials:

1. Add new resource cards to appropriate category section
2. Update the resource count
3. Add language badges as needed
4. Test search and filters

## 💡 Tips for Partners

### For Store Owners
- Start with "Store Owner Profit Calculator" to see margin opportunities
- Review "POS Display Guide" for merchandising strategies
- Share "Employee Training Guide" with all staff

### For Sales Staff
- Print "Quick Reference Card" and keep at register
- Review "Staff Quick Guide" for objection handling
- Keep "Customer FAQ Handout" at counter for customer questions

### For Seasonal Campaigns
- Check "Seasonal Promotions" section before holidays
- Download Christmas POS materials in November
- Request custom seasonal materials from Purrify team

## 📞 Support

### For Partners
- **Email**: wholesale@purrify.com
- **Phone**: 1-800-PURRIFY (787-7439)
- **Web**: www.purrify.ca/wholesale

### For Technical Issues
- Browser compatibility: Works on Chrome, Firefox, Safari, Edge
- If resources don't load: Check file paths in resource cards
- If search doesn't work: Clear browser cache and reload

## 🎯 Future Enhancements

Planned features:
- [ ] PDF conversion automation
- [ ] Bulk download as ZIP
- [ ] Email notification for new resources
- [ ] Partner feedback system
- [ ] Video training embeds
- [ ] Multi-user accounts with permissions

## 📄 License

© 2026 Purrify. All rights reserved.
Confidential materials for authorized retail partners only.

---

**Built with ❤️ for Purrify's retail partners**
