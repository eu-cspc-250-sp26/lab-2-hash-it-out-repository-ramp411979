# Hash It Out Lab - Submission

**Student Name:** [Your Name Here]  
**Date:** [Submission Date]  
**CSPC 250: Computer Systems Security**

---

## Part 1: Understanding Hashes (10 points)

### Exercise 1.1: Create Your First Hash

**1. What is the MD5 hash of your name?**

[Your answer here]

**2. Run the command again with the exact same name. Did the hash change? Why or why not?**

[Your answer here]

**3. Change one letter of your name (like capitalizing it) and run again. How different is the hash?**

[Your answer here]

---

### Exercise 1.2: Hash Collisions

**4. What is the md5sum of the file you created?**

[Your answer here]

**5. In your own words, explain what a hash collision is and why it's a security concern.**

[Your answer here]

---

## Part 2: Password Storage (10 points)

### Exercise 2.1: Examine the Shadow File

**6. Why would a system have users with `*` instead of password hashes?**

[Your answer here]

**7. What do the different parts of karl's password line mean? (Hint: Research the format of `/etc/shadow` entries)**

[Your answer here]

---

### Exercise 2.2: Understanding Password Hashing

**8. Why don't systems store passwords in plaintext?**

[Your answer here]

**9. What is a "salt" in password hashing and why is it used?**

[Your answer here]

**10. Research the `yescrypt` algorithm (the `$y$` prefix). Why is it considered secure?**

[Your answer here]

---

## Part 3: Password Cracking (15 points)

### Exercise 3.1: Crack Karl's Password

**11. What was karl's password?**

[Your answer here]

**12. How long did it take John to crack it?**

[Your answer here]

**13. Why was this password easy to crack?**

[Your answer here]

---

### Exercise 3.2: Verify the Password

**14. Does the hash match? (Yes/No)**

[Your answer here]

**15. What does this tell you about how Linux verifies passwords during login?**

[Your answer here]

---

## Part 4: Security Analysis (5 points)

**16. Based on this lab, what makes a password "strong"?**

[Your answer here]

**17. Why do websites now require passwords with numbers, symbols, and mixed case?**

[Your answer here]

**18. If you were designing a password policy for a company, what rules would you set? (At least 3 specific rules)**

[Your answer here]

---

## Screenshots Checklist

Include three screenshots in the `screenshots/` folder:

- [ ] `screenshot1.png` - Your name being hashed (Exercise 1.1)
- [ ] `screenshot2.png` - md5sum of your file (Exercise 1.2)
- [ ] `screenshot3.png` - John the Ripper cracking karl's password (Exercise 3.1)

---

## Reflection (Optional but Recommended)

What was the most interesting thing you learned in this lab?

[Your answer here]

---

## Academic Integrity Statement

By submitting this lab, I affirm that:
- I completed this work independently
- I did not copy answers from other students
- I did not use AI tools to generate my responses
- I understand the concepts and can explain them in my own words

**Signature (type your name):** [Your Name]  
**Date:** [Date]
