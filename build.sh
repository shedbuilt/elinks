#!/bin/bash
./autogen.sh
sed -i 's/CONFIG_88_COLORS=.*/CONFIG_88_COLORS=yes/g' features.conf
sed -i 's/CONFIG_256_COLORS=.*/CONFIG_256_COLORS=yes/g' features.conf
./configure --prefix=/usr || exit 1
make -j $SHED_NUMJOBS || exit 1
make "DESTDIR=$SHED_FAKEROOT" install || exit 1
