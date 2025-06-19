@echo off
rem ---- 清掉 Ruby 默认会加的 -Z 选项 ----
set RUBYOPT=
rem ---- 用 Ruby 自己启动 Bundler 和 RuboCop，不走 bundle.bat ----
ruby -rbundler/setup -S rubocop %1
