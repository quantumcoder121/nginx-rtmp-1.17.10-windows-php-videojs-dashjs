@ECHO OFF
ECHO Starting PHP FastCGI...
set PATH='C:\Server\Nginx1.17\PHP';%PATH%
"extras\RunHiddenConsole.exe" "PHP\php-cgi.exe" -b 127.0.0.1:9000
