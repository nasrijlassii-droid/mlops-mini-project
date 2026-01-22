# ---------- Base ----------
FROM python:3.11-slim

# ---------- Environment ----------
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1 \
    MLFLOW_TRACKING_URI=http://mlflow:5000 \
    MLFLOW_ARTIFACT_ROOT=/mlflow/artifacts

# ---------- System deps ----------
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential && rm -rf /var/lib/apt/lists/*

# ---------- Python deps ----------
COPY requirements.txt /app/requirements.txt
RUN pip install --upgrade pip && pip install -r /app/requirements.txt

# ---------- App ----------
WORKDIR /app
COPY src/ src/
COPY data/ data/
COPY .zen/ .zen/
COPY mlflow/ mlflow/

# ---------- Port ----------
EXPOSE 8000

# ---------- Default command (FastAPI) ----------
CMD ["uvicorn", "src.api:app", "--host", "0.0.0.0", "--port", "8000"]
