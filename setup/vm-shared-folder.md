# Setting up a shared folder between a host and virtual machine

This guide lays out how I setup a **shared folder** between my host machine **(Apple Silicon M4 Mac)** and my virtual machine **(Kali Linux OS)**. If you have not yet setup your vm, you can use this [guide here](https://github.com/OliverStone01/Security-lab/blob/main/setup/vm-setup-mac.md) I created to help setup vm on Mac using UTM.

-----

### Specifications (at the time of writting):
**MacOS:** Tahoe 26.1  
**UTM version:** 4.7.4  
**Kali Linux version:**  kali-linux-2025.4

-----
### Setting up your folder on your host machine.

1. Create a folder on your host machine.
2. Create a file inside this folder called `test.txt`.

> By creating this file, we can later check if the connection worked inside the VM.

-----

### Setting up the shared folder on UTM application:

**If you are still setting up your VM:**  
When asked to set up the `shared directory`, set the path to your folder on your host machine you created earlier.

<img alt="setting path to shared directory" src="images/shared-directory.png" width=300px>

**If your VM is already setup:**
- Go to the UTM application.
- Select your VM.
- In the infomation table on the right, find `Shared Directory` and select `Browse...`.
- Select the folder you created earlier.

<img alt="Shared directory setting" src="images/shared-directory-settings.png" width=300px>

-----

### Setting up the shared folder in the VM:

1. Boot your VM and login.
2. Once your logged in, Open a terminal.
3. In your terminal, run these commands:
```
# First command (Creates a folder called "Share" in the /mnt directory)
$ sudo mkdir -p /mnt/share
```
> The reason we use the `/mnt` directory is because in Linux, this is the location for temporary or manually mounted filesystems. We will later create a shortcut to this folder which you can place on your VM's desktop for easy access.
>
> You do not have to call the folder `share`, edit as you wish. 

```
# Second command (Mounts the share folder)
$ sudo mount -t 9p -o trans=virtio share /mnt/share
```

-----

### Checking the connection:

We can check the connection by checking if the `test.txt` file apears in the `share` folder. From a terminal, enter this command:
```
# Checking for test.txt file in the share folder
$ ls /mnt/share
```

If you see `test.txt` as a result, the connection has worked.

-----

### Creating a Desktop shortcut

1. On your VM, open `File System` from your Desktop or file explorer.
<img alt="File system" src="" width=300px>

2. Open your `mnt` folder
3. Right click (Two finger click on Mac) on the `share` folder.
4. Click on `Send To`
5. Click on `Desktop (Create Link)`

<img alt="Desktop link" src="" width=300px>

On your Desktop, you will now see a new folder which is linked to your share folder.

-----





