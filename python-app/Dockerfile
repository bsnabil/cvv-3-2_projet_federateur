FROM python:3.9-slim

RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libffi-dev \
    && apt-get clean

WORKDIR /app

RUN python -m venv /app/venv
COPY . .

RUN /bin/bash -c "source /app/venv/bin/activate"
RUN pip install mlflow scikit-learn shap matplotlib
RUN export MLFLOW_EXPERIMENT_NAME='test1'
RUN export MLFLOW_TRACKING_URI='http://192.168.56.10'
CMD ["python3", "main.py"]
