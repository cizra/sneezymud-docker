#!/bin/sh

cd `dirname $0`
docker run -it -p 7900:7900 -v `pwd`/sneezymud:/home/sneezy/sneezymud -v `pwd`/mysql:/var/lib/mysql sneezy