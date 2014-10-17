if [ "$1" = "" ]; then
    printf "Usage: ./checkanswer.bash <filename>\n"
    exit -1
fi

diff .solutions "$1"
if [ $? = 0 ]; then
    printf "Good job! Head to ../pipes for the next part!\n"
else
    printf "Not quite! Try again.\n"
fi
