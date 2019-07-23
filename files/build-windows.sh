 # fix for building windows_monitor
mv libfswatch/src/libfswatch/Makefile libfswatch/src/libfswatch/Makefile.bak &&
sed -e "s/USE_CYGWIN/USE_WINDOWS/" libfswatch/src/libfswatch/Makefile.bak > libfswatch/src/libfswatch/Makefile

# fix for building windows_monitor
mv libfswatch/Makefile libfswatch/Makefile.bak &&
sed -e "s/USE_CYGWIN/USE_WINDOWS/" libfswatch/Makefile.bak > libfswatch/Makefile
 
 # fix building DLLs
 mv libtool libtool.bak &&
 sed -e "s/\(allow_undefined=\)yes/\1no/" libtool.bak > libtool &&
 make &&
 make install-strip &&
 echo Success