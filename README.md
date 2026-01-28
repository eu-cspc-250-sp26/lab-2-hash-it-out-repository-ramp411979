# Hash It Out Lab - Computer Security

**CSPC 250: Computer Systems Security**  
**Week 2 Lab - Cryptography & Password Cracking**

---

## 🎯 Lab Overview

In this lab, you will:
- Learn what cryptographic hashes are and why they matter
- Explore how passwords are stored securely (and insecurely)
- Use real password-cracking tools
- Understand why strong passwords are essential

**Time Required:** 90 minutes  
**Points:** 40 points  
**Tools:** John the Ripper, Linux commands, browser-based environment

---

## 🚀 Getting Started

### Step 1: Open Your Codespace

You should already have accepted the GitHub Classroom assignment and have your personal repository created.

1. Navigate to your repository on GitHub
2. Click the green **Code** button
3. Click the **Codespaces** tab
4. Click **Create codespace on main**
5. Wait 1-2 minutes for the environment to build

**You'll see:** VS Code interface in your browser with a terminal at the bottom.

---

### Step 2: Run Setup Commands

Your Codespace needs three commands to set up the lab environment. Copy and paste each command into the **terminal** at the bottom of VS Code, then press Enter.

#### Command 1: Install Password Cracking Tools (30-60 seconds)

```bash
sudo apt-get install john
```

**What this does:** Installs John the Ripper (password cracker) and whois utility.

⏱️ **Wait for the command to finish** - you'll see the prompt (`$`) return when done.

---

#### Command 2: Create Working Directories (instant)

```bash
mkdir -p screenshots data
```

**What this does:** Creates folders for your screenshots and lab data files.

---

#### Command 3: Create Test Password File (instant)

```bash
cat > data/shadow << 'EOF'
root:*:19219:0:99999:7:::
daemon:*:19219:0:99999:7:::
karl:$y$j9T$oR2ZofMTuH3dpEGbw6c/y.$TwfvHgCl4sIp0b28YTepJ3YVvl/3UyWKeLCmDV1tAd9:19255:0:99999:7:::
EOF
```

**What this does:** Creates a simulated password file with encrypted passwords for you to crack.

---

### Step 3: Verify Setup

Run these verification commands to make sure everything is ready:

```bash
which john
```
**Should show:** `/usr/sbin/john`

```bash
ls -la data/
```
**Should show:** A `shadow` file in the data directory

```bash
cat data/shadow
```
**Should show:** 3 lines of password data (root, daemon, karl)

---

## ✅ You're Ready!

If all verification commands worked, you're ready to start the lab exercises below.

---

## 📝 Lab Exercises

### Part 1: Understanding Hashes (10 points)

#### Exercise 1.1: Create Your First Hash

Run this command with YOUR actual first name (replace `YourName`):

```bash
echo "YourName" | md5sum
```

**Questions to answer in SUBMISSION.md:**
1. What is the MD5 hash of your name?
2. Run the command again with the exact same name. Did the hash change? Why or why not?
3. Change one letter of your name (like capitalizing it) and run again. How different is the hash?

**Screenshot Required:** Terminal showing your name being hashed (5 points)

---

#### Exercise 1.2: Hash Collisions

Create a file with your name:

```bash
echo "YourName" > /tmp/name.txt
```

Get its MD5 hash:

```bash
md5sum /tmp/name.txt
```

**Questions to answer in SUBMISSION.md:**
4. What is the md5sum of the file you created?
5. In your own words, explain what a hash collision is and why it's a security concern.

**Screenshot Required:** Terminal showing the md5sum command and result (5 points)

---

### Part 2: Password Storage (10 points)

#### Exercise 2.1: Examine the Shadow File

Look at the simulated password file:

```bash
cat data/shadow
```

You'll see three users: root, daemon, and karl.

**Notice:**
- root and daemon have `*` instead of a password hash (no password set)
- karl has a long encrypted string starting with `$y$j9T$...`

**Questions to answer in SUBMISSION.md:**
6. Why would a system have users with `*` instead of password hashes?
7. What do the different parts of karl's password line mean? (Hint: Research the format of `/etc/shadow` entries)

---

#### Exercise 2.2: Understanding Password Hashing

**Questions to answer in SUBMISSION.md:**
8. Why don't systems store passwords in plaintext?
9. What is a "salt" in password hashing and why is it used?
10. Research the `yescrypt` algorithm (the `$y$` prefix). Why is it considered secure?

---

### Part 3: Password Cracking (15 points)

#### Exercise 3.1: Crack Karl's Password

John the Ripper will try common passwords from its built-in wordlist:

```bash
john --format=crypt --wordlist=/usr/share/john/password.lst data/shadow
```

**This will take 10-30 seconds.** Watch as John tries different passwords!

When it finishes, you'll see the cracked password displayed.

**To see cracked passwords again later:**

