# How to setup virtual machines

This is a guide on how to setup Virtual machines on Apple silicon Mac using UTM software to run Kali Linux. I created this guide to help others on some errors I ran into while setting up my VM.

### Specifications:
**Recommended specs (at time of writing):**  
    **MacOS:** Tahoe 26.1  
    **UTM version:**  
    Kali Linux version:  
    Storage Available:  
    Memory:  
    CPU Cores:

### Software Links:
**Links are directed to the download pages. Make sure to download the latest version for your device.**  
    [UTM Downloader for Mac](https://mac.getutm.app)  
    [Kali Linux .iso boot file](https://www.kali.org/get-kali/#kali-installer-images)  


### Downloading UTM for Mac
1. Go to UTM downloader via your browser or using this [link](https://mac.getutm.app)
2. Once the launcher has downloaded, move UTM to the application folder.
3. Do not open UTM until you have downloaded the Kali linux OS in the next stage.

### Download latest Kali Linux iso file
4. Go to the Kali Linux OS installer via your browser or using this [link](https://www.kali.org/get-kali/#kali-installer-images)
5. Click on **Installer images**
6. Change processor to **Apple Silicon (ARM64)**
7. Click on download under **Installer**
8. **DO NOT OPEN** the ISO file once it's downloaded

### Setting up the virtual machine
9. Open the UTM application
10. Click on **Create a New Virtual Machine**

> **Virtualisation VS emulation**
>
> - **Vitualisation** runs software directly on your CPU using the same architecture (ARM -> ARM)  
> - **Emulation** translates every instruction pretending to be a diffrent CPU architecture (x86 -> ARM)  
>
> Virtualisation is much quicker and has better stability. Because this machine is being setup to be a bug bounty/penetration testing tool, I'm going to use virtualisation for better speeds and so I can use tools like Metasploit and Burp suit.

11. Click on **Virtualise**
12. Choose **Linux** from the Operating System list

> **Memory allocation**
> - **Bare Minimum: 2 GB (2048 MiB):** Boots but usability is limited  
> - **Recommended Minimum: 4 GB (4096 MiB):** Recommended default  
> - **Recommended: 8 GB (8192 MiB):** Recommended for good performance

> **CPU Core allocation**
> - **Bare Minimum:**
> - **Recommended Minimum:**
> - **Recommended:**

13. I'm going to be using 8GB of memory and 4 CPU cores
14. Leave **Display Output** as default:  
    ✅ Enable display output  
    ☑️ Enable hardware OpenGL acceleration

15. Set **Boot Image Type** to **Boot from ISO image**
16. Under **Path** use the **Browse...** option and select the kali linux .iso file you downloaded earlier

> **Storage**
> - **Bare Minimum:**
> - **Recommended Minimum:**
> - **Recommended:**

17. I'm going to be using 64GB of storage

> Your shared directory will allow you to transfer files between your virtual machine and your main machine.

18. Set your directory location by using **Browse..** and set it to anywhere you find convinient to access. For example, your desktop.
19. Change the name to whatever you wish and save.
20. 
