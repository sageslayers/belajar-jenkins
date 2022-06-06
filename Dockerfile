# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster
WORKDIR /app
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev ffmpeg libsm6 libxext6 cmake
COPY . /app
RUN pip install flask
ENV FLASK_APP=main.py
EXPOSE 5000
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
