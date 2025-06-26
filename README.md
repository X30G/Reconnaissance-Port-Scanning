⚠️ Disclaimer

    These scripts and techniques are provided for educational purposes only.
    Use them only in controlled environments or with explicit permission.
    Unauthorized access to systems is illegal and unethical. Always follow responsible disclosure and ethical hacking principles.

📝 Notes

    Scripts are kept intentionally minimal for learning and extensibility.
    Tested on Windows 10, Kali Linux (2025.2), and Ubuntu 22.04 with PowerShell Core.
    Contributions or suggestions welcome as I continue learning and refining.

# 🔎 Reconnaissance

This repository contains tools and techniques used during the **Reconnaissance** phase of penetration testing. It includes both **active** scanning (via custom port scanners) and **passive** information gathering (OSINT).

---

## 🛠️ Tools Included

### 1. ⚙️ Port Scanners

Custom-built scripts to identify open ports on a target system.

| Script | Language     | Platform        | Description |
|--------|--------------|-----------------|-------------|
| `portscan.ps1` | PowerShell    | Windows        | A basic TCP port scanner using native PowerShell commands. Designed for quick scans in Windows environments. |
| `portscan.sh`  | Bash          | Linux/macOS    | Bash-based TCP scanner using `/dev/tcp` or `nc`. Lightweight and portable. |
| `portscan_kali_pwsh.ps1` | PowerShell (Core) | Kali Linux (pwsh) | A PowerShell Core-compatible port scanner for use on Kali or any Linux distro with `pwsh`. |

Each script allows basic configuration (IP, port range) and outputs open ports in a readable format.

---

### 2. 🌐 OSINT Techniques

Passive information gathering tools and notes, including:
- **Whois Lookups**
- **DNS Enumeration** (`nslookup`, `dig`, `dnsenum`)
- **Google Dorking**
- **Shodan & Censys Queries**
- **theHarvester** usage examples
- Notes on passive vs active recon

Scripts and example commands will be added in the `/osint` folder as development continues.

---

## 🧪 Example Usage

```powershell
# Windows, Bash, PowerShell for Kali Linux (pwsh)
 -----------------------
 1. Set Target and Ports
 -----------------------

Replace this with the IP or hostname of your target machine
$target = "192.168.1.10"

Change the port range as needed
$ports = 1..1000

Set timeout (in milliseconds) to avoid freezing on unresponsive ports
$timeout = 1000

Write-Host "`n[*] Scanning $target for open TCP ports from $($ports[0]) to $($ports[-1])..." -ForegroundColor Cyan
