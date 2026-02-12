FROM python:3.13.11-slim
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/

WORKDIR /code
ENV PATH="/code/.venv/bin:$PATH"

# copy dependencies 
COPY pyproject.toml .python-version uv.lock ./

# install dependencies inside uv
RUN uv sync --locked

# copy ingestion pipeline
COPY ingest_data.py .

ENTRYPOINT ["uv", "run", "python", "ingest_data.py"]