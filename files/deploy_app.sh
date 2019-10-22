#!/bin/bash
# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="https://media.giphy.com/media/3tEZt8tEbJizZMgFg4/giphy.gif"></img></center>
  <center><h2>WTF!!!!!</h2></center>

  Welcome to ${PREFIX}'s app. Jaaa!
  <!-- END -->
  
  </div>
  </body>
</html>
EOM

echo "Script complete."