@echo off

setlocal
set GEM_HOME=%~dp0gem_home
set GEM_PATH=%~dp0gem_home
java -jar %~dp0jruby-complete-9.1.12.0.jar %*
