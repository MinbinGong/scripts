#!/bin/sh

sudo apt install -y build-essential
sudo apt install -y bison
sudo apt install -y flex
sudo apt install -y libglib2.0-dev

for D in $(find ./ -mindepth 1 -maxdepth 1 -type d); 
  do (echo "$D enters..." && cd "$D" && ./configure && make && sudo make
    install)
done

