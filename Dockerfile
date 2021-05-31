FROM ubuntu:18.04

RUN apt-get update 
RUN apt-get install python3-pip
RUN apt-get install flask
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 5000
CMD ["python", "./app.py"]
