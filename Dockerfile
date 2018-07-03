FROM python:alpine

RUN pip install hy
RUN mkdir /source
WORKDIR /source