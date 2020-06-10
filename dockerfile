FROM python:3
COPY . /work
WORKDIR /work

EXPOSE 3333

CMD sudo apt-get update
RUN pip install --no-cache-dir -r requirements.txt

CMD gunicorn --workers 2 --log-level info --bind 0.0.0.0:3333 app:app
