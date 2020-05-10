@ECHO OFF
ECHO Starting PHP FastCGI...
set PATH='D:\Apps\Nginx1.17\PHP';%PATH%
"D:\Apps\Nginx1.17\extras\RunHiddenConsole.exe" "D:\Apps\Nginx1.17\PHP\php-cgi.exe" -b 127.0.0.1:9000
