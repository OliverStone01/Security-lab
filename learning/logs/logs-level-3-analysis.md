# Logs level 3: analysis


### Why does time matter when investigating logs?
Logs are recordings of a sequence of events.

A single failed login does not indicate an attack but multiple failed login attempts in a short amount of time could be an indication of an automated attack like a brute force attack.

By investigating the times of logs we can group together related events and identify strange behavior.


-----

### What is a baseline?
A Baseline is what normal looks like for a system.

Examples of a baseline:
- 1 to 3 failed logins.
- Logins during business hours
- SSH access only from known IP ranges.

Baselines are created by observing logs during non-incident periods. Once a baseline has been created, any unusual activity is easy to spot.

-----

### What is a spike?
A spike is a sudden increase in events compared to the baseline.

Some examples of spikes:
- 20 failed login attempts in 30 seconds.
- Hundreds of authentication attempts overnight.

Spikes are usually indications of brute force attacks, misconfigured services, and automated scripts/tools. Spikes are important to investigate because real users do not generate perfectly timed traffic.

-----


