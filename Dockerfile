# FROM python:3.9

# WORKDIR /code

# COPY ./requirements.txt /code/requirements.txt

# RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# COPY ./src/app /code/app

# CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]

# # If running behind a proxy like Nginx or Traefik add --proxy-headers
# # CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80", "--proxy-headers"]


FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY ./app /app
