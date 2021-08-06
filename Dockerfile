RUN python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/jcw-logan/pragmatic.git

WORKDIR /home/pragmatic/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY= django-insecure-z3er(0yquer5ma-*=^*g**p+7e)&z%1e_p7v394%g^ea=dqm*w" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]