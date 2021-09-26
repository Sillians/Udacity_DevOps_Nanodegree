#! /bin/bash
# An example to illustrate how CASE Statement works in bash scripts

echo -n "Enter the name of a Country"
read COUNTRY

echo -n "The Official language of ${COUNTRY} is "

case $COUNTRY in

    Lithuania)
        echo -n "Lithuanian"
        ;;
    
    Nigeria | Ghana)
        echo -n "English"
        ;;

    France | "Ivory Coast" | Cameron)
        echo -n "French"
        ;;

    Italy | "San Marino" | Switzerland | "Vatican City")
        echo -n "Italian"
        ;;

    *)
        echo -n "unknown"
        ;;
esac