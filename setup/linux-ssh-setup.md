# Setting up SSH on Linux (Debian, Ubuntu, and Kali)

This is a guide on how to setup SSH on Linux (Debian, Ubuntu, and Kali).

-----

**Installing OpenSSH Server:**

1. Open a **Terminal**
2. Run the following command:
```
$ sudo apt install openssh-server
```

> Kali Linux often has OpenSSH installed by default.

-----

**Enable SSH:**

1. Open a **Terminal**
2. Run the following commands:
```
$ sudo systemctl enable ssh
$ sudo systemctl start ssh
```

-----

**Verify SSH is running:**

In a terminal, run the following command:
```
$ sudo systemctl status ssh
```

If ssh is running correctly, you will see:

<img alt="ssh running" src="/setup/images/linux-ssh-running.png" width=400px>

else, you will see:

<img alt="ssh not running" src="/setup/images/linux-ssh-not-running.png" width=400px>

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