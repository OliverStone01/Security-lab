# Linux Log basics - level 1

I created this file to understand more about who configures Linux logs and how Linux records logs.

### How Linux records logs

Linux does not have a single logging system. Instead, logs can be recorded by:
- The Linux kernal
- System services
- Applications
- Logging daemons (rsyslog or systemd-journald)

Each component decides what events to record, where to send those records, and whether to write them to files, memory, or remote systems. This means that Linux logging is **decentralised**.

-----

### Common Linux logging mechanisms:

**File-based logging:**  
Many Linux systems, including system logs, authentication logs, and service specific logs, write logs in plain text files under `/var/log`. This is a simple and reliable approach that can survive partial system failures and can be forwarded to other systems.


**systemd journal (journald)**  
Most modern Linux systems use **systemd-journald**. Which means instead of writing directly to files, logs are stored in a structured journal in the memory, on disk or both. To get access to these logs, we use `journalctl`.

-----

### Why might `/var/log` look different on each system?

`/var/log` can look different because distributions can choose different defaults, administrators can change logging behaviour, and some logs are disabled entirely. This means that some logs can be missing which is why it's important to understand your systems before performing security analysis and escalating `Missing logs` when they never existed in the first place.

-----

### Who configures what gets logged?

Logging decisions are made by administrators and security engineers using system configuration files, logging servers, and application level setting. Not everything is logged as this can affect performance and will use up more memory.


-----

