# Hash It Out Lab - Submission

**Student Name:** [Sam]  
**Date:** [1/29/26]  
**CSPC 250: Computer Systems Security**

---

## Part 1: Understanding Hashes (10 points)

### Exercise 1.1: Create Your First Hash

**1. What is the MD5 hash of your name?**

[97f419010e064eb35b45178cb5e004f3]

**2. Run the command again with the exact same name. Did the hash change? Why or why not?**

[No, the MD5 did not change.

**3. Change one letter of your name (like capitalizing it) and run again. How different is the hash?**

[f2135e02d9a2cdb445f3fc2990a8b84b]
The MD5 is very different, I just capitalized my first two letters of my name and it drastically changed.
---

### Exercise 1.2: Hash Collisions

**4. What is the md5sum of the file you created?**

[97f419010e064eb35b45178cb5e004f3]


**5. In your own words, explain what a hash collision is and why it's a security concern.**

[When two inputs collide outputs and make a collision and its dangerous because input 1 could be acting like input 2.]


---

## Part 2: Password Storage (10 points)

### Exercise 2.1: Examine the Shadow File

**6. Why would a system have users with `*` instead of password hashes?**

[User privacy,and one way function that allows to verify the password without storing the actual password]

**7. What do the different parts of karl's password line mean? (Hint: Research the format of `/etc/shadow` entries)**

[It stores encryptd users passwords and aging information]

---

### Exercise 2.2: Understanding Password Hashing

**8. Why don't systems store passwords in plaintext?**

[If nothing was encrypted at all, a hacker could use a cracker very easily and get access to the data.]

**9. What is a "salt" in password hashing and why is it used?**

[A salt is a unqiueness in characters to randomize the password more.]

**10. Research the `yescrypt` algorithm (the `$y$` prefix). Why is it considered secure?**

[The function is more resistant to offline password-cracking attacks than SHA-512. It is based on Scrypt.]

---

## Part 3: Password Cracking (15 points)

### Exercise 3.1: Crack Karl's Password

**11. What was karl's password?**

[lacrosse..pumpkin]

**12. How long did it take John to crack it?**

[82.75 seconds]

**13. Why was this password easy to crack?**

[It was easy to crack because the password it was quick to crack and the password did not have any special characters in]

---

### Exercise 3.2: Verify the Password

**14. Does the hash match? (Yes/No)**

[No it did not]

**15. What does this tell you about how Linux verifies passwords during login?**

[Linux systems are able to take on crackers and they are fast at it.]

---

## Part 4: Security Analysis (5 points)

**16. Based on this lab, what makes a password "strong"?**

[What makes passwords strong is when you use multiple characters, numbers, symbols, and anything to make the password harder to guess.]

**17. Why do websites now require passwords with numbers, symbols, and mixed case?**

[Because cracker is able to crack a password easier when it is just generic symbols.]

**18. If you were designing a password policy for a company, what rules would you set? (At least 3 specific rules)**

[I would make passwords have special characters, 2 captial letters, and over 10 characters long.

---

## Screenshots Checklist

Include three screenshots in the `screenshots/` folder:

- [ ] `screenshot1.png` - Your name being hashed (Exercise 1.1)
- [ ] `screenshot2.png` - md5sum of your file (Exercise 1.2)
- [ ] `screenshot3.png` - John the Ripper cracking karl's password (Exercise 3.1)

---

## Reflection (Optional but Recommended)

What was the most interesting thing you learned in this lab?

[The most intresting I learned in this lab is how you can install cracking software on a termianl and type commands to crack a password.]

---

## Academic Integrity Statement

By submitting this lab, I affirm that:
- I completed this work independently
- I did not copy answers from other students
- I did not use AI tools to generate my responses
- I understand the concepts and can explain them in my own words

**Signature (type your name):** [Sam]  
**Date:** [2/1/2026]
