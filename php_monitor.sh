#!/bin/bash
set -x 

count=$(ps -ef|grep 'data_transport'|wc -l)

if [ $count = '1' ];then
	nohup php /home/mugeda/data_transport/data_transport.php 5 &
	echo 'please check the php script status'|mail -s '请检查 cache_db_log server' weiqiang@mugeda.com
fi
	
