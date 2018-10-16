from postgres:11
RUN apt-get -y update
RUN apt-get install -y cron
ADD crontab /etc/cron.d/mypackage
RUN chmod 0644 /etc/cron.d/mypackage
ADD bdd.sh /bin/bdd
ADD start.sh /bin/start-cron
RUN touch /var/log/cron.log
CMD start-cron