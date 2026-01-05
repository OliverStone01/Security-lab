# Log Basics (Level 0)

**What are logs?**  
Logs are files of data that the system has written about what an event that occured. The system is told what data it should care about and save.

-----

**Why do we use logs?**  
Logs are used for troubleshooting, audits, detcting misuse, and to help prove something happened (**non-repudiation**). Logs help to answer critical questions such as:
- What happened?
- When did it happen?
- Where did it happen?
- Who is responsible?
- Were their actions successful?
- What was the result of their action?

-----

**What is an event?**  
Something that happened. Such as:
- A user types entered the wrong password.
- A process started.
- A network connection opened.

-----

**What is a log entry?**  
A record of an event. Not all events become log entries. Only the events the system has been configured to record. Log entrys usually include a timestamp of when the event was logged, the name of the system or application that generated the log entry, the type of event that occurred, additional details about the event (the user who initiated the event or the device's IP address that generated the event).

-----

**What is an alert?**  
Alerts are when specific patterns of log entries occur. For example, 10 failed login attempts in 1 minute from the same IP address. These patterns are set by the administrators.  

Alerts can be imperfect which is why you get **false positives**.

-----

**What is a false positive?**  
False positives are when alerts are triggered, but there is no actual threat. This can happen because systems do not understand intent and rules can be blunt. It's important to expect false positives and be able to investigate what occurred.  

A false positive does not mean the alert is useless, it usually means context is missing.

-----

**Why are logs incomplete?**  
Logs are incomplete because systems are not configured to log everything by default because logging can affect performance and storage is limited. This means that if something isn't logged, it might still have happened.

-----

**What "normal activity" means**  
Normal means the system is working as expected at that time. Some alerts may seem conserning but are actually completely norrmal. For example:
- Failed login attempts
- Admin logins
- PowerShell running

Security analysis is about **unexpected combinations of activity** not individual events.

-----


