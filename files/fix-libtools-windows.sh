mv libtool libtool.bak
sed -e "s/\(allow_undefined=\)yes/\1no/" libtool.bak > libtool