FROM python:3.11.6-slim-bookworm as builder

WORKDIR /project

COPY pyproject.toml pdm.lock ./
COPY src src/

RUN pip install pdm && pdm install --no-editable --group api


FROM python:3.11.6-slim-bookworm

WORKDIR /project

ENV PYTHONPATH=/project
COPY --from=builder /project/.venv/lib/python3.11/site-packages .

CMD ["python", "-m", "seagull.api.__init__"]
