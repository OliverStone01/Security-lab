# Windows Brute force investigation.

This file shows how I recreated and investigated a brute force attack using **Metasploit** on a Kali linux virtual machine to attack my Windows 10 vulnerable machine using SSH. I recreated this type of attack to get a better understanding of how logs can be used to identify if a system has been attacked.

**What is a brute force attack?**  
A brute force attack is when an attacker attempts to get access to a machine by testing different passwords. These passwords are usually a list of the most common passwords or passwords taken from a data breach (credential stuffing) in hopes that the user has used a simple password or has reused their password across different sites. These passwords are usually tested automatically with a script or tool such as **metasploit** or **hydra**.

**How do you identify a brute force attack?**  
Repeated failed authentication attempts in a short period of time for the same user.

**What would be a false positive for a brute force attack?**
A user who has forgotten their password but instead of resetting the password, they try different variations of their password in an attempt to get access to their account/device. Their constant attempt at guessing will trigger an alert of a brute force (if setup correctly) and lockout the users account/device.

**How do you prevent brute force attacks?**  
Configuring the password difficulty rules to prevent users reusing simple passwords. For example, we can configure a password history rule so the user cannot reuse their previous password. We can also configure a rule that requires the user to enter a password that is longer than the standard 8 length password which increases the difficulty of cracking the password.

We also need to configure rate-limiting the machine to lock down (either for a set period of time or until IT help desk unlocks the device) after a set amount of failed authentication attempts. This will restrict the amount of times an attacker can guess the password before being locked out of the device.

We can also use MFA (multi-factor authentication) to require the user to provide another form of authentication when logging in.

**What is SSH?**
SSH (Secure Shell) is a "cryptographic network protocol" that is used to get remote access to a device on a network.

-----

### My setup:

**Attack machine:**  
Operating System: Kali Linux 10.4  
Specific Applications: Metasploit framework  

**Windows vulnerable machine:**  
Operating System: Windows 10
Specific tools enabled: SSH (Password authentication)
