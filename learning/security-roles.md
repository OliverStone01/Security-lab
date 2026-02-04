# Security & IT Roles

This file explains common IT and security roles and what problems they solve. I created this file to understand each role and what they involve.

-----

### IT support / helpdesk

IT support / help desk are the first point of contact for users when something goes wrong with their device or network. Their main focus is **availability and usability**. When a suspicious issue occurs, they don't investigate, they escalate.

**Common problems they deal with:**
- Users can't log in.
- Laptop is slow.
- Network connection dropped.
- Software won't install.
- Account locked out.

**Common signs they work with:**
- User reports.
- System error messages.
- Basic logs.
- Device status.
- Simple monitoring dashboards.

#### Systems and tools:  

**OS tools:**  
  - Windows Event Viewer
  - Task manager
  - Services
  - Disk management
 
**User and access tools:**  
  - Active directory
  - Local users and groups
  - Password reset tools
 
**Networking basics:**  
  - `ipconfig`/`ifconfig`
  - `ping`, `tracert`, and `nslookup`
 
**Ticketing:**  
  - ServiceNow
  - Jira
  - Zendesk

-----

### SOC analyst

SOC analysts monitor security alerts using SIEM tools (Security Information and Event Management), firewalls, and endpoint protection systems to detect suspicious activity. SOC analysts do not fix systems, they investigate by following playbooks and work with predefined alerts. If an issue is found, they escalate. 

**Common problems they deal with:**  
- Alerts.
- Potential attacks detected by tools.
- Suspicious log activity.
- Determining whether an incident is real or a false positive.

**Common signs they work with:**  
- Alerts from SIEMs.
- Authentication logs.
- Firewall logs.
- Endpoint security alerts.
- IDS/IPS events.

**Monitoring and alerting:**  
- SIEMs (Splunk, Elastic, Sentinel).
- IDS/IPS (Suricata, Snort).
- EDR tools (Defender for endpoint, CrowdStrike).

**Log sources:**  
- Firewall logs.
- Authentication logs.
- VPN logs.
- Endpoint logs.

**Network visibility:**  
- Wireshark (Basic usage).
- Network dashboards.

**Ticketing and workflows:**  
- ServiceNow
- Jira
- Case management tools

-----

### Security analyst

Security analysts investigate security events to understand what happened and why. They then help guide decisions about how to prevent this happening again.

Common problems they deal with:
- Deciding if activity is malicious or normal.
- How the event took place.
- What systems or data has been effected.
- What should change to prevent this happening again.

Common signs they work with:
- Lots of logs.
- Alerts.
- Network traffic.
- System configurations.
- Authentication records.
- Timeline reconstruction.

**Log analysis:**  
- SIEM query languages
- `grep`, `awk`, `journalctl`
- Windows Event Viewer

**Investigation tools:**  
- Wireshark
- Sysinternals tools
- Timeline tools

**Threat context:**  
- VirusTotal
- AbuseIPDB
- MITRE ATT&CK

**OS tools:**
- PowerShell
- Bash
- Process inspection tools

-----

### Security engineer

Security engineers design, build, and maintain systems to prevent security threats. Their main goal is how to prevent threats from happening in the first place. Security engineers use previous events and system data to improve overall security. Their work allows security analysts and SOC teams to do their job effectively.

Common problems they deal with:
- Poor logging coverage.
- Weak detection rules.
- Misconfigured systems.
- Security tools not working correctly.
- Infrastructure gaps.

Common signs they work with:
- Architecture diagrams.
- Log coverage reports.
- Detection gaps.
- Performance metrics.
- Past incident reports.

**Infrastructure and config:**
- SIEM configuration tools.
- Logging pipelines (Elastic, Fluentd, Beats).
- Firewall configuration tools.

**Automation:**  
- Python
- PowerShell
- Bash

**Cloud and platform tools:**
- AWS / Azure security tools.
- IAM configuration.
- Cloud logging services.

**Detection engineering:**
- Custom alert rules.
- Sigma rules.
- Detection tuning tools.

-----
