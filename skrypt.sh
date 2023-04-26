#!/bin/bash
echo "Wybierz opcje: "
read input
    case $input in
        --date|-d) echo "$(date)";;
        --logs|-l) 
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
		--error|-e)
		echo "ile plików error, pozostaw puste i wciśnij enter, aby utworzyć domyślne 100"
		read var2
		if [ -z $var2 ] 
		then
		for i in {1..100}
			do
				echo "error$i.txt" > error$i.txt
				me=`basename "$0"`
				echo $me >> error$i.txt
				echo $(date) >> error$i.txt
			done
			else
			for i in $( seq 0 $var2 )
			do
				echo "error$i.txt" > error$i.txt
				me=`basename "$0"`
				echo $me >> error$i.txt
				echo $(date) >> error$i.txt
			done
			fi;;

		--help|h)
		echo "Wpisz --date lub -d, aby wyświetlić aktualną datę"
		echo "Wpisz --logs lub -l, a następnie, gdy zostaniesz zapytany, wpisz liczbę plików log, która ma zostać utworzona (pozostaw puste, aby wygenerować 100)"
		echo "Wpisz --error lub -e, a następnie, gdy zostaniesz zapytany, wpisz liczbę plików error, która ma zostać utworzona (pozostaw puste, aby wygenerować 100)"
		echo "Wpisz --help lub -h, aby wyświetlić pomoc"
        *) echo "Nie ma takiej opcji"
    esac