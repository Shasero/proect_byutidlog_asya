FROM python:3.13.3-slim

WORKDIR /bot


COPY requirements.txt requirements.txt


RUN pip install --upgrade pip && pip install -r requirements.txt && chmod 755 . && chmod 644 .env


COPY . .

COPY .env .env

COPY bot/ .

EXPOSE 7111


ENV TZ=Europe/Moscow


CMD ["python", "-u", "main.py"]
