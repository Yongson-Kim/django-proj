FROM python:3.9.5

WORKDIR /home/

RUN git clone https://github.com/Yongson-Kim/django-proj.git

WORKDIR /home/django-proj

RUN pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
