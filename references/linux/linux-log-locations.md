# Linux Log Locations

This file is a reference to common **Linux** log locations.

-----
**Core Log Director:**  
`/var/log/` = Primary directory where most logs are stored.  

-----
**Authentication and Access**  

`/var/log/auth.log` or `/var/log/secure` (RHEL/CentOS-based systems):
  - Authentication attempts
  - SSH logins
  - Sudo usage
  - Privilege escalation

-----
**System and General Logs**

`/var/log/syslog`:
  - General system activity
  - Service message
  - Network related logs

`/var/log/messages` (RHEL/CentOS-based systems):
  - General system messages

`/var/log/kern.log`
  - Kernal messages
  - Hardware and driver events

-----
**Boot and Service Logs (systemd)
`journalct1` (systemd journal)
  - Centralised logging system
  - can include:
      - Boot logs
      - Service logs
      - Kernel logs
      - Authentivation logs
   
Common views:
- `journalct1`
- `journalct1 -b`
- `journalct1 -u <service>`

-----
**User Activity**  
`/var/log/wtmp`
  - Successful logins
  - System boots/reboots

`/var/log/btmp`
  - Failed login attempts

`/var/log/lastlog`
  - Last login per user

-----
**Packet management**  
`/var/log/apt/history.log` = Package install/remove history.  
`/var/log/apt/term.log` = Apt command output.  
`/var/log/dpkg.log` = Detailed package installation logs.  

-----
**Networking**  
`/var/log/ufw.log` = UFW firewall allow/deny events.
`/var/log/firewalld/` = RHEL-based firewall activity

VPN logs:  
  - `/var/log/openvpn.log (if configured)
  - Or via `journalct1`

-----
**Web servers**  

Apache:
  - `/var/log/apache2/access.log`
  - `/var/log/apache2/error.log`

Nginx:
  - `/var/log/nginx/access.log`
  - `/var/log/nginx/error.log`

-----
**Databases** 

MySQL/MariaDB:
  - `/var/log/mysql/`
  - `/var/log/mysqld.log`

PostgreSQL:
  - `/var/log/postgresql/`

-----
**Mail services**  
`/var/log/mail.log`  
`/var/log/maillog`

-----
**Cron and scheduled tasks**  
`/var/log/syslog` (Cron entries)  
`/var/log/cron` (RHEL-based systems)  

-----
**Application specific logs**  
Many applications create their own log directories under:
```
/var/log/<application name>/
```

-----
**Security and intrustion detection**  

Fail2Ban  
  - `/var/log/fail2ban.log`

Auditd  
  - `/var/log/audit/audit.log`

IDS/IPS (Snort, Suricata)
  - `/var/log/snort`
  - `/var/log/suricata`

-----
**Temporary and rotated logs**
- `/var/log/*.1`
- `/var/log/*.gz`

-----







