#!/usr/bin/env python3
import os
import re

GTM_HEAD_SCRIPT = """    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-T8WZ5D7R');</script>
    <!-- End Google Tag Manager -->
"""

def add_gtm_to_file(filepath):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    # Check if GTM head script already exists
    if 'GTM-T8WZ5D7R' in content and 'gtm.start' in content:
        print(f"  ✓ GTM head already in {os.path.basename(filepath)}")
        return

    # Add after <head> tag
    content = re.sub(
        r'(<head>)',
        r'\1\n' + GTM_HEAD_SCRIPT,
        content,
        count=1
    )

    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(content)

    print(f"  ✓ Added GTM head to {os.path.basename(filepath)}")

# Find all HTML files
root_dir = os.path.expanduser('~/purrify-retail-training')
for dirpath, dirnames, filenames in os.walk(root_dir):
    for filename in filenames:
        if filename.endswith('.html'):
            filepath = os.path.join(dirpath, filename)
            add_gtm_to_file(filepath)

print("\n✅ All files updated with GTM head script!")
