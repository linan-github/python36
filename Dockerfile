FROM python:3.6-slim as BUILD

RUN apt-get update \
&& apt-get install build-essential gcc python3-dev  libkrb5-dev unixodbc-dev -y \
&& apt-get clean
ENTRYPOINT ["bash"]