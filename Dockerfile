# Use Airflow 2.10.5 with Python 3.9
FROM apache/airflow:2.10.5-python3.9

# Install system dependencies
USER root
RUN apt-get update && \
    apt-get install -y \
    cmake \
    build-essential \
    libssl-dev \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Python packages
USER airflow
RUN pip install --upgrade pip==23.0.1
RUN pip install \
    apache-airflow-providers-snowflake==4.0.2 \
    dbt-core==1.9.3 \
    dbt-snowflake==1.9.2 \
    snowflake-connector-python \
    sqlmesh==0.73.1 \
    --no-cache-dir