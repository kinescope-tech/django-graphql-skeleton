FROM python:3.7.8-slim
LABEL maintainer="Maintainer Email <maintainer@email.com>"

ENV PYTHONUNBUFFERED 1
ENV GQ_ENV production
WORKDIR /code
RUN apt-get update && apt-get install -y gcc libcurl4-openssl-dev libssl-dev binutils libproj-dev
ADD ./{{project_name}}/requirements.txt /code/requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt
ADD {{project_name}}/ /code
RUN python3 manage.py collectstatic --no-input

CMD ["./run.sh"]
