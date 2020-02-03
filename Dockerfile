FROM sandeepnagar/ubuntu:ffmpeg
COPY index.html /var/www/html 
RUN apt update && apt install -y curl vim apache2 
EXPOSE 80 
CMD /usr/sbin/apache2ctl -D FOREGROUND
