# Network Security Sub-Infra

[![Python](https://img.shields.io/badge/python-3.10%2B-blue.svg)](https://www.python.org/)
[![Tests](https://img.shields.io/badge/tests-4%20passed-brightgreen.svg)](tests/)

Enterprise secrets vault, encryption, and network defense credentials:
- **`src/vault.py`**: Secure AES-256 encrypted credential store implementing PBKDF2 HMAC-SHA256 key derivation and Fernet symmetric cryptography.

## Quickstart

```bash
# Set secret key in vault
python -m src.vault set DB_PASS "SecretPass2026!"

# Retrieve secret
python -m src.vault get DB_PASS
```

## Testing

```bash
pytest tests/ -v
```
