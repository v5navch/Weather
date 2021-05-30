FROM python:alpine3.7
COPY . /Weather
WORKDIR /Weather
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
