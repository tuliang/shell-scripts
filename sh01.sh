#!/bin/bash

echo "Hello!"

\curl -sSL https://get.rvm.io | bash -s stable

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile

sed -i 's!cache.ruby-lang.org/pub/ruby!ruby.taobao.org/mirrors/ruby!' $rvm_path/config/db

rvm install 2.1.1
rvm use 2.1.1 --default

ruby -v

gem -v

gem sources --remove https://rubygems.org/
gem sources -a https://ruby.taobao.org/
gem sources -l

gem install rails

rails -v

exit 0
