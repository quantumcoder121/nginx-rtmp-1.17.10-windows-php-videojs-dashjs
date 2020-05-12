@ECHO OFF
ECHO Starting PHP FastCGI...

# SET THIS TO WHERE YOU STORED PHP

set PATH='C:\Server\Nginx1.17\PHP';%PATH%
"C:\Server\Nginx1.17\extras\RunHiddenConsole.exe" "C:\Server\Nginx1.17\PHP\php-cgi.exe" -b 127.0.0.1:9000
