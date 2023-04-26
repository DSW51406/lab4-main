#!/bin/bash
echo "Wybierz opcje: "
read input
    case $input in
        --date) echo "$(date)";;
        --logs) 
		echo "ile plików log, pozostaw puste i wciśnij enter, aby utworzyć domyślne 100"
		read var1
		if [ -z $var1 ] 
		then
		for i in {1..100}
			do
				echo "log$i.txt" > log$i.txt
				me=`basename "$0"`
				echo $me >> log$i.txt
				echo $(date) >> log$i.txt
			done
			else
			for i in $( seq 0 $var1 )
			do
				echo "log$i.txt" > log$i.txt
				me=`basename "$0"`
				echo $me >> log$i.txt
				echo $(date) >> log$i.txt
			done
			fi;;

        *) echo "Nie ma takiej opcji"
    esac