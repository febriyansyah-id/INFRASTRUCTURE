# Enterprise Infrastructure & Presales Platform

[![CI](https://github.com/febriyansyahresearch-lab/infra-workspace/actions/workflows/test.yml/badge.svg)](https://github.com/febriyansyahresearch-lab/infra-workspace/actions)
[![Python](https://img.shields.io/badge/python-3.10%2B-blue.svg)](https://www.python.org/)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Tests](https://img.shields.io/badge/tests-20%20passed-brightgreen.svg)](compute/)
[![Architecture](https://img.shields.io/badge/sub--infra-Compute%20%7C%20Storage%20%7C%20Network%20%7C%20Network--Security-0ea5e9.svg)](compute/)

> **Executive Infrastructure Portfolio**: Unified Enterprise Infrastructure Operations, Presales POC Automation, Container Orchestration, Storage Telemetry, Network Subnet Discovery, and AES-256 Cryptographic Secrets Vault.  
> **Author**: Febriyansyah — Senior IT Cybersecurity & Infrastructure Leader (15+ yrs, Banking) | MTI Scholar

---

## 🖥️ Interactive Web Command Center

An interactive, zero-dependency **Enterprise Infrastructure Command Center** is built right into the repository:

👉 **Open [`index.html`](index.html) in your browser** to launch the live operations console:
- 📊 **Real-time Telemetry Dashboard**: Live simulated streams of cluster CPU, RAM utilization, and disk I/O metrics.
- 🖥️ **Compute & Container Orchestrator**: Dynamic generation and live code inspection of multi-tier Docker Compose stacks (`web`, `monitoring`).
- 💾 **Storage & SMART Health Monitor**: Visual disk pool capacity gauges, SMART attribute health verification, and IOPS latency benchmarks.
- 🌐 **Network Subnet Discovery**: Interactive simulation of ping sweeps, SNMP queries, and open ports inventory mapping.
- 🔐 **AES-256 Secrets Vault**: In-browser Fernet PBKDF2 symmetric encryption and decryption simulator.

---

## 🏛️ Curated 4 Sub-Infra Architecture

```text
INFRASTRUCTURE/
├── 🖥️ compute/             # Docker Stacks, IaC Cloud-init, System Health Monitoring Agent (9 Tests ✅)
├── 💾 storage/             # Enterprise Storage Health, SMART Telemetry, IOPS & Latency Audit (4 Tests ✅)
├── 🌐 network/             # Subnet Discovery, ICMP Ping Sweep, SNMP Walker & Port Mapping (3 Tests ✅)
├── 🔐 network-security/    # AES-256 Encrypted Secrets Vault & Key Management (4 Tests ✅)
├── 🌐 index.html           # Standalone Interactive Command Center UI (Tailwind CSS + Chart.js)
├── .gitignore              # Optimized repository exclusion rules
└── README.md               # Master documentation & architecture guide
```

---

## 📑 Sub-Infra Directory & Capabilities

| Sub-Infra Domain | Directory | Core Capabilities | Test Status |
| :--- | :--- | :--- | :---: |
| **Compute** | [`compute/`](compute/) | Multi-tier Docker Compose generator (`web`, `monitoring`), Cloud-init IaC automation, host telemetry health daemon. | 9 Passed ✅ |
| **Storage** | [`storage/`](storage/) | Storage capacity analyzer, SMART drive status audit, sequential/random IOPS and latency benchmarks. | 4 Passed ✅ |
| **Network** | [`network/`](network/) | Subnet ping sweep scanner, TCP service port prober, SNMP system telemetry, automated inventory reporting. | 3 Passed ✅ |
| **Network Security** | [`network-security/`](network-security/) | Enterprise secrets vault implementing AES-256 (Fernet) with PBKDF2 HMAC-SHA256 key derivation. | 4 Passed ✅ |

---

## ⚡ Quickstart & Setup

### 1. Installation

```bash
git clone https://github.com/febriyansyah-id/infra-workspace.git
cd infra-workspace

# Create virtual environment & install dependencies
python -m venv .venv
source .venv/bin/activate  # On Windows: .venv\Scripts\activate
pip install -r requirements.txt
```

### 2. Run Test Suite

Run the full automated test suite (20 tests passed):

```bash
# Test all 4 sub-infra modules from root
python -m pytest -v

# Or run testing per individual sub-infra module
pytest compute/ -v
pytest storage/ -v
pytest network/ -v
pytest network-security/ -v
```

---

## 🛠️ CLI Usage by Sub-Infra

### 🖥️ Compute
```bash
# Generate Docker web stack
python -m compute.src.compose --stack web

# Run system health agent
python -m compute.src.agent

# Generate cloud-init template
python -m compute.src.templates --template cloud-init
```

### 💾 Storage
```bash
# Inspect mounted volume usage, SMART indicators, and IOPS
python -m storage.src.checker
```

### 🌐 Network
```bash
# Scan target network subnet and inventory open ports
python -m network.src.scanner --target 192.168.1.0/24
```

### 🔐 Network Security
```bash
# Store an encrypted secret in the vault
python -m network-security.src.vault set DATABASE_PASSWORD "Production_Secret_P@ss!"

# Retrieve a decrypted secret
python -m network-security.src.vault get DATABASE_PASSWORD
```

---

<div align="center">
  <sub>Maintained by <strong>Febriyansyah</strong> • Presales Infrastructure Operations Hub</sub>
</div>
