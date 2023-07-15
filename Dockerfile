FROM python:3.9

WORKDIR /home/ubuntu/django-notes-app

COPY requirements.txt /home/ubuntu/django-notes-app
RUN pip install -r requirements.txt

COPY . /home/ubuntu/django-notes-app

EXPOSE 8000

CMD python /home/ubuntu/django-notes-app/manage.py runserver 0.0.0.0:8000
