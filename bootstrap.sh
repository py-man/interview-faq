#!/bin/bash --login

cd /screener
apt-get remove -y ruby 
sudo apt-get install -y ruby1.9.1-full

apt-get update -y
apt-get install -y docker

##Install Flatten Screener Gem
gem install ./flatten/screener-0.0.1.gem 

##Install Gems for Screener Distance
gem install levenshtein
gem install Text

##Install Topn Screener Gem
gem install ./topn/topn-0.0.1.gem






