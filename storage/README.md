# Storage Sub-Infra

[![Python](https://img.shields.io/badge/python-3.10%2B-blue.svg)](https://www.python.org/)
[![Tests](https://img.shields.io/badge/tests-4%20passed-brightgreen.svg)](tests/)

Storage health, SMART attribute inspection, and performance auditing toolkit:
- **`src/checker.py`**: Audits mounted storage pools, validates SMART status, simulates IOPS (sequential/random), and benchmarks latency.

## Quickstart

```bash
# Run storage health & SMART audit
python -m src.checker
```

## Testing

```bash
pytest tests/ -v
```
