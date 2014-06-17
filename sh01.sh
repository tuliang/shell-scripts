#!/bin/bash

echo "Install RVM"
\curl -sSL https://get.rvm.io | bash -s stable

# 环境变量
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >>~/.bashrc
source ~/.bashrc

# ruby更改为taobao源
sed -i 's!cache.ruby-lang.org/pub/ruby!ruby.taobao.org/mirrors/ruby!' $rvm_path/config/db

# 安装ruby
rvm install 2.1.1
rvm use 2.1.1 --default

ruby -v

gem -v

# gem更改为taobao源
gem sources --remove https://rubygems.org/
gem sources -a https://ruby.taobao.org/
gem sources -l

# 安装rails
gem install rails

rails -v

exit 0
