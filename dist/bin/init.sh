#!/bin/sh
ori_dir=`pwd`
bin_dir=`dirname $0`
cd $bin_dir/../
dir=`pwd`

CONF_DIR=$dir/conf
LIB_DIR=$dir/lib
LIB_JARS=`ls $LIB_DIR|grep .jar|awk '{print "'$LIB_DIR'/"$0}'|tr "\n" ":"`

echo "nohup java -classpath $CONF_DIR:$LIB_JARS cn.vigor.Application  >/dev/null  2>&1  &"
java -classpath $CONF_DIR:$LIB_JARS cn.vigor.Application > $CONF_DIR/../init.log  

echo "init sql success,sql  is  ./init.sql"
cd $ori_dir
