FROM python:latest

RUN pip install flask



WORKDIR /home/sample_app

COPY ./static /home/sample_app/static
COPY ./templates /home/sample_app/templates
COPY sample_app.py /home/sample_app/

EXPOSE 5555

CMD ["python", "sample_app.py"]
