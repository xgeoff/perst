#!/bin/sh

if [ x${LUCENE_JAR} == x ] ; then
   export LUCENE_JAR=/usr/local/lucene-1.4.3/build/lucene-1.5-rc1-dev.jar
fi

java -Xmx256M -classpath $LUCENE_JAR:../lib/perst.jar:. PerstIndexer . -create $1
