FROM redash/base:latest

COPY . ./
RUN apt-get update
RUN apt-get install -y libaio1 libaio-dev unixodbc wget alien locales curl wget telnet redis-tools
RUN wget http://hydra.iptime.org/wordpress/wp-content/uploads/oracle/oracle-instantclient12.2-devel-12.2.0.1.0-1.x86_64.rpm
RUN wget http://hydra.iptime.org/wordpress/wp-content/uploads/oracle/oracle-instantclient12.2-sqlplus-12.2.0.1.0-1.x86_64.rpm
RUN wget http://hydra.iptime.org/wordpress/wp-content/uploads/oracle/oracle-instantclient12.2-basic-12.2.0.1.0-1.x86_64.rpm
RUN alien -c *.rpm
RUN dpkg -i *.deb
RUN pip install -r requirements_oracle_ds.txt
RUN pip install -r requirements.txt -r requirements_dev.txt -r requirements_all_ds.txt
RUN pip install ldap3==2.2.4

RUN npm install && npm run build && rm -rf node_modules
RUN chown -R redash /app
USER redash

ENTRYPOINT ["/app/bin/docker-entrypoint"]
