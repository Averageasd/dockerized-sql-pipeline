# Taxi data pipeline

## About
A DE pipeline that fetches taxi data in NYC from the web, clean, and load it into Postgresql Database. After that, SQL queries are executed to do some data analysis on the data.

## Technologies:
**Pandas DataFrame** : dataframe that contains raw data from the web. utitilites to read data from source and write data into database
**SQLAlchemy** : db connector
**Postgresql**: database
**uv**: package manager, virtual env.
**Docker**: containers for pipeline and postgresql db.

## How to run:
**Step 1**: Run uv sync
**Step 2**: Run docker-compose.yml to create database and pgadmin
**Step 3**: Run run-taxi-pipeline.sh to run data pipeline that writes data into the database

