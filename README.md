# ⚠️ ARCHIVED - INACCURATE CONTENT ⚠️

## 🛑 DO NOT USE THIS CONTENT

**Status:** ARCHIVED (January 19, 2026)
**Reason:** Contains factual inaccuracies and outdated information

**For accurate Purrify information, visit:**
- https://www.purrify.ca
- https://www.purrify.ca/documents

---

# ~~Purrify Retail Training Materials~~

~~Comprehensive training materials for Purrify's 20+ retail partners. All materials are available in **English**, **French**, and **Spanish**.~~

**⚠️ This content is no longer accurate. Do not use for any purpose.**

## 📁 Directory Structure

```
purrify-retail-training/
├── english/
│   ├── 01-employee-training-guide.html
│   ├── 02-profit-calculator.html
│   ├── 03-pos-display-guide.html
│   ├── 04-quick-reference-card.html
│   └── 05-customer-faq-handout.html
├── french/
│   ├── 01-guide-formation-employes.html
│   ├── 02-calculateur-profits.html
│   ├── 03-guide-affichage-pdv.html
│   ├── 04-carte-reference-rapide.html
│   └── 05-faq-clients.html
├── spanish/
│   ├── 01-guia-capacitacion-empleados.html
│   ├── 02-calculadora-ganancias.html
│   ├── 03-guia-exhibicion-pdv.html
│   ├── 04-tarjeta-referencia-rapida.html
│   └── 05-faq-clientes.html
└── README.md
```

## 📄 Materials Included

### 1. Employee Training Guide / Guide de Formation des Employés / Guía de Capacitación de Empleados
**File:** `01-employee-training-guide.html` | `01-guide-formation-employes.html` | `01-guia-capacitacion-empleados.html`

Comprehensive training manual covering:
- Product knowledge (activated coconut carbon science)
- Key selling points (7-day odor control, chemical-free, etc.)
- Common objections and responses
- Demo script for showing customers
- FAQ sheet with detailed answers

**Target Audience:** Store employees, sales staff

---

### 2. Store Owner Profit Calculator / Calculateur de Profits / Calculadora de Ganancias
**File:** `02-profit-calculator.html` | `02-calculateur-profits.html` | `02-calculadora-ganancias.html`

Financial planning tool featuring:
- Margin opportunities (wholesale cost, retail price, profit per unit)
- Multi-unit discount structure (Bronze, Silver, Gold tiers)
- Reorder frequency estimates
- Profit scenarios (small, medium, large stores)
- Bundle and upsell opportunities

**Target Audience:** Store owners, managers, buyers

---

### 3. Point-of-Sale Display Guide / Guide d'Affichage PDV / Guía de Exhibición PDV
**File:** `03-pos-display-guide.html` | `03-guide-affichage-pdv.html` | `03-guia-exhibicion-pdv.html`

Visual merchandising guide including:
- Best placement recommendations (primary, secondary, tertiary)
- Cross-merchandising suggestions
- Signage copy options (ready-to-use)
- Display do's and don'ts
- Seasonal strategies

**Target Audience:** Visual merchandisers, store managers

---

### 4. Quick Reference Card / Carte de Référence Rapide / Tarjeta de Referencia Rápida
**File:** `04-quick-reference-card.html` | `04-carte-reference-rapide.html` | `04-tarjeta-referencia-rapida.html`

**Pocket-sized** (4" x 6") quick reference featuring:
- 5 key benefits
- Pricing at a glance
- Quick selling points
- Objection handling shortcuts
- Reorder contact info

**Target Audience:** Sales staff (keep in pocket or at register)

---

### 5. Customer FAQ Handout / FAQ Clients / FAQ para Clientes
**File:** `05-customer-faq-handout.html` | `05-faq-clients.html` | `05-faq-clientes.html`

Customer-facing document with:
- Top 10 questions customers ask
- Clear, concise, scannable answers
- Product benefits highlighted
- Beautiful design for leaving at counter or handing to customers

**Target Audience:** Customers (leave-behind material)

