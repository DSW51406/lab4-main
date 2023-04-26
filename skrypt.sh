#!/bin/bash
echo "Wybierz opcje: "
read input
    case $input in
        --date) echo "$(date)";;
        --logs) 
		for i in {1..100}
			do
				echo "log$i.txt" > log$i.txt
				me=`basename "$0"`
				echo $me >> log$i.txt
				echo $(date) >> log$i.txt
			done;;
        *) echo "Nie ma takiej opcji"
    esac