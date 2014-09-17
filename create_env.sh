#!/bin/bash

\curl -sSL https://get.rvm.io | bash
source /home/guest/.rvm/scripts/rvm
rvm install 2.0.0-p353
rvm use 2.0.0-p353
gem install bundler
gem install rails
gem install compass
rails -v
