FROM python:3.9.5

WORKDIR /home/

RUN git clone https://github.com/Yongson-Kim/django-proj.git

WORKDIR /home/django-proj

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN python manage.py migrate

RUN python manage.py collectstatic

EXPOSE 8000

CMD ["gunicorn", "pragmatic.wsgi", "--bind", "0.0.0.0:8000"]
