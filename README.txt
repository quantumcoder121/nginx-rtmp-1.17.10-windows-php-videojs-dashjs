This package was forked from SwampApe/nginx-rtmp-1.17.10-windows.

What is it? My attempt to make it as easy as possible to set up a live-stream server on MS 
Windows. It's a super, duper, easy and fast way that "works out of the box" if you follow 
the guide. So if you don't want to worry about editing config files, and have it work as is, 
then make sure to unpack the contents to EXACTLY this folder: C:\Server\Nginx1.17 so that 
Nginx will be located at C:\Server\Nginx1.17\nginx.exe.

It has the RTMP module included, and that's why we want it for our streaming purposes. It can 
be used to create the files for a HLS live-stream and/or Dash live-stream. These are used to
display video content on mobile devices. Without special apps, mobile devices are unable to 
play RTMP streams. OBS, Wirecast and others all send your stream out in RTMP. So if you 
want your stream to be available for mobile users, you'll need to create HLS or Dash streams 
that a simple web-player like VideoJS can show in your website. This package automatically
creates HLS and Dash files, without using any extra processing power. 

I added some extra's like php7.4 and webplayers for HLS and Dash streams and the webpages to 
watch the HLS and DASH video-streams. Use these as an example for integration in to your own
website.

Before you run nginx.exe make sure that you have had a look at the conf/nginx.conf file. It 
might be required to edit some things in there so it will work in your specific environment.

Things you must still do yourself: Download and unzip PHP package for Windows, and download
unzip the Video.js and Dash.js packages and place them in the correct folders under the html
folder. Instructions and download links are in the README files in their respective folders.

Every time you make a change in the nginx.conf file, you can use the test-config.bat file
to see if nginx finds any errors in your config. If it finds no errors, you can now safely
(re)start Nginx. You need to restart nginx.exe every single time you made changes to the
config file so they become activate. First use the stop-nginx.bat file and check if it 
kills all the nginx processes by looking at your task manager (ctrl+alt+del, task-manager). 
If it doesn't kill all nginx processes you must end them manually by right clicking them
and end process. Now you can start nginx.exe again and your changes will be active.


If Windows blocked some files because you've downloaded them, you can easily unblock them
using Power Shell. Open Power Shell (Run as administrator) and type:

dir C:\Server\Nginx1.17 -Recurse | Unblock-File
dir C:\Server\Nginx1.17\PHP -Recurse | Unblock-File
dir C:\Server\Nginx1.17\html -Recurse | Unblock-File
dir C:\Server\Nginx1.17\extras -Recurse | Unblock-File
dir C:\Server\Nginx1.17\html\dashjs -Recurse | Unblock-File
dir C:\Server\Nginx1.17\html\videojs -Recurse | Unblock-File

If you have any questions don't think about bothering me for it. Use google like any other
well respected geek.


# nginx-rtmp-1.17.10-windows

    Nginx: 1.17.10
    RTMP Module: 1.2.1

Used autoconf settings:

auto/configure \
    --with-cc=cl \
    --with-debug \
    --prefix= \
    --conf-path=conf/nginx.conf \
    --pid-path=logs/nginx.pid \
    --http-log-path=logs/access.log \
    --error-log-path=logs/error.log \
    --sbin-path=nginx.exe \
    --http-client-body-temp-path=temp/client_body_temp \
    --http-proxy-temp-path=temp/proxy_temp \
    --http-fastcgi-temp-path=temp/fastcgi_temp \
    --http-scgi-temp-path=temp/scgi_temp \
    --http-uwsgi-temp-path=temp/uwsgi_temp \
    --with-cc-opt=-DFD_SETSIZE=1024 \
    --with-pcre=objs/lib/pcre-8.44 \
    --with-zlib=objs/lib/zlib-1.2.11 \
    --with-openssl=objs/lib/openssl-1.1.1d \
    --with-openssl-opt=no-asm \
    --with-http_ssl_module \
    --with-http_flv_module \
    --with-http_geoip_module \
    --with-http_gzip_static_module \
    --with-http_mp4_module \
    --with-http_secure_link_module \
    --with-http_slice_module \
    --with-http_v2_module \
    --with-mail \
    --with-mail_ssl_module \
    --with-stream \
    --with-stream_ssl_module \
    --add-module=nginx-rtmp-module \
    
