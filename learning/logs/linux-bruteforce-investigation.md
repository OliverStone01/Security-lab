# Bruteforce investigation.

This file shows how I created and investigated bruteforce attacks using **Metasploit** on a Kali linux attack virtual machine to attack a vulnerable linux virtual machine and a vulnerable Windows virtual machine. I recreated this type of attack to bettwe understand how logs can be used to identify a system that has been attacked.

**What is a bruteforce attack?**  
A bruteforce attack is when an attacker tries lots of diffrent passwords to try get access to a machine. These passwords are usualy a list of the most common passwords or passwords taken from a data breach (credential stuffing) in hopes that the user has used a simple password or has resused there password across diffrent sites.


**How do you identify a brute force attack?**  
Repeated failed authentication attempts in a short period of time for the same user.

**What would be a false positive for a bruteforce attack?**
A user who has forgotten their password so they try many variations of passwords instead of resetting the password. Their constant attempt at guessing can trigger an alert of a bruteforce attempt and lockout their account.

**How do you prevent bruteforce attacks?**  
By editing the password difficulty rules to prevent users reusing simple passwords. For example, we can add a password history rule so the password cannot be the same as the previous passwords. We can also add a rule that requires the user to enter a password that is much longer than the standard 8 length password which increases the difficulty.

We also need to set the machine to lockdown (either for a set period of time or until IT helpdesk unlocks the device). This will restrict the attacker to the amount of attempts they get before they are locked out.

-----

### How I recreated a bruteforce attack:
To recreate a bruteforce attack, 






