#!/usr/bin/env bash

operation='provide operation mode'
n_files=0
path='./Screenshots/'

while getopts "o:n:p:h" options; do
      case $options in 
      o)
            operation=${OPTARG};;
      n)    n_files=${OPTARG};;
      p)    path=${OPTARG};;
      h)    echo "List of arguments: o = set operation mode(rename or add); n = number of files; p = filepath; h = help";;
      [?])
            echo "Invalid flag use. Use -h to see help"
            exit 1
            ;;
      esac
done

if [[ $operation = rename ]]; 
 then
      echo "Rename files in directory $path"
      a=1
      for i in $path*.png; do
            mv "$i" "$path$a.png"
            let a=a+1
      done
elif [[ $operation = add ]];
 then
      echo "Adding files to README.md";
      for i in $(seq 1 $n_files); do echo "![]($path/$i.png)" >> README.md; done
else
      echo "Invalid Options. Use -h to see valid options.";

fi;