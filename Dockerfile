FROM python:3.9.6-slim

WORKDIR /usr/src/app
ADD ./requirements.txt /usr/src/app/requirements.txt
RUN pip install -r requirements.txt

WORKDIR /usr/src/app/dockerpuller
COPY ./ /usr/src/app
CMD waitress-serve --port=5000 --call app:create_app