FROM python:3.8.3-slim

LABEL maintainer = "Patricia <cikunjoroge4@gmail.com"
WORKDIR /app
VOLUME /Python_Img 

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# RUN python manage.py migrate
# RUN python manage.py collectstatic --noinput

EXPOSE 8000


ENTRYPOINT ["python3","manage.py","runserver","0.0.0.0:8000"]
