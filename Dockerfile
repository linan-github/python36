FROM python:3.6-slim

RUN apt-get update \
&& apt-get install build-essential gcc python3-dev  libkrb5-dev unixodbc-dev libgsl-dev tdsodbc -y \
&& apt-get clean
RUN pip install --index-url=https://bcms.bloomberg.com/pip/simple/ blpapi
ENTRYPOINT ["/bin/bash"]