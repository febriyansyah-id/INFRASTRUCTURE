# Network Security Vault

[![Python](https://img.shields.io/badge/python-3.10%2B-blue.svg)](https://www.python.org/)
[![Tests](https://img.shields.io/badge/tests-4%20passed-brightgreen.svg)](tests/)
[![Domain](https://img.shields.io/badge/Domain-Network%20Security-0ea5e9.svg)](src/)

Enterprise secrets vault, encryption engine, and network defense credential security:
- **`src/vault.py`**: Cryptographic credential vault implementing AES-256 (Fernet) symmetric encryption with PBKDF2 HMAC-SHA256 key derivation and secure file serialization.

## CLI Usage

```bash
# Store an encrypted secret in the vault
python -m src.vault set DATABASE_PASSWORD "Production_Secret_P@ss!"

# Retrieve a decrypted secret
python -m src.vault get DATABASE_PASSWORD

# List all stored keys
python -m src.vault list
```

## Running Tests

```bash
pytest tests/ -v
```
