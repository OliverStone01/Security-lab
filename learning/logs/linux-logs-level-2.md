# Linux logs - level 2: Authentication

This file explains how Linux systems record `Authentication` related activity. Authentication refers to any action where a user, service or process tries to prove its identity. For example:

- Logging into the console.
- Logging in using SSH.
- Authenticating users for services.

-----

### Authentication vs authorisation

- **Authentication** is the process of proving who you are. For example, entering a password.
- **Authorisation** is the process of checking is you are allowed to have access to or edit something. For example, being allowed to run `sudo` commands.

-----

### Where do authentication logs live?

Authentication events are commonly recorded in:
- `/var/log/auth.log`
- `/var/log/secure`
- The systemd journal (`journalctl`)



