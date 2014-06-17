#!/bin/bash

echo "Hello!"

\curl -sSL https://get.rvm.io | bash -s stable

source /etc/profile.d/rvm.sh

rvm install 2.1.1

exit 0
