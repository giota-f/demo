FROM python:3.6
EXPOSE 5000

COPY . /opt/flask
WORKDIR /opt/flask
RUN pip install -r requirements.txt

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
RUN ln -s /usr/local/bin/docker-entrypoint.sh /

RUN useradd -m app
USER app
ENTRYPOINT ["docker-entrypoint.sh"]
#ENTRYPOINT ["python", "./app.py"]
#CMD ["./initdb.py"]
