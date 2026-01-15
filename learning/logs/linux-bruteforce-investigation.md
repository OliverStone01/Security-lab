# Linux Bruteforce investigation.

This file shows how I created and investigated a bruteforce attack using **Metasploit** on a Kali linux attack virtual machine to attack my Raspberry pi running Linux. I recreated this type of attack to get a better understand how logs can be used to identify a system that has been attacked.

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

### Attacking Linux machine:

**Attack machine:**  
**Operating System:** Kali Linux 10.4  
**Specific Applications:** Metasploit framework  

**Linux vulnerable machine:**  
**Operating System:** Kali Linux 10.4  


1. Turn on `ssh` on the vulnerable machine:
```
$ sudo systemctl start ssh
$ sudo systemctl enable ssh
```

2. On the attack machine, 











