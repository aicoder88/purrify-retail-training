#!/bin/bash

# Fix all contact information across all HTML files

echo "Fixing contact information in all HTML files..."

# Find all HTML files
find ~/purrify-retail-training -name "*.html" -type f | while read file; do
    echo "Processing: $file"

    # Replace fake phone number with correct one
    sed -i '' 's/1-800-PURRIFY (787-7439)/1-450-663-6773/g' "$file"
    sed -i '' 's/1-800-PURRIFY/1-450-6-ODORS-3/g' "$file"
    sed -i '' 's/Tel: 1-450-663-6773/Tel: 1-450-663-6773 (1-450-6-ODORS-3)/g' "$file"

    # Fix wholesale email (should be hello@purrify.ca)
    sed -i '' 's/wholesale@purrify\.com/hello@purrify.ca/g' "$file"
    sed -i '' 's/grossiste@purrify\.com/hello@purrify.ca/g' "$file"
    sed -i '' 's/mayoreo@purrify\.com/hello@purrify.ca/g' "$file"
    sed -i '' 's/retail@purrify\.com/hello@purrify.ca/g' "$file"
    sed -i '' 's/minoristas@purrify\.com/hello@purrify.ca/g' "$file"
    sed -i '' 's/detail@purrify\.com/hello@purrify.ca/g' "$file"

    # Add Google Tag Manager if not already present
    if ! grep -q "GTM-T8WZ5D7R" "$file"; then
        # Add GTM to <head>
        sed -i '' 's|<head>|<head>\
    <!-- Google Tag Manager -->\
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'"'"'gtm.start'"'"':\
    new Date().getTime(),event:'"'"'gtm.js'"'"'});var f=d.getElementsByTagName(s)[0],\
    j=d.createElement(s),dl=l!='"'"'dataLayer'"'"'?'"'"'&l='"'"'+l:'"'"''"'"';j.async=true;j.src=\
    '"'"'https://www.googletagmanager.com/gtm.js?id='"'"'+i+dl;f.parentNode.insertBefore(j,f);\
    })(window,document,'"'"'script'"'"','"'"'dataLayer'"'"','"'"'GTM-T8WZ5D7R'"'"');</script>\
    <!-- End Google Tag Manager -->|' "$file"

        # Add GTM noscript to <body>
        sed -i '' 's|<body>|<body>\
    <!-- Google Tag Manager (noscript) -->\
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-T8WZ5D7R"\
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>\
    <!-- End Google Tag Manager (noscript) -->|' "$file"

        echo "  ✓ Added GTM to $file"
    else
        echo "  ✓ GTM already present in $file"
    fi
done

echo ""
echo "✅ All files updated with correct contact info and GTM!"
echo ""
echo "Correct contact info:"
echo "  Phone: 1-450-663-6773 (1-450-6-ODORS-3)"
echo "  Email: hello@purrify.ca"
echo "  GTM: GTM-T8WZ5D7R"
