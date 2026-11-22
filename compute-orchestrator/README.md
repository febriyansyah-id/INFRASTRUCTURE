# Compute Orchestrator

[![Python](https://img.shields.io/badge/python-3.10%2B-blue.svg)](https://www.python.org/)
[![Tests](https://img.shields.io/badge/tests-9%20passed-brightgreen.svg)](tests/)
[![Domain](https://img.shields.io/badge/Domain-Compute%20Infrastructure-0ea5e9.svg)](src/)

Production-ready compute automation, container orchestration, and host telemetry toolkit:
- **`src/compose.py`**: Production Docker Compose generator for multi-tier web, app, database, and Prometheus/Grafana monitoring stacks.
- **`src/templates.py`**: Cloud-init automated VM provisioning and system boot configuration engine.
- **`src/agent.py`**: Host telemetry monitoring daemon auditing CPU, RAM, and disk utilization with configurable alert thresholds.

## CLI Usage

```bash
# Generate Docker web stack
python -m src.compose --stack web

# Run system health monitor agent
python -m src.agent

# Generate cloud-init provisioning template
python -m src.templates --template cloud-init
```

## Running Tests

```bash
pytest tests/ -v
```
