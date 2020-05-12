This folder holds, as the name might make you suspect, all of our configuration files. 
Go though them and use whatever you need. The most important one is nginx.conf.
You must definately go through that one because it might contain some variables that
you must change so it will work in your environment. If you would save this complete
package to exactly this folder: C:\Server\Nginx1.17\ then there's nothing you have to
edit in the config files and it should run out of the box. The test-nginx.conf is the
old nginx.conf that was included by the person where we forked this github from.
I stronly advice to google and teach yourself a thing or two on what the variables 
in the nginx.conf exactly do. And how to change them, but also to find out more about
variables that aren't included is this one. One example to comes to mind is how to 
set up certificates and such so you could host the video fragment files from a
https location. This could in some cases be a requirement. While your at it also 
do some investigating in how to setup a reverse proxy using Nginx because it's
possiblities are endless.
