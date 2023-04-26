#!/bin/bash
echo "Wybierz opcje: "
read input
    case $input in
        --date) echo "$(date)";;
        *) echo "Nie ma takiej opcji"
    esac