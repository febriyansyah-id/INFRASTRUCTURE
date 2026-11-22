.PHONY: setup test test-compute test-storage test-network test-sec scan-net generate-compose run-agent check-storage generate-iac vault lint clean

setup:
	pip install -r requirements.txt

test:
	python -m pytest -v

test-compute:
	pytest compute/ -v

test-storage:
	pytest storage/ -v

test-network:
	pytest network/ -v

test-sec:
	pytest network-security/ -v

scan-net:
	python -m network.src.scanner --target 192.168.1.0/24

generate-compose:
	python -m compute.src.compose --stack web

run-agent:
	python -m compute.src.agent

check-storage:
	python -m storage.src.checker

generate-iac:
	python -m compute.src.templates --template cloud-init

vault:
	python -m network-security.src.vault --help

lint:
	ruff check . --ignore E501 || true

clean:
	find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".pytest_cache" -exec rm -rf {} + 2>/dev/null || true
