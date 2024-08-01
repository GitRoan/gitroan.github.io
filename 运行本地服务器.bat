@echo off
chcp 65001 >nul

rem Set RUBYOPT environment variable to suppress deprecation warnings
rem RUBYOPT is used to pass additional command line options to the Ruby interpreter
rem Setting RUBYOPT to suppress deprecation warnings【Suppress: YJIT】
set RUBYOPT=-W:no-deprecated

rem Run Jekyll local server
rem The command 'bundle exec jekyll serve' starts the Jekyll local server
rem The server will run at http://127.0.0.1:4000/
rem bundle exec jekyll clean
bundle exec jekyll serve

 chcp 936 >nul
 pause
