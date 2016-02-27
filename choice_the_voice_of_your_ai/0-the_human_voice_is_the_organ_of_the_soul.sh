#!/bin/bash
MSG=$1
VOX=$2
ADD=$3

filename=$( echo $MSG | awk '{print $1}' )

case $VOX in
    m)
    say -v Thomas -o $filename.m4a $MSG
    ;;
    f)
    say -v Tessa -o $filename.m4a $MSG
    ;;
    x)
    say -v Trinoids -o $filename.m4a $MSG
    ;;
esac

scp -q /Users/nbveroczi/holbertonschool-sysadmin_devops/choice_the_voice_of_your_ai/$filename.m4a admin@$ADD:/var/www/html/
echo "Here is where you can listen to this message! $ADD/$filname.m4a"
