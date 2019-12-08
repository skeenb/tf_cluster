FROM ubuntu


COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh 

RUN apt update -y
RUN apt install -y vim apache2 apache2-utils net-tools
RUN apt clean
# EXPOSE 80 CMD [“apache2ctl”, “-D”, “FOREGROUND”]

ENTRYPOINT /entrypoint.sh
