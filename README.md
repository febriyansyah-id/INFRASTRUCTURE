# Enterprise Infrastructure & Presales Toolkit

[![CI](https://github.com/febriyansyahresearch-lab/infra-workspace/actions/workflows/test.yml/badge.svg)](https://github.com/febriyansyahresearch-lab/infra-workspace/actions)
[![Python](https://img.shields.io/badge/python-3.10%2B-blue.svg)](https://www.python.org/)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Tests](https://img.shields.io/badge/tests-20%20passed-brightgreen.svg)](compute/)
[![Architecture](https://img.shields.io/badge/sub--infra-Compute%20%7C%20Storage%20%7C%20Network%20%7C%20Security-0ea5e9.svg)](compute/)

> **Enterprise Infrastructure & Presales Operations Hub**: Production-ready tools, live discovery engines, storage health checkers, automated container deployment templates, and credential vaults for presales POCs, client architecture demos, and datacenter deployments.  
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

## 🏛️ Sub-Infra Architecture & Pillars

The repository is organized directly into native enterprise sub-infrastructure domains:

```text
INFRASTRUCTURE/
├── 🖥️ compute/
│   ├── docker_stacks/          # Multi-tier container templates (Nginx, App, DB, Monitoring)
│   ├── iac_scripts/            # Infrastructure as Code: Cloud-init & automated provisioning
│   └── monitor_agent/          # System health monitor agent (CPU, RAM, Disk threshold alerts)
│
├── 💾 storage/
│   └── storage_health/         # Disk utilization, SMART attribute checking, IOPS & latency audit
│
├── 🌐 network/
│   └── net_discovery/          # Subnet scanner, ICMP ping sweep, SNMP walker, and port mapper
│
├── 🔐 network_security/
│   └── vault_secrets/          # Enterprise credential vault (AES-256 Fernet + PBKDF2 key derivation)
│
├── index.html                  # Interactive Operations Command Center UI
└── README.md                   # Master documentation & architecture guide
```

---

## 📦 Sub-Infra Directory & Automated Tests

| Sub-Infra Domain | Module | Core Functionality | Test Status |
| :--- | :--- | :--- | :---: |
| **Compute** | [`compute/docker_stacks/`](compute/docker_stacks/) | Production Docker Compose generator (`web`, `monitoring`, `db`) | 3 Passed ✅ |
| **Compute** | [`compute/monitor_agent/`](compute/monitor_agent/) | Host telemetry monitoring daemon with configurable alert thresholds | 3 Passed ✅ |
| **Compute** | [`compute/iac_scripts/`](compute/iac_scripts/) | Cloud-init provisioning templates and infrastructure automation | 3 Passed ✅ |
| **Storage** | [`storage/storage_health/`](storage/storage_health/) | Storage capacity analyzer, SMART status audit, IOPS & latency check | 4 Passed ✅ |
| **Network** | [`network/net_discovery/`](network/net_discovery/) | Network discovery, ICMP sweep, port scan, SNMP system inventory | 3 Passed ✅ |
| **Network Security** | [`network_security/vault_secrets/`](network_security/vault_secrets/) | AES-256 encrypted credential manager with PBKDF2 password derivation | 4 Passed ✅ |

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

All 20 unit tests can be verified across all sub-infra modules:

```bash
python -m pytest -v
```

---

## 🛠️ CLI Usage Examples

### 🌐 Network Discovery & Scanning
Execute subnet sweep and port inventory:
```bash
python -m network.net_discovery.src.scanner --target 192.168.1.0/24
```

### 🖥️ Docker Compose Stacks Generator
Output production compose templates to stdout or save directly:
```bash
# Generate Web Stack (Nginx + Python App + Postgres)
python -m compute.docker_stacks.src.compose --stack web

# Generate Monitoring Stack (Prometheus + Grafana)
python -m compute.docker_stacks.src.compose --stack monitoring
```

### 📊 System Health Agent
Poll local host health and trigger warning alerts if thresholds are breached:
```bash
python -m compute.monitor_agent.src.agent
```

### 💾 Storage & SMART Health Audit
Inspect mounted volume usage, SMART indicators, and latency:
```bash
python -m storage.storage_health.src.checker
```

### 🚀 IaC Cloud-Init Provisioning
Generate cloud-init configuration files for automated VM instantiation:
```bash
python -m compute.iac_scripts.src.templates --template cloud-init
```

### 🔐 AES-256 Secrets Vault
Encrypt, store, and retrieve configuration secrets securely:
```bash
# Initialize vault and store secret
python -m network_security.vault_secrets.src.vault set DATABASE_PASSWORD "Production_Secret_P@ss!"

# Retrieve secret
python -m network_security.vault_secrets.src.vault get DATABASE_PASSWORD
```

---

<div align="center">
  <sub>Maintained by <strong>Febriyansyah</strong> • Presales Infrastructure Operations Hub</sub>
</div>
