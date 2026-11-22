.PHONY: setup test test-compute test-storage test-network test-sec scan-net generate-compose run-agent check-storage generate-iac vault lint clean

setup:
	pip install -r requirements.txt

test:
	python -m pytest -v

test-compute:
	pytest compute-orchestrator/ -v

test-storage:
	pytest storage-health/ -v

test-network:
	pytest network-discovery/ -v

test-sec:
	pytest network-security-vault/ -v

scan-net:
	python -m network-discovery.src.scanner --target 192.168.1.0/24

generate-compose:
	python -m compute-orchestrator.src.compose --stack web

run-agent:
	python -m compute-orchestrator.src.agent

check-storage:
	python -m storage-health.src.checker

generate-iac:
	python -m compute-orchestrator.src.templates --template cloud-init

vault:
	python -m network-security-vault.src.vault --help

lint:
	ruff check . --ignore E501 || true

clean:
	find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".pytest_cache" -exec rm -rf {} + 2>/dev/null || true
