FROM ubuntu
RUN apt-get update && apt-get install python3 python3-pip -y
RUN pip install flask
COPY . /app
WORKDIR /app
ENTRYPOINT FLASK_APP=main.py flask run
