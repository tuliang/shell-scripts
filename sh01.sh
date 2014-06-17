#!/bin/bash

echo "Hello!"

\curl -sSL https://get.rvm.io | bash -s stable

rvm install 2.1.1

exit 0
