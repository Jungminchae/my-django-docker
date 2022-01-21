FROM python:3.8-slim-buster

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . /usr/src/app/

RUN pip install --upgrade pip
RUN pip install -r requirements/requirements-dev.txt

CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000", "--settings=config.settings.settings-dev" ]