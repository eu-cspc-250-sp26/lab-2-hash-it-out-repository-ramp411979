#!/bin/bash

echo "=========================================="
echo "Hash It Out Lab - Setup Script"
echo "=========================================="
echo ""

echo "Step 1: Installing John the Ripper and utilities..."
sudo apt-get update -qq && sudo apt-get install -y john whois
echo "✓ Tools installed"
echo ""

echo "Step 2: Creating directories..."
mkdir -p screenshots data
echo "✓ Directories created"
echo ""

echo "Step 3: Creating test password file..."
cat > data/shadow << 'EOF'
root:*:19219:0:99999:7:::
daemon:*:19219:0:99999:7:::
karl:$y$j9T$oR2ZofMTuH3dpEGbw6c/y.$TwfvHgCl4sIp0b28YTepJ3YVvl/3UyWKeLCmDV1tAd9:19255:0:99999:7:::
EOF
echo "✓ Test data created"
echo ""

echo "=========================================="
echo "Verifying setup..."
echo "=========================================="

if command -v john &> /dev/null; then
    echo "✓ John the Ripper is installed"
else
    echo "✗ John the Ripper is NOT installed"
fi

if [ -d "screenshots" ]; then
    echo "✓ screenshots/ directory exists"
else
    echo "✗ screenshots/ directory NOT found"
fi

if [ -f "data/shadow" ]; then
    echo "✓ data/shadow file exists"
else
    echo "✗ data/shadow file NOT found"
fi

echo ""
echo "=========================================="
echo "Setup complete! You're ready to start the lab."
echo "=========================================="
echo ""
echo "Open README.md for lab instructions."
