from alpine:latest

RUN apk add --no-cache python3 py3-pip

RUN pip3 install -r requirements.txt --no-cache

WORKDIR /app

COPY . /app

CMD ["python3", "app.py"]
EXPOSE 8888
