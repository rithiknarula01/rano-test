FROM redhat/ubi9
RUN yum install httpd -y && yum install unzip -y
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/spering.zip /var/www/html
RUN unzip spering.zip -d /var/www/html && mv spering-html/* /var/www/html
RUN mkdir /var/www/html/pqr && touch /var/www/html/pqr/abc.txt
CMD ["httpd", "-DFOREGROUND"]
