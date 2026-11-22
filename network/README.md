# Network Sub-Infra

[![Python](https://img.shields.io/badge/python-3.10%2B-blue.svg)](https://www.python.org/)
[![Tests](https://img.shields.io/badge/tests-3%20passed-brightgreen.svg)](tests/)

Network discovery, IPAM scanning, and port mapper toolkit:
- **`src/scanner.py`**: Subnet ping sweep, TCP service port probing, and automated inventory report generation.

## Quickstart

```bash
# Scan target network subnet
python -m src.scanner --target 192.168.1.0/24
```

## Testing

```bash
pytest tests/ -v
```
