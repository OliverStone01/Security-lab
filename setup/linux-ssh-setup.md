# Setting up SSH on Linux (Debian, Ubuntu, and Kali)

This is a guide on how to setup SSH on Linux (Debian, Ubuntu, and Kali.

-----

**Installing OpenSSH Server:**

Open a **Terminal** and run the following command:
```
$ sudo apt install openssh-server
```

> Kali Linux often has OpenSSH installed by default.

-----

**Enable SSH:**

Open a **Terminal** and run the following commands:
```
$ sudo systemctl enable ssh
$ sudo systemctl start ssh
```

-----

**Verify SSH is running:**

Open a terminal and run the following command:
```
$ sudo systemctl status ssh
```

If SSH is running correctly, you will see:

<img alt="ssh running" src="/setup/images/linux-ssh-running.png" width=400px>

else, you will see:

<img alt="ssh not running" src="/setup/images/linux-ssh-not-running.png" width=400px>


Becuase SSH runs on port 22, we can also use `tulpn` to check if SSH is active on port 22 with this command:
```
$ ss -tulpn | grep ssh
```

-----

**To stop and disable SSH:**

Stopping SSH:
```
$ sudo systemctl stop ssh
```

To Disable SSH:
```
$ sudo systemctl disable ssh
```

-----
