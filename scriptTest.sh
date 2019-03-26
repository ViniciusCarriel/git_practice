#! /bin/bash
# toggles LED by letters W, B, R, Y, A, U, I
trap unexport_gpio SIGINT SIGTERM
function unexport_gpio()
{
	printf "Unexport before leaving\n"
	exit 1
}
W=0
B=0
R=0
Y=0
A=0
U=0
I=0

while :; do
	printf "Enter LED color W, R, Y, A, U, I\n"
	read
	if [ "$REPLY" = 'W' ] || [ "$REPLY" = 'w' ];then
		if [ $W -eq 0 ];then
			W=1
			printf "toggle W = 1\n"
		else
			W=0
			printf "toggle W = 0\n"
		fi
	fi
	if [ "$REPLY" = 'R' ] || [ "$REPLY" = 'r' ];then
                if [ $R -eq 0 ];then
                        R=1
                        printf "toggle R = 1\n"
                else
                        R=0
                        printf "toggle R = 0\n"
                fi
        fi
	if [ "$REPLY" = 'Y' ] || [ "$REPLY" = 'y' ];then
                if [ $Y -eq 0 ];then
                        Y=1
                        printf "toggle Y = 1\n"
                else
                        Y=0
                        printf "toggle Y = 0\n"
                fi
        fi
done
