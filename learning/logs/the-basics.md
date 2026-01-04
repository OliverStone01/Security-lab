# Log basics

**What are logs?**
Logs are files of data that the system has written about what is happening at that moment. The system is told what data it should care about and save.

**Why do we use logs?**
Logs are used for troubleshooting, audits, detcting misuse, and to prove something happened (**non-repudiation**).

**What is an `event`?**
Something that happened. Such as:
- A user types entered the wrong password.
- A process started.
- A network connection opened.

**What is a `log entry`?**
A record of an `event`. Not all `events` become `log entries`. Only the `events` the system has been configured to record.

**What is an `alert`?**
Alerts are 