# Linux logs - level 3: Authentication logs in practice.

This file documents how authentication logs work in a Linux environment. For testing, I build a Kali Linux virtual machine using UTM as my virtualiser.

> For more information on how to setup a Kali Linux virtual machines, check out my [Linux VM setup repository](https://github.com/OliverStone01/Security-lab/blob/main/setup/kali-linux-vm-setup.md)

-----

### What is an authentication event log?

An authentication event log is a type of log that is written every time the device checks the user or service is who they say they are. Some examples include:
- Console logins
- SSH logibs
- Sudo authentication

-----

### What logging mechanisms does Linux use?

Linux has two types of logging:
- File based logging (`/var/log/*`)
- Systemd journal (`systemd-journald`)

To check if your system is using `systemd`, you can run the following command:
```
$ ps -p 1
```

-----

### Accessing logs using journalctl:

You can access authentication logs using `journalctl` these commands:
```
# Display all logs:
$ journalctl

# Display all logs from the current boot only:
$ journalctl -b

# Display all logs in reverse order (newest first):
$ journalctl -r

# Display all logs where sudo was used:
$ journalctl | grep sudo

# Display all logs where SSH was used:
$ journalctl | grep ssh

# Display PAM authentication activity (sudo, login, su, ssh):
$ journalctl | grep pam
```

-----

### Identifying successful authentication events

Linux prioritises session tacking over password attempts. This is to prevent credential exposure and to reduce noise. For this reason, a successful authentication event is recorded when a successful login occures rather than a correct or incorrect password attempts.

For checking successful logons, run the command:
```
$ journalctl | grep pam
```

Example of successful login log:
```
Jan 01 00:00:00 <USERNAME> lightdm[32384]: pam_unix(lightdm:session): session opened for user <USERNAME>(uid=1000) by <USERNAME>(uid=0)
```

Cron is a scheduler that runs commands or scripts automatically at set times or intervals.  

Lightdm is a display manager that handles the graphical login screen and starts the users session.

-----











