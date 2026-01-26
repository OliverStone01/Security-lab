# Setting up SSH on Windows

This is a guide on how to setup SSH on Windows.

-----

**Installing OpenSSH Servers**

1. Open **settings**.
2. Navigate to **Apps** -> **Optional features**.

<img alt="Optional features" src="" width=300px>

3. Select **Add a feature**.
4. Look for **OpenSSH server** and install.

<img alt="Install OpenSSH server" src="" width=300px>

-----

**Starting the SSH server**

1. Open **Run** (`win+r`).
2. Using **Run**, open **services** `services.msc`.
3. Find **OpenSSH SSH Server**.

> If you want to the server to run every time you start your device, set **Startup type** to `Automatic`.

4. Click **Start**.

<img alt="Starting SSH server" src="" width=300px>


------

**For Windows 10 - Allow SSH through windows firewall**

1. Open **Windows Defender Firewall**.
2. Select **Allow an app through firewall**.
3. Set **OpenSSH Server** to allow on:
    - Private networks
    - Public networks (For lab use only)

<img alt="allow OpenSSH firewall" src="" width=300px>

-----

**For Windows 11 - Check inbound rule for port 22**

1. Open **Windows Defender Firewall**.
2. Select **Advanced settings**.
3. Confirm an inbound rule exists for **TCP port 22**.