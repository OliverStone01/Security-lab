# seting up virtual machines on Mac

This guide lays out how I setup Virtual machines on Apple silicon Mac using UTM software to run Kali Linux. I created this guide to help others bypass the errors I encountered while setting up VMs on Mac.

### Specifications:
**Recommended specs (at time of writing):**  
    **MacOS:** Tahoe 26.1  
    **UTM version:** 4.7.4  
    **Kali Linux version:**  kali-linux-2025.4
    **Storage Required:**  64 GB for best results (40 GB minimum)
    **Memory:**  6 GB for best results (4 GB minimum)
    **CPU Cores:** 4 for best results

### Software Links:
**Download the latest version of software for your device.**  
    [UTM Downloader for Mac](https://mac.getutm.app)  
    [Kali Linux .iso boot file](https://www.kali.org/get-kali/#kali-installer-images)  


### Downloading UTM for Mac
1. Go to UTM downloader via your browser or via this [link](https://mac.getutm.app).
2. Open the downloaded launcher and follow steps to move UTM to the application folder.
3. You do not need to open UTM until you have downloaded the Kali linux OS in the next stage.

### Download latest Kali Linux .iso file
4. Go to the Kali Linux OS installer via your browser or via this [link](https://www.kali.org/get-kali/#kali-installer-images).
5. Click on **Installer images**.
6. Change processor to **Apple Silicon (ARM64)**.
7. Click on download under **Installer**.
8. **DO NOT OPEN** the ISO file once it's downloaded.

### Setting up the virtual machine
9. Open the UTM application.
<img alt="Screenshot of UTM welcome page" src="images/welcome-UTM.png" width=400px>

10. Click **Create a New Virtual Machine**
    
> **Virtualisation VS emulation**
>
> - **Vitualisation** runs software directly on your CPU using the same architecture (ARM -> ARM)  
> - **Emulation** translates every instruction pretending to be a diffrent CPU architecture (x86 -> ARM)  
>
> Virtualisation is much quicker and is more stable compared to emulation.

11. Click on **Virtualise**.  
12. Choose **Linux** from the list of Operating Systems.  

> **Memory allocation**
> - **Bare Minimum: 2 GB (2048 MiB)** Boots but usability is limited.  
> - **Recommended Minimum: 4 GB (4096 MiB)** Recommended default.    
> - **Recommended: 8 GB (8192 MiB)** Recommended for good performance.  

> **CPU Core allocation**
> - **Bare Minimum: 2 cores** suitable for basic tasks.
> - **Recommended Minimum: 3 cores** smoother performance
> - **Recommended:** suitable for running multiple tasks without noticable lag.

13. Set your memory and CPU core allocation as needed.
14. Leave **Display Output** as default:  
<img alt="Display settings on UTM" src="images/Hardware-settings.png" width=400px>

15. Set **Boot Image Type** to **Boot from ISO image**
16. Under **Path** use the **Browse...** option and select the kali linux .iso file you downloaded earlier.  

> **Storage**
> - **Bare Minimum:** 40GB
> - **Recommended Minimum:** 64GB
> - **Recommended:** 80-100GB

17. Set your storage allocation as needed.

> **Shared directory** allows you to transfer files between the virtual machine and the main machine.

18. Set your directory location by using **Browse..**. Set a location that is convinient to access. For example, your Desktop.
19. Change the name to what anything you want to call the VM.
21. Save the VM.

> An issue I kept running into at this point was when I booted the VM, I would get a flashing underscore:
<img alt="Flashing underscore error" src="images/Flashing-underscore.png" width=200px>
> After doing some investigating, it turns out some Linux installers default to **serial output (terminal)** which is why the graphical display doesnt display anything.
>
> To fix this, we can make the terminal appear on boot to then complete the setup steps.

22. Right click on the VM and click **edit**.
23. Under **Devices**
    - Click **New...**
    - Click **Serial**
    - Then Save



