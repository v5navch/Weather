FROM ubuntu:16.04

MAINTANER Your Name "v5navch@hotmail.com"

RUN apt-get install -y python-pip python-dev

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 5000

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
