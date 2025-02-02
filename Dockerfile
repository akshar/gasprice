FROM python:3.6.15

RUN mkdir /app
COPY . /app

WORKDIR /app

ENV PYTHONPATH=${PYTHONPATH}:${PWD}
RUN pip install poetry
RUN poetry config virtualenvs.create false
RUN poetry install --no-dev

CMD ["gasprice", "-h", "0.0.0.0", "-p", "8080"]