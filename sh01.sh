#!/bin/bash

echo "Hello!"

export PATH=$PATH:/opt/rvm/bin:/opt/rvm/sbin

\curl -sSL https://get.rvm.io | bash -s stable

source ~/.bashrc
source ~/.bash_profile

sed -i -e 's/ftp\.ruby-lang\.org\/pub\/ruby/ruby\.taobao\.org\/mirrors\/ruby/g' ~/.rvm/config/db

rvm install 2.1.1

ruby -v

gem -v

gem install rails

rails -v

exit 0
