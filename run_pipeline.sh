#!/usr/bin/env bash
# -------------------------------------------------
# Lancement du pipeline ZenML (baseline + variation)
# -------------------------------------------------
set -euo pipefail

# Le script se place dans le même répertoire que ce fichier
cd "$(dirname "$0")"

# -------------------------------------------------
# 1️⃣ Baseline (C = 1.0, max_depth = 5)
# -------------------------------------------------
zenml pipeline run iris_classification_pipeline \
    --extra 'C=1.0 max_depth=5'   # <-- **PAS DE --settings=container**

# -------------------------------------------------
# 2️⃣ Variation (C = 0.5, max_depth = 10)
# -------------------------------------------------
zenml pipeline run iris_classification_pipeline \
    --extra 'C=0.5 max_depth=10'  # <-- **PAS DE --settings=container**

# -------------------------------------------------
# Fin du script
# -------------------------------------------------
echo "✅ Pipelines terminés – consultez MLflow UI à http://localhost:5000"
