
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

WORKDIR /app

COPY requirements.txt /app/requirements.txt

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]