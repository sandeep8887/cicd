FROM sandeepnagar/ubuntu:ffmpeg
RUN apt update && apt install -y curl vim apache2 
COPY index.html /var/www/html 
EXPOSE  80 
CMD /usr/sbin/apache2ctl -D FOREGROUND
