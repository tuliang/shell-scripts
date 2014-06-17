#!/bin/bash

echo "Hello!"

export PATH=$PATH:/opt/rvm/bin:/opt/rvm/sbin

\curl -sSL https://get.rvm.io | bash -s stable

source ~/.bashrc
source ~/.bash_profile

sed -i 's!cache.ruby-lang.org/pub/ruby!ruby.taobao.org/mirrors/ruby!' $rvm_path/config/db

rvm install 2.1.1

ruby -v

gem -v

gem sources --remove https://rubygems.org/
gem sources -a https://ruby.taobao.org/
gem sources -l

gem install rails

rails -v

exit 0
