# Network Discovery & Topology

[![Python](https://img.shields.io/badge/python-3.10%2B-blue.svg)](https://www.python.org/)
[![Tests](https://img.shields.io/badge/tests-3%20passed-brightgreen.svg)](tests/)
[![Domain](https://img.shields.io/badge/Domain-Network%20Infrastructure-0ea5e9.svg)](src/)

Network discovery, subnet inventory scanning, and port mapper toolkit:
- **`src/scanner.py`**: High-performance multi-threaded ICMP subnet sweep, TCP service port prober (SSH, HTTP, HTTPS, SNMP, SMB), and automated network inventory reporting.

## CLI Usage

```bash
# Scan target network subnet and inventory open ports
python -m src.scanner --target 192.168.1.0/24
```

## Running Tests

```bash
pytest tests/ -v
```
