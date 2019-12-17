FROM python:3.7

RUN mkdir /staticsiteflask
WORKDIR /staticsiteflask
COPY requirements.txt /staticsiteflask
COPY usersDb.db /staticsiteflask
COPY table.py /staticsiteflask
COPY run.py /staticsiteflask
COPY templates /staticsiteflask/templates
COPY static /staticsiteflask/static

RUN pip install -r requirements.txt

EXPOSE 5000
CMD ["python", "/staticsiteflask/run.py"]