FROM python:3.10.4-slim-buster
LABEL mainteiner="vadim.shkarbul@gmail.com"

ENV PYTHONUNBUFERED 1

WORKDIR app/

COPY requirements.txt requirements.txt

RUN apt-get update && apt-get -y install libpq-dev gcc

RUN pip3 install -r requirements.txt

COPY . .

RUN mkdir -p /vol/app/media

RUN adduser \
    --disabled-password \
    --no-create-home \
    django-user

RUN chown -R django-user:django-user /vol/
RUN chmod -R 755 /vol/app/

USER django-user
