# 🔎 Reconnaissance

This repository contains tools and techniques used during the **Reconnaissance** phase of penetration testing. It includes **active** scanning (via custom port scanners).

---

## 🛠️ Tools Included

### 1. ⚙️ Port Scanners

Custom-built scripts to identify open ports on a target system.

| Script | Language     | Platform        | Description |
|--------|--------------|-----------------|-------------|
| `portscan.ps1` | PowerShell    | Windows        | A basic TCP port scanner using native PowerShell commands. Designed for quick scans in Windows environments. |
| `portscan.sh`  | Bash          | Linux/macOS    | Bash-based TCP scanner using `/dev/tcp` or `nc`. Lightweight and portable. |
| `portscan_pwsh.ps1` | PowerShell (Core) | Kali Linux (pwsh) | A PowerShell Core-compatible port scanner for use on Kali or any Linux distro with `pwsh`. |

Each script allows basic configuration (IP, port range) and outputs open ports in a readable format.

---





## 🧪 Example Usage

```powershell
# Windows, Bash, Powershell for Kali Linux (pwsh)
 -----------------------
 1. Set Target and Ports
 -----------------------

Replace this with the IP of target
$target = "x.x.x.x"

Change the port range as needed
$ports = 1..1000

⚠️ Disclaimer

    These scripts and techniques are provided for educational purposes only.
    These scripts are my proof of concept for my coding ability.
    Use them only in controlled environments or with explicit permission.
    Unauthorized access to systems is illegal and unethical. Always follow responsible disclosure and ethical hacking principles.

📝 Notes

    Scripts are kept intentionally minimal for learning and extensibility.
    The port scanner is not meant to replace nmap or nc
    Tested on Windows 10, Kali Linux (2025.2), and Ubuntu 22.04 with PowerShell Core.
    Contributions or suggestions welcome as I continue learning and refining.
