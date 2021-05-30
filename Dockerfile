FROM python:3.7-alpine
COPY . /app
WORKDIR /app
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=http://127.0.0.1:5000/
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD ["flask", "run"]
CMD [app.py]
