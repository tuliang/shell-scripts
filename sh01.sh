#!/bin/bash

echo "Hello!"

\curl -sSL https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm install 2.1.1

ruby -v

gem -v

gem install rails

rails -v

exit 0
