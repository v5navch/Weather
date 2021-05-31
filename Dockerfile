FROM ubuntu 
pip3 install -r requirements.txt
ADD app.py /
WORKDIR /
EXPOSE 5000
CMD [“python3”,”app.py”]
