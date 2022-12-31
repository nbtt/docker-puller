FROM python:3.9.6-slim
WORKDIR /usr/src/app

ADD ./requirements.txt /usr/src/app/requirements.txt
RUN pip install -r requirements.txt

COPY ./ /usr/src/app
CMD waitress-serve --port=5000 --call dockerpuller/app:create_app