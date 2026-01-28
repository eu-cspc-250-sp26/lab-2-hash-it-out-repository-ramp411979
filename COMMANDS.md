# Quick Command Reference

## Setup Commands (Run Once)
```bash
# Install tools
sudo apt-get update -qq && sudo apt-get install -y john whois

# Create directories
mkdir -p screenshots data

# Create test data
cat > data/shadow << 'EOF'
root:*:19219:0:99999:7:::
daemon:*:19219:0:99999:7:::
karl:$y$j9T$oR2ZofMTuH3dpEGbw6c/y.$TwfvHgCl4sIp0b28YTepJ3YVvl/3UyWKeLCmDV1tAd9:19255:0:99999:7:::
EOF
```

## Lab Commands
```bash
# Hash your name
echo "YourName" | md5sum

# Create file and hash it
echo "YourName" > /tmp/name.txt
md5sum /tmp/name.txt

# View shadow file
cat data/shadow

# Crack passwords
john --format=crypt --wordlist=/usr/share/john/password.lst data/shadow

# Show cracked passwords
john --show data/shadow

# Verify password
mkpasswd -m yescrypt -S oR2ZofMTuH3dpEGbw6c/y. 'password-here'
```

## Submission Commands
```bash
# Commit your work
git add .
git commit -m "Completed Hash It Out lab"
git push
```

## Verification Commands
```bash
# Check if john is installed
which john

# Check if directories exist
ls -la

# Check if shadow file exists
cat data/shadow
```
