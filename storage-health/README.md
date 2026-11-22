# Storage Health & Resiliency

[![Python](https://img.shields.io/badge/python-3.10%2B-blue.svg)](https://www.python.org/)
[![Tests](https://img.shields.io/badge/tests-4%20passed-brightgreen.svg)](tests/)
[![Domain](https://img.shields.io/badge/Domain-Storage%20Infrastructure-0ea5e9.svg)](src/)

Enterprise storage health, SMART attribute inspection, and performance auditing toolkit:
- **`src/checker.py`**: Audits block devices, mounted storage pools, validates SMART health status, simulates sequential/random IOPS, and benchmarks latency under enterprise workloads.

## CLI Usage

```bash
# Run storage health, SMART telemetry & IOPS benchmark
python -m src.checker
```

## Running Tests

```bash
pytest tests/ -v
```
