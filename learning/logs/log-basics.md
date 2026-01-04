# Log basics

**What are logs?**  
Logs are files of data that the system has written about what is happening at that moment. The system is told what data it should care about and save.

-----

**Why do we use logs?**  
Logs are used for troubleshooting, audits, detcting misuse, and to prove something happened (**non-repudiation**).

-----

**What is an event?**  
Something that happened. Such as:
- A user types entered the wrong password.
- A process started.
- A network connection opened.

-----

**What is a log entry?**  
A record of an event. Not all events become log entries. Only the events the system has been configured to record.

-----

**What is an alert?**  
Alerts are when specific patterns of log entries occur. For example, 10 failed login attempts in 1 minute from the same IP address. These patterns are set by the administrators.  

Alerts can be imperfect which is why you get **false positives**.

-----

**What is a false positive?**  
False positives are when alerts are triggerd, but there is no actual threat. This can happen becuase systems do not understant intent and rules can be blunt. It's important to expect false positives and be able to investivate what occured.ee

-----

**Why are logs incomplete?**  
Logs are incomplete because logging can affect performance and storage is limited. This means that if something isn't logged, it might still have happened.

-----

**What "normal activity" means**  
Normal means the system is working as expected at that time. Some alerts may seem conserning but are actually completely norrmal. For example:
- Failed login attempts
- Admin logins
- PowerShell running

Security analysis is about **unexpected combinations of activity** not individual events. Context matters.

-----