```bash
john --show data/shadow
```

**Questions to answer in SUBMISSION.md:**
11. What was karl's password?
12. How long did it take John to crack it?
13. Why was this password easy to crack?

**Screenshot Required:** Terminal showing John the Ripper successfully cracking the password (5 points)

---

#### Exercise 3.2: Verify the Password

Now that you know karl's password, let's verify it's correct using the `mkpasswd` command:

```bash
mkpasswd -m yescrypt -S oR2ZofMTuH3dpEGbw6c/y. '<karls-password-here>'
```

**Replace `<karls-password-here>` with the actual password you discovered.**

The output should match the hash in the shadow file!

**Questions to answer in SUBMISSION.md:**
14. Does the hash match? (Yes/No)
15. What does this tell you about how Linux verifies passwords during login?

---

### Part 4: Security Analysis (5 points)

**Questions to answer in SUBMISSION.md:**
16. Based on this lab, what makes a password "strong"?
17. Why do websites now require passwords with numbers, symbols, and mixed case?
18. If you were designing a password policy for a company, what rules would you set? (At least 3 specific rules)

---

## 📤 Submission Instructions

### What to Submit

1. **SUBMISSION.md file** with answers to all 18 questions (25 points)
2. **Three screenshots** saved in the `screenshots/` folder (15 points):
   - Screenshot 1: Your name being hashed (Exercise 1.1)
   - Screenshot 2: md5sum of your file (Exercise 1.2)
   - Screenshot 3: John the Ripper cracking karl's password (Exercise 3.1)

### How to Submit

#### Save Your Screenshots

In VS Code:
1. Take screenshots of your terminal
2. Click **File → Open File**
3. Navigate to `screenshots/` folder
4. Upload your 3 screenshots there
5. Name them: `screenshot1.png`, `screenshot2.png`, `screenshot3.png`

#### Edit SUBMISSION.md

1. In VS Code, open `SUBMISSION.md` from the file explorer
2. Fill in your answers to all 18 questions
3. Save the file (`Ctrl+S` or `Cmd+S`)

#### Commit and Push Your Work

In the terminal, run these commands:

```bash
git add .
git commit -m "Completed Hash It Out lab"
git push
```

#### Verify Submission

1. Go to your repository on GitHub
2. Click on `SUBMISSION.md` - your answers should be there
3. Click on `screenshots/` folder - your 3 screenshots should be there

**Due Date:** As posted on Canvas  
**Late Penalty:** As stated in syllabus

---

## 🆘 Troubleshooting

### "john: command not found"

**Solution:** You didn't run Command 1 from setup. Run:
```bash
sudo apt-get install john
```

### "No such file or directory: data/shadow"

**Solution:** You didn't run Command 3 from setup. Run the entire Command 3 block again.

### "No password hashes loaded"

**Solution:** The shadow file might be empty or incorrectly formatted. Run Command 3 again.

### Codespace Won't Start / Shows Errors

**Solution:** 
1. Delete the broken codespace (Settings → Codespaces → Delete)
2. Create a new codespace from your repository
3. Run the 3 setup commands again

### John Takes Forever / Doesn't Find Password

**Solution:** Make sure you used the `--wordlist` parameter exactly as shown. Karl's password is in the default wordlist.

### Can't Upload Screenshots

**Solution:** 
- Make sure you created the `screenshots/` folder (Command 2)
- Try dragging and dropping image files into VS Code
- Or use terminal: `curl -o screenshots/screenshot1.png <URL-to-image>`

---

## 📚 Additional Resources

### Learning More About Hashing

- [Wikipedia: Cryptographic Hash Function](https://en.wikipedia.org/wiki/Cryptographic_hash_function)
- [How Password Hashing Works](https://auth0.com/blog/hashing-passwords-one-way-road-to-security/)

### Password Security

- [NIST Password Guidelines](https://pages.nist.gov/800-63-3/sp800-63b.html)
- [Have I Been Pwned](https://haveibeenpwned.com/) - Check if your passwords have been compromised

### John the Ripper

- [Official Documentation](https://www.openwall.com/john/doc/)
- [John the Ripper Tutorial](https://www.varonis.com/blog/john-the-ripper)

---

## ⚖️ Academic Integrity

This is an **individual assignment**. You may:
- ✅ Discuss concepts with classmates
- ✅ Ask the professor for help
- ✅ Use online resources for research

You may NOT:
- ❌ Copy answers from another student
- ❌ Share your screenshots or SUBMISSION.md file
- ❌ Use AI tools to write your answers (you must understand and explain in your own words)

**Violation of academic integrity will result in a zero for the assignment and referral to the Dean.**

---

## 📧 Questions?

- **During Class:** Ask Professor Maine
- **Email:** mainem@evangel.edu

---

**Good luck! Remember: This lab teaches you to DEFEND systems, not attack them. Always practice ethical computing.** 🔐
