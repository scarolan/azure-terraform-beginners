#!/bin/sh
# Deploys a simple Apache webpage with kittens as a service.

# cd /tmp
apt-get -y update > /dev/null 2>&1
apt install -y apache2 > /dev/null 2>&1

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Yoga</title></head>
  <body style="background-image: linear-gradient(blue,indigo,violet);">
  <center><img src="http://www.stevensegallery.com/800/600"></img></center>
  <marquee><h1>Spiritual Steven</h1></marquee>
  </body>
</html>
EOM

echo "Your demo is now ready."

