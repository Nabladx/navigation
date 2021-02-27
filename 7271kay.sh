m!/bin/bash
echo "Navigator by Kirilichev A.Y."
echo "1 - current directory, 2 - climb the directory above, 3 - go to catalog, 0 - exit"
nav=5
while [ "$nav" != 0 ]
do
  dir `pwd`
  down=`ls -d */`
  up=`cd`
  read nav
  if [ $nav -eq 1 ]; then
    echo $dir
  elif [ $nav -eq 2 ]; then
    cd ..
  elif [ $nav -eq ]; then
    echo $down
    read go
    cd "$go"
  fi;
done
exit;
