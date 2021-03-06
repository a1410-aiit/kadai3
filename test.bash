#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
	echo "$1" >&2
	rm -f $tmp-*
	exit 1
}

##
# 発展課題もやろうとしましたが、外部スクリプトであっても
# 非0を返した時点でテスト結果がエラーとなってしまうため
# 試せておりません。（テスト後に修正できれば追記します。）
##
#./14745110
#if [ $? -eq 0 ]; then
#        ERROR_EXIT "E001 : args count check is invalid."
#fi
#
#./14745110 10
#if [ $? -eq 0 ]; then
#	ERROR_EXIT "E002 : arg count check is invalid."
#fi
#
#./14745110 a b
#if [ $? -eq 0 ]; then
#        ERROR_EXIT "E003: arg num check is invalid."
#fi

ans=`./14745110 10 5`
if [ $ans -ne 5 ]; then
        ERROR_EXIT "E010: wrong result"
fi
ans=`./14745110 2 100`
if [ $ans -ne 2 ]; then
        ERROR_EXIT "E011: wrong result"
fi
ans=`./14745110 67876 3344`
if [ $ans -ne 4 ]; then
        ERROR_EXIT "E012: wrong result"
fi


exit 0
