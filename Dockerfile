FROM python:3.6-slim as BUILD

RUN apt-get update \
&& apt-get install build-essential gcc python3-dev  libkrb5-dev unixodbc-dev -y \
&& apt-get clean
WORKDIR /app
RUN pip install pandas==0.25.3 pyodbc requests-kerberos
RUN pip install plotly paramiko suds-jurko pymongo psutil ldap3 scp simplejson elasticsearch coverage psycopg2
RUN pip install werkzeug==0.16.0 pyarrow==0.14.0 setproctitle==1.1.10 python-json-logger jupyterhub==1.0.0 jhub_remote_user_authenticator
RUN pip install blpapi
ENTRYPOINT ["bash"]