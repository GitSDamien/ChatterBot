FROM python:alpine

RUN apk update
RUN apk add git 

RUN mkdir /apps

WORKDIR /apps
# ENV GIT_SSL_NO_VERIFY=1
# RUN git clone https://github.com/anpisolutions/chatterbot.git

COPY requirements.txt /apps/
COPY app.py /apps/
RUN pip install --upgrade setuptools
RUN pip install --no-deps package_name
RUN pip install --upgrade pip
RUN pip install pipenv

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["app.py"]