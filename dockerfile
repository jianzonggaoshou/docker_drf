FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt https://pypi.doubanio.com/simple/ --trusted-host pypi.doubanio.com
ADD . /code/