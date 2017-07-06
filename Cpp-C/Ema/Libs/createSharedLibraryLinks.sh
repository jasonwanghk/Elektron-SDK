#!/bin/bash

ROOT=$(pwd | sed 's/^\(.*Ema\).*/\1/')

for dir in $(find $ROOT/Libs -name Shared -type d)
do
    cd $dir
    
    # assume we have libema.so.3.0 which is not a link
    if [ -f libema.so.3.1 ] && [ ! -h libema.so.3.1 ]
    then
	if [ ! -f libema.so.3 ]
	then ln -s libema.so.3.1 libema.so.3
	else
	    if [ ! -h libema.so.3 ]
	    then
		rm -f libema.so.3
		ln -s libema.so.3.1 libema.so.3
	    fi
	fi

	if [ ! -f libema.so ]
	then ln -s libema.so.3 libema.so
	else
	    if [ ! -h libema.so ]
	    then
		rm -f libema.so
		ln -s libema.so.3 libema.so
	    fi
	fi
    fi
done
exit 0
