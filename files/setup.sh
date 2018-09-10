#!/bin/sh
# Deploys a simple Apache webpage with kittens as a service.

# cd /tmp
apt-get -y update > /dev/null 2>&1
apt install -y apache2 > /dev/null 2>&1

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow!</title></head>
  <body style="background-image: linear-gradient(red,white,blue);">
  <center><img src="https://designshack.net/wp-content/uploads/amairlines-6.jpg"></img></center>

  Hello - Sean was here.
  
  <img src="https://placekitten.com/800/600">

  <marquee><h1>Hello American Airlines!</h1></marquee>
  </body>
</html>
EOM

echo "Your demo is now ready."
