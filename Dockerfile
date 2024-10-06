FROM python:3.10-slim
WORKDIR /home/dagster

RUN pip install \
    dagster==1.8 \
    dagster-postgres \
#    dagster-aws \
    dagster-k8s \
    dagster-celery[flower,redis,kubernetes] \
    dagster-celery-k8s
#    dbt-duckdb \
#    duckdb \
#    dagster-dbt
EXPOSE 3030
# Get example pipelines
COPY ./wb_etl/ wb_etl/
#ENTRYPOINT ["dagster", "api", "grpc", "-p", "3030"]
