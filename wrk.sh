#!/bin/sh

ECHO=
DIR=<YOUR WRK SRC DIR>
THREAD=$1
CUNCURENT=$2
TW=$3
RT=$4
UA="wrk2"
DATE=`date "+%Y%m%d%H%M%S"`
URL="http://<YOUR TARGET>"
PROXY="http://<YOUR PROXY>:8080"
FILE="/var/tmp/result_$DATE\.txt"

cd $DIR
$ECHO ./wrk -t${THREAD} -c${CUNCURENT} -d${TW}s -R${RT} -H"User-Agent: ${UA}" --latency ${PROXY} -s scripts/proxy.lua -- ${URL} >& ${FILE}
