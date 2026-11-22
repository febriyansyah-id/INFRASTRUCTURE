.PHONY: setup test scan-net generate-compose run-agent check-storage generate-iac vault lint clean

setup:
	pip install -r requirements.txt

test:
	python -m pytest -v

scan-net:
	python -m network.net_discovery.src.scanner --target 192.168.1.0/24

generate-compose:
	python -m compute.docker_stacks.src.compose --stack web

run-agent:
	python -m compute.monitor_agent.src.agent

check-storage:
	python -m storage.storage_health.src.checker

generate-iac:
	python -m compute.iac_scripts.src.templates --template cloud-init

vault:
	python -m network_security.vault_secrets.src.vault --help

lint:
	ruff check . --ignore E501 || true

clean:
	find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".pytest_cache" -exec rm -rf {} + 2>/dev/null || true
