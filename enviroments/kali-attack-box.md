# Attack Box environment (Kali Linux)

This repository describes how I use my **attack environments** in a secure and ethical manner for **CTFs, tool testing, and skill development**. These enviroments are **not** used as daily drivers and they **do not** contain any personal data or important long term data.  

-----

### The purpose of my attack box

My attack environment is designed to be a controlled temporary environment for learning cyber security. Running this environment in a virtual machine instead of directly on my host device allows me to run tools and interact with targets without the risk of leaking/loosing sensitive data or corrupting my host device.

To do this, I keep two versions of my attack environment (Active & Clean). If my **active environment** becomes unstable or compromised, it is deleted and a new one is created by cloning my **clean environment**. This approach allows me to test features, break machines, and test malware without the need to start from scratch again or needing to fix the machine.

-----

### Host and Virtual machine specifications:  

**Host machine:**  
- Apple Silicon Mac (M4)  
- MacOS Tahoe 26.1 (Current at time of writing)  

**Virtual machine:**
- Hypervisor: UTM
- VM Mode: Virtualisation (ARM -> ARM)
- OS: Kali Linux 2025.4
- Memory: 4-8 GB
- CPU Cores: 2-4
- Storage: 64 GB minimum

> Resources are adjust depending on workload.

I choose **Kali Linux** as my operating system as it comes with a wide range of security tools out of the box. This allows me to discover new tools and understand how each tool works.  

All the tools I learn and test are documented on my GitHub [here](https://github.com/OliverStone01/Security-lab/tree/main/tools) with information on how the tool works and what tricks I picked up while using them.

I created [this repository](https://github.com/OliverStone01/Security-lab/blob/main/setup/vm-setup-mac.md) to explain how to set up virtual machines on Mac using UTM.

-----

### Clean & Active virtual machine strategy

I maintain **two versions** of my attack box:

**Clean environment:**
- A maintained updated install of Kali Linux.
- Contains no engagement data.
- Includes my shared folder toggle script.
- Never used directly for tasks.

**Active environment:**
- A cloned version of my `clean environment`.
- Used for active work (CTFs, labs, tool testing).
- Data is only temperarily stored before being transfered and deleted from VM to prevent leak or lose of data.


By using this technique, it allows me to test features, break machines, and test vulnerable software without the need to callibrate a new machine each time or needing to fix the machine to save data. By deleting machines, it also reducing the risk of **persistent compromise**.

-----

### Filesystem and Data handling

I do **not** permanently store data on my VM as a preventative messure to protect against data leaks and loss of data. To move data off my VM, I use a `shared directory` with my host machine.

My shared directory is **disabled by default** and is toggled on and off with my `toggle-fileShare` script I created.  

[Here is a link](https://github.com/OliverStone01/Security-lab/blob/main/setup/vm-shared-folder.md) to the repository where I talk more about how this system functions and how the script works.

-----




















