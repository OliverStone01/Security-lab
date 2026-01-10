# Windows logs - level 3: Authentication event logs

This file documents how authentication logs behaves on Windows. While studying, I built two virtual machine to test my understanding. The first machine is running **Windows 11 Home** to simulate a personal device. For the second machine, i'm running **Windows 11 Pro** 

> For more information on how to setup Windows virtual machines, check out my [Windows VM setup repository](https://github.com/OliverStone01/Security-lab/blob/main/setup/windows-11-vm-setup.md)

-----

### what is an authentication event log?

An authentication event log is a type of log that is writen everytime the device checks the user or service is who they say they are. You can adjust the rules that tell the system when to record these logs by using `secpol.msc` for Windows Pro and `auditpol` for Windows Home.

##### Setting up incorrect password rule using secpol.msc for Windows Pro:

1. Logon to Windows Pro system.
2. Open `secpol.msc` using `run` (`Win + R -> secpol.msc`)
3. Open 
















