This package was forked from SwampApe/nginx-rtmp-1.17.10-windows.

It has RTMP module working out of the box and very easy to setup on your localhost (or any
other network location) to create HLS and DASH video-fragment files from an incoming RTMP
live-stream, that can be used for playback on a website. Or even from our localhost since 
Nginx is a web-server above anything else. The files that you can access through a web-
browser are all stored in the html folder and can be found at http://localhost:8050

I added some extra's like php7.4 and players for HLS and Dash streams and the webpages to 
watch the HLS and DASH video-streams. Use these as an example for integration in to your own
website.

Things you must still do yourself: Download and unzip PHP package for Windows, and download
unzip the Video.js and Dash.js packages and place them in the correct folders under the html
folder. Instructions and download links are in the README files in their respective folders.

Before you run nginx.exe make sure that you have had a look at the conf/nginx.conf file. It 
might be required to edit some things in there so it will work in your specific environment.

Super duper easy fast "works out of the box" solution would be to download this package and
store it in exactly this location: C:\Server\Nginx1.17\. If you do so, you should be good to
go and don't have to edit any config or .bat files.

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
    
