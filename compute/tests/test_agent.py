import os, sys
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))
import pytest
from agent import check_health, simulate_metrics


def test_simulate_metrics_keys():
    result = simulate_metrics()
    assert "cpu_percent" in result
    assert "memory_percent" in result
    assert "disk_percent" in result
    assert "status" in result


def test_simulate_metrics_status():
    result = simulate_metrics()
    assert result["status"] == "HEALTHY"


def test_simulate_metrics_ranges():
    result = simulate_metrics()
    assert 0 <= result["cpu_percent"] <= 100
    assert 0 <= result["memory_percent"] <= 100
    assert 0 <= result["disk_percent"] <= 100
