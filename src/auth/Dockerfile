FROM python:3.10-slim-buster

ENV PYTHONUNBUFFERED 1
ENV PATH="/root/.local/bin:$PATH"
ENV PYTHONPATH='/'

COPY ./poetry.lock /
COPY ./pyproject.toml /

RUN apt-get update -y && apt-get install -y pkg-config \
&& apt-get install -y --no-install-recommends --no-install-suggests \
build-essential default-libmysqlclient-dev \
&& apt-get install curl -y \
&& curl -sSL https://install.python-poetry.org | python3 - \
&& poetry config virtualenvs.create false \
&& poetry install \
&& apt-get remove curl -y

COPY . /app
WORKDIR /app

EXPOSE 5000
CMD ["python3", "server.py"]
