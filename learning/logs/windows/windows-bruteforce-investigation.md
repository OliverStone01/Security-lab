# Windows Brute force investigation.

This file shows how I recreated and investigated a brute force attack using **Metasploit** on a Kali linux virtual machine to attack my Windows 10 vulnerable machine using SSH. I recreated this type of attack to get a better understanding of how logs can be used to identify if a system has been attacked.

**What is a brute force attack?**  
A brute force attack is when an attacker attempts to get access to a machine by testing different passwords. These passwords are usually a list of the most common passwords or passwords taken from a data breach (credential stuffing) in hopes that the user has used a simple password or has reused their password across different sites. These passwords are usually tested automatically with a script or tool such as **metasploit** or **hydra**.