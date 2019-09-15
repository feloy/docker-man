FROM docker.pkg.github.com/feloy/docker-man/docker-man

ENV PORT=80

RUN apt update \
 && apt install -y man2html \
 && a2enmod cgid rewrite

COPY ports.conf /etc/apache2/
COPY index.html /var/www/html

CMD apachectl -D FOREGROUND
