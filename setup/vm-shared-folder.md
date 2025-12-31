# Setting up a shared folder between host and virtual machine

This guide lays out how I setup a **shared folder** between my host machine **(Apple Silicon M4 Mac)** and my virtual machine **(Kali Linux OS)**. If you have not yet setup your vm, you can use this [guide here](https://github.com/OliverStone01/Security-lab/blob/main/setup/vm-setup-mac.md) I created to help setup vm on Mac using UTM.

-----

### Specifications (at the time of writting):
**MacOS:** Tahoe 26.1  
**UTM version:** 4.7.4  
**Kali Linux version:**  kali-linux-2025.4

-----

### Setting up shared folder on UTM.

1. Create a folder on your host machine.

**If you are still setting up your VM**  
When asked to set up the `shared directory`, set the path to your folder on your host machine you created earlier.

<img alt="setting path to shared directory" src="images/setting-directory.png" width=200px>

**If your VM is already setup**
- Go to the UTM application.
- Select your VM.
- In the infomation table on the right, find `Shared Directory` and select `Browse...`.
- Select the folder you created earlier.

<img alt="Shared directory setting" src="images/shared-directory-setting.png" width=200px>

-----






