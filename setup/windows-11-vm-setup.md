# Setting up a Windows 11 virtual machines on Mac

This guide lays out how I set up Virtual machines on an **Apple Silicon M4 Mac** using **UTM** software to run **Windows 11**. I created this guide to help other beginners, CTF players, and security students who want a reliable Windows 11 virtual machine while bypassing and understanding common errors that occur during setup.

-----
### Recommended specs (at time of writing):

**MacOS:** Tahoe 26.1  
**UTM version:** 4.7.4  
**Windows 11 version:**   
**Storage Required:**  64 GB for best results (40 GB minimum).  
**Memory:**  6 GB for best results (4 GB minimum).  
**CPU Cores:** 4 for best results. (2 cores minimum)

-----

### Software Links:
Download the latest version of software for your device.  
    [UTM Downloader for Mac](https://mac.getutm.app)  
    [Windows 11.iso boot file](https://www.microsoft.com/en-us/software-download/windows11arm64)


-----

### Downloading UTM for Mac
1. Go to **UTM downloader** via your browser or via this [link](https://mac.getutm.app).
2. Open the downloaded **UTM launcher** and follow steps to move UTM to the application folder.
3. You do **not** need to open UTM until you have downloaded the Kali linux OS in the next steps.

### Download the latest Windows 11 ARM .iso file

> **IMPORTANT NOTE:**  
> When I tried to install the .iso file using Safari, I get this error:

<img alt="Windows iso download error" src="images/windows-iso-download-error.png" width=300px>

> The solution is to use a Chrome Browser to download the .iso file.

4. Go to the [Windows 11 ARM installer](https://www.microsoft.com/en-us/software-download/windows11arm64) via a Chrome browser and download the latest .iso file.

5.**DO NOT OPEN** the .iso file once it's downloaded.

### Setting up the virtual machine
6. Open the UTM application.
<img alt="Screenshot of UTM welcome page" src="images/welcome-UTM.png" width=400px>

7. Click `Create a New Virtual Machine`.

> **Virtualisation VS emulation**
>
> - **Virtualisation** runs software directly on your CPU using the same architecture (ARM -> ARM)  
> - **Emulation** translates every instruction pretending to be a different CPU architecture (x86 -> ARM)  
>
> Virtualisation is much quicker and is more stable compared to emulation.

8. Click on `Virtualise`.
9. Choose `Windows` from the list of Operating Systems.

> **Memory allocation**
> - **Bare Minimum: 4 GB (4096 MiB)**.  
> - **Recommended Minimum: 6 GB (6144 MiB)**  
> - **Recommended: 8 GB (8192 MiB)** Recommended for good performance.  

> **CPU Core allocation**
> - **Bare Minimum: 2 cores** suitable for basic tasks.
> - **Recommended Minimum: 3 cores** smoother performance.
> - **Recommended: 4 cores** suitable for running multiple tasks without noticeable lag.

10. Set your memory and CPU core allocation as needed.
11. For boot option, use the `Browse...` option and select the **Windows 11 .iso file** you downloaded earlier.
12. Make sure to enable `UEFI Boot` and `Secure Boot with TPM 2.0`.
<img alt="Enable boot options" src="images/windows-boot-options.png" width=300px>

> **Storage**
> - **Recommended Minimum:** 64GB
> - **Recommended:** 80-100GB

12. Set your storage allocation as needed.

> A **Shared directory** allows you to share files between the virtual machine and the main machine.

13. Set your shared directory location by using `Browse..`. Make sure to set a location that is convenient to access. For example, your Desktop.
14. Change the name to whatever you want to call the virtual machine.
15. Save the virtual machine.







