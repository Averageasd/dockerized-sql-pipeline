docker network ls
docker build -t taxi_ingest:v001 .
# run ingestion script on same network as pgadmin and postgres
docker run -it --rm\
  --network=dockerized-sql-pipeline_default \
  taxi_ingest:v001 \
    --pg-user=root \
    --pg-pass=root \
    --pg-host=pgdatabase \
    --pg-port=5432 \
    --pg-db=taxi_data \
    --target-table=taxi_data