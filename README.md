# Mini‑projet MLOps – End‑to‑End

Ce dépôt montre comment construire un workflow MLOps complet :

- **Git** : versioning du code  
- **DVC** : versioning des données / artefacts  
- **ZenML** : orchestration du pipeline  
- **MLflow** : suivi des runs (paramètres, métriques, artefacts)  
- **FastAPI + Docker‑Compose** : API d’inférence conteneurisée

## Prérequis

| Outil | Installation |
|------|---------------|
| WSL 2 (Ubuntu) | Windows → Features → **Windows Subsystem for Linux** + **Virtual Machine Platform** + redémarrage |
| Docker Desktop | <https://www.docker.com/products/docker-desktop> (ouvrir, icône verte) |
| Git | `sudo apt install -y git` |
| Python 3.11 + venv | `sudo apt install -y python3 python3-venv` |
| Environnement virtuel | `python3 -m venv .venv && source .venv/bin/activate` |
| CLI MLOps | `pip install "dvc[s3]" "zenml[server]" mlflow fastapi uvicorn[standard] pandas scikit-learn matplotlib seaborn"` |

*Le reste du README sera complété au fur et à mesure du projet.*  
