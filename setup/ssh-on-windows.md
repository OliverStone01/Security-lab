# Setting up SSH on Windows

This is a guide on how to setup SSH on Windows.

-----

**Installing OpenSSH Servers**

1. Open **settings**.
2. Go to **systems** -> **Optional features**.

<img alt="Optional features" src="/setup/images/optional-features.png" width=300px>

3. Select **view features**.
4. Select **See Available Features**

<img alt="See available features" src="/setup/images/see-available-features.png" width=300px>

4. Look for or search for **OpenSSH Server** and `Add`.

<img alt="Install OpenSSH server" src="/setup/images/add-ssh-server.png" width=300px>

-----

**Starting the SSH server**

1. Open **Run** (`win+r`).
2. Using **Run**, open **services** `services.msc`.
3. Find **OpenSSH Authentication Agent**.

> If you want to the server to run every time you start your device, change **Startup type** to `Automatic`.
>
> Else, if you want to manually activate the server, change **Startup type** to `Manual`.
>
> Once you have made your choice, press `Apply`.

4. Click **Start**.

<img alt="Setting startup option" src="/setup/images/setting-startup.png">

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
3. Select **Inbound Rules**
4. Confirm an inbound rule exists for **TCP port 22**.

**If no rule exists:**
1. Open **Windows Defender Firewall**.
2. Select **Advanced settings**.
3. Select **Inbound Rules**
4. Select **New Rule**
5. Under **Rule Type**:
    - Select **Port**

<img alt="new port rule" src="/setup/images/new-inbound-rule.png" width=300px>

6. Under **Protocol and Ports**:
    - Select **TCP**
    - Select **Specific local ports:**
    - Enter port 22

<img alt="Protocol and ports" src="/setup/images/tcp-22.png" width=300px>

7. Under **Action**:
    - Select **Allow the connection**

<img alt="Action" src="/setup/images/allow-the-connection.png" width=300px>

8. Under Profile:
    - Select **Domain**
    - Select **Private**
    - Select **Public**


<img alt="When dows this rule apply" src="/setup/images/when-rule-applies.png" width=300px>

9. Set the name and save the rule.
