From ubuntu:2.04

Run apt-get update
Run apt-get install -y nginx zip curl

Run echo "daemon off;" >>/etc/nginx zip curl

Run curl -o /var/www/html/master.zip -L https://github.com/madhan8553216232/2048-game.git
Run cd /var/www/html/ && unzip master.zip && mv2048-master/* . && rm -rf 2048-master master.zip
expose 80

CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]
