# Linux logs - level 2: Authentication

This file explains how Linux systems record `Authentication` related activity. Authentication refers to any action where a user, service or process tries to prove its identity. For example:

- Logging into the console.
- Logging in using SSH.
- Authenticating users for services.

-----

### Authentication vs authorisation

- **Authentication** is the process of proving who you are. For example, entering a password.
- **Authorisation** is the process of checking what what actions you are allowed to perform. For example, being allowed to run `sudo` commands.

-----

### Where do authentication logs live?

Where authentication events are located depends on the Linux distribution and logging configuration. Here are the main locations:
- `/var/log/auth.log`
- `/var/log/secure`
- The systemd journal (`journalctl`)

-----

### Accessing authentication logs (systemd)

For accessing logs via `journalctl` we can do the following:

- `journalctl` - View all logs.
- `journalctl -r` - View newest logs first.
- `journalctl -b` - View logs since the last boot.
- `journalctl | grep sudo` - View sudo related authentication events.

We can narrow authentication logs with the following:
- `journalctl _COMM=sshd` - View SSH authentication events.
- `journalctl | grep failed` - Search for failed authentication attempts.
- `journalctl -u ssh.service` - View logs from the SSH service only.


-----

### Why are authentication logs important?

Authentication logs help answer questions like:
- Is someone trying to access the system?
- Are login attempts failing repeatedly?
- Is a user escalating privileges?
- Are logins coming from unexpected locations?

Authentication logs are a primary source of evidence during security investigations. These logs are often correlated with network logs, process logs, and user activity to build a timeline.

-----

### Common authentication related events to recognise.

Examples of common events to look for:
- Multiple failed login attempts from the same source.
- Successful login after repeated failed attempts.
- Use of `sudo` by non-admin users.
- Logins outside of normal hours.
- SSH access from an unfamiliar IP addresses.

-----





