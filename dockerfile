FROM httpd:latest
RUN rm -rf /usr/local/apache2/htdocs/index.html
RUN apt update -y
RUN apt install wget -y
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page266/pro-line.zip
RUN apt install unzip -y
RUN unzip pro-line.zip
RUN rm -rf pro-line.zip
RUN mv 2111_pro_line/* /usr/local/apache2/htdocs
CMD httpd-foreground
