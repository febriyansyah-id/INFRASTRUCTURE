# Compute Sub-Infra

[![Python](https://img.shields.io/badge/python-3.10%2B-blue.svg)](https://www.python.org/)
[![Tests](https://img.shields.io/badge/tests-9%20passed-brightgreen.svg)](tests/)

Compute automation, orchestration, and host telemetry toolkit:
- **`src/compose.py`**: Production Docker Compose generator for multi-tier web and monitoring stacks.
- **`src/templates.py`**: Cloud-init VM instantiation and automated setup templates.
- **`src/agent.py`**: System health daemon auditing CPU, RAM, and disk utilization with configurable alert thresholds.

## Quickstart

```bash
# Generate Docker web stack
python -m src.compose --stack web

# Run system health check
python -m src.agent

# Generate cloud-init template
python -m src.templates --template cloud-init
```

## Testing

```bash
pytest tests/ -v
```
