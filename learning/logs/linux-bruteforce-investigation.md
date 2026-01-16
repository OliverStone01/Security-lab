# Linux Bruteforce investigation.

This file shows how I recreated and investigated a bruteforce attack using **Metasploit** on a Kali linux attack virtual machine to attack SSH on my Raspberry pi running Linux. I recreated this type of attack to get a better understand how logs can be used to identify a system that has been attacked.

**What is a bruteforce attack?**  
A bruteforce attack is when an attacker attempts to get access to a machine by testing different passwords. These passwords are usualy a list of the most common passwords or passwords taken from a data breach (credential stuffing) in hopes that the user has used a simple password or has reused their password across diffrent sites. These passwords are usually tested automatically with a script or tool such as **metasploit** or **hydra**.

**How do you identify a brute force attack?**  
Repeated failed authentication attempts in a short period of time for the same user.

**What would be a false positive for a bruteforce attack?**
A user who has forgotten their password but instead of resetting the password, they try diffrent variations of their password in an attempt to get access to their account/device. Their constant attempt at guessing will trigger an alert of a bruteforce (if setup correctly) and lockout the users account/device.

**How do you prevent bruteforce attacks?**  
Configuring the password difficulty rules to prevent users reusing simple passwords. For example, we can configure a password history rule so the user cannot reuse their previous password. We can also configure a rule that requires the user to enter a password that is longer than the standard 8 length password which increases the difficulty of cracking the password.

We also need to configure the machine to lockdown (either for a set period of time or until IT helpdesk unlocks the device) after a set amount of failed authentication attempts. This will restrict the amount of times an attacker can guess the password before being locked out of the device.

**What is SSH?**
SSH (Secure Shell) is a "cryptographic network protocol" that is used to get remote access to a device on a network.

-----

### My setup:

**Attack machine:**  
Operating System: Kali Linux 10.4  
Specific Applications: Metasploit framework  

**Linux vulnerable machine:**  
Operating System: Raspberry Pi OS  
Specific tools enabled: SSH (Password authentication)


For more information on how I created my attack machine, see my **Kali Linux Attack VM** repository [here]().

-----

### Setting up my victim device.

Before attacking the victim device, I first made sure to activate and connect to the device via SSH to check the device was operating correctly.

> Before connecting, I made sure to enter an incorrect password so I can check failed authentication logs are being recorded.

Once I was on the device, I checked the authentication logs for one failed authentication log and 1 successful authentication log.

<img alt="Successful and failed authenitication logs" src="" width=200px>

-----

### Reconnaissance

In this attack, I wanted to simulate a threat actor who only has access to my network. What this means is in order for me to attack the victim device, I first need to find the device on the network. To do this, I am using `