---

## 🖨️ Converting to Print-Ready PDFs

All HTML files are designed to be **print-ready** with proper margins and page breaks. Here are several ways to convert them to PDF:

### Option 1: Browser Print (Easiest)
1. Open any `.html` file in your web browser (Chrome, Firefox, Safari, Edge)
2. Press `Cmd+P` (Mac) or `Ctrl+P` (Windows)
3. Select "Save as PDF" as the printer
4. Ensure "Background graphics" is enabled
5. Save the PDF

### Option 2: Using wkhtmltopdf (Command Line)
```bash
# Install wkhtmltopdf first
brew install wkhtmltopdf  # Mac
# or download from: https://wkhtmltopdf.org/

# Convert files
wkhtmltopdf english/01-employee-training-guide.html english/01-employee-training-guide.pdf
wkhtmltopdf english/02-profit-calculator.html english/02-profit-calculator.pdf
# ... repeat for all files
```

### Option 3: Batch Convert All Files (Mac/Linux)
```bash
# Navigate to the directory
cd ~/purrify-retail-training

# Convert all English files
for file in english/*.html; do
  wkhtmltopdf "$file" "${file%.html}.pdf"
done

# Convert all French files
for file in french/*.html; do
  wkhtmltopdf "$file" "${file%.html}.pdf"
done

# Convert all Spanish files
for file in spanish/*.html; do
  wkhtmltopdf "$file" "${file%.html}.pdf"
done
```

### Option 4: Using Adobe Acrobat Pro
1. Open Adobe Acrobat Pro
2. File → Create → PDF from Web Page
3. Browse to select the HTML file
4. Adjust settings if needed
5. Click "Create"

---

## 📐 Print Specifications

### Standard Documents (Training Guide, Profit Calculator, POS Guide, FAQ)
- **Page Size:** US Letter (8.5" x 11")
- **Margins:** 0.75 inches all sides
- **Color:** Full color (RGB)
- **Font:** Arial (universal compatibility)

### Quick Reference Card
- **Page Size:** 4" x 6" (pocket-sized)
- **Margins:** 0.25 inches all sides
- **Suggested Print:** Card stock (80-100 lb) for durability
- **Finishing:** Optional lamination for pocket carry

---

## 🎨 Design Features

All materials include:
- ✅ Professional color-coded layouts
- ✅ Clear hierarchy with headers and sections
- ✅ Print-optimized styles (no broken pages)
- ✅ Page break controls for logical flow
- ✅ High contrast for easy reading
- ✅ Branded color scheme (Purrify blues, greens, purples)

---

## 📧 Distribution Recommendations

### For Store Owners/Managers:
- Email PDF versions for digital reference
- Print 1-2 copies of each for in-store use
- Laminate Quick Reference Cards for durability

### For Employees:
- Provide Employee Training Guide during onboarding
- Keep Quick Reference Cards at register stations
- Post key selling points near product displays

### For Customers:
- Print Customer FAQ Handouts on quality paper
- Keep stack at register or near product display
- Consider color printing for maximum impact

---

## 🔄 Updates & Maintenance

**Current Version:** 1.0 (January 2026)

To update materials:
1. Edit the HTML files directly (they're well-structured and commented)
2. Update pricing, contact info, or content as needed
3. Re-convert to PDF using methods above
4. Redistribute to retail partners

---

## 📞 Support & Questions

For questions about these materials or to request custom versions:

**Purrify Wholesale Team**
- 📧 Email: wholesale@purrify.com
- 📞 Phone: 1-800-PURRIFY (787-7439)
- 🌐 Web: www.purrify.com/wholesale

---

## 📝 License & Usage

© 2026 Purrify. All rights reserved.

These materials are confidential and proprietary to Purrify and authorized retail partners.
Do not distribute outside of authorized retail partnership agreements.

---

**Created:** January 2026
**Last Updated:** January 2026
**Format:** HTML (convertible to PDF)
**Languages:** English, French, Spanish (trilingual support for all B2B/B2C materials)
