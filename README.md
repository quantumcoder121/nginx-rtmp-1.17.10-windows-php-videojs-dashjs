forked from SwampApe/nginx-rtmp-1.17.10-windows

    Nginx: 1.17.10
    RTMP Module: 1.2.1

I added some extra's like php7.4 and web players for HLS and Dash streams and the webpages to show them.

Things you must do yourself: Download and unzip PHP package for Windows, and download/unzip the
Video.js and Dash.js packages and place them in the correct folders under the html folder.


# nginx-rtmp-1.17.10-windows

Autoconf settings

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
    
