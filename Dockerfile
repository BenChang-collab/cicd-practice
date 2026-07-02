FROM python:3.11-slim
WORKDIR /app
COPY app/requirements.txt .
RUN apt-get update && \
    apt-get install -y nano
EXPOSE 5000

COPY . .

CMD ["python","app.py"]