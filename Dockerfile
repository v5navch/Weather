FROM python:3.8
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
pip install Flask
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 5000
CMD ["python", "./app.py"]
