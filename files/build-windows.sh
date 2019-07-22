 # fix building DLLs
 mv libtool libtool.bak &&
 sed -e "s/\(allow_undefined=\)yes/\1no/" libtool.bak > libtool &&
 echo build-install &&
 make install-strip &&
 echo Success