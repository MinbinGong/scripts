#/bin/sh

for D in $(find ./ -mindepth 1 -maxdepth 1 -type d); 
  do (echo "Updating $D..." && cd "$D" && git fetch -a && git pull --rebase &&
    echo "$D updated"); 
done
