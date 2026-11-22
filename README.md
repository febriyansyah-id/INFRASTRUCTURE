# Enterprise Infrastructure & Presales Toolkit

[![CI](https://github.com/febriyansyahresearch-lab/infra-workspace/actions/workflows/test.yml/badge.svg)](https://github.com/febriyansyahresearch-lab/infra-workspace/actions)
[![Python](https://img.shields.io/badge/python-3.10%2B-blue.svg)](https://www.python.org/)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Tests](https://img.shields.io/badge/tests-20%20passed-brightgreen.svg)](projects/)
[![Architecture](https://img.shields.io/badge/architecture-Compute%20%7C%20Storage%20%7C%20Network%20%7C%20Security-0ea5e9.svg)](projects/)

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

## 🏛️ Infrastructure Pillar Mapping

The projects in this repository are engineered as modular toolkits that directly map to the core pillars of enterprise IT infrastructure:

```text
INFRASTRUCTURE/
├── 🖥️ COMPUTE & ORCHESTRATION
│   ├── projects/docker_stacks/       # Multi-tier container templates (Nginx, App, DB, Monitoring)
│   ├── projects/iac_scripts/         # Infrastructure as Code: Cloud-init & automated provisioning
│   └── projects/monitor_agent/       # System health monitor agent (CPU, RAM, Disk threshold alerts)
│
├── 💾 STORAGE & RESILIENCY
│   └── projects/storage_health/      # Disk utilization, SMART attribute checking, IOPS & latency audit
│
├── 🌐 NETWORK DISCOVERY & TOPOLOGY
│   └── projects/net_discovery/       # Subnet scanner, ICMP ping sweep, SNMP walker, and port mapper
│
└── 🔐 NETWORK SECURITY & SECRETS
    └── projects/vault_secrets/       # Enterprise credential vault (AES-256 Fernet + PBKDF2 key derivation)
```

---

## 📦 Project Directory & Automated Tests

| Module | Core Functionality | Domain Mapping | Test Status |
| :--- | :--- | :---: | :---: |
| [`projects/net_discovery/`](projects/net_discovery/) | Network discovery, ICMP sweep, port scan, SNMP system inventory | **Network** | 3 Passed ✅ |
| [`projects/docker_stacks/`](projects/docker_stacks/) | Production Docker Compose generator (`web`, `monitoring`, `db`) | **Compute** | 3 Passed ✅ |
| [`projects/monitor_agent/`](projects/monitor_agent/) | Host telemetry monitoring daemon with configurable alert thresholds | **Compute** | 3 Passed ✅ |
| [`projects/storage_health/`](projects/storage_health/) | Storage capacity analyzer, SMART status audit, IOPS & latency check | **Storage** | 4 Passed ✅ |
| [`projects/iac_scripts/`](projects/iac_scripts/) | Cloud-init provisioning templates and infrastructure automation | **Compute** | 3 Passed ✅ |
| [`projects/vault_secrets/`](projects/vault_secrets/) | AES-256 encrypted credential manager with PBKDF2 password derivation | **Security** | 4 Passed ✅ |

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

All 20 unit tests can be verified in an isolated offline environment:

```bash
python -m pytest projects/ -v
```

---

## 🛠️ CLI Usage Examples

### 🌐 Network Discovery & Scanning
Execute subnet sweep and port inventory:
```bash
python -m projects.net_discovery.src.scanner --target 192.168.1.0/24
```

### 🖥️ Docker Compose Stacks Generator
Output production compose templates to stdout or save directly:
```bash
# Generate Web Stack (Nginx + Python App + Postgres)
python -m projects.docker_stacks.src.compose --stack web

# Generate Monitoring Stack (Prometheus + Grafana)
python -m projects.docker_stacks.src.compose --stack monitoring
```

### 📊 System Health Agent
Poll local host health and trigger warning alerts if thresholds are breached:
```bash
python -m projects.monitor_agent.src.agent
```

### 💾 Storage & SMART Health Audit
Inspect mounted volume usage, SMART indicators, and latency:
```bash
python -m projects.storage_health.src.checker
```

### 🚀 IaC Cloud-Init Provisioning
Generate cloud-init configuration files for automated VM instantiation:
```bash
python -m projects.iac_scripts.src.templates --template cloud-init
```

### 🔐 AES-256 Secrets Vault
Encrypt, store, and retrieve configuration secrets securely:
```bash
# Initialize vault and store secret
python -m projects.vault_secrets.src.vault set DATABASE_PASSWORD "Production_Secret_P@ss!"

# Retrieve secret
python -m projects.vault_secrets.src.vault get DATABASE_PASSWORD
```

---

<div align="center">
  <sub>Maintained by <strong>Febriyansyah</strong> • Presales Infrastructure Operations Hub</sub>
</div>
