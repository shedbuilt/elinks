#!/bin/bash
./autogen.sh && \
sed -i 's/CONFIG_88_COLORS=.*/CONFIG_88_COLORS=yes/g' features.conf && \
sed -i 's/CONFIG_256_COLORS=.*/CONFIG_256_COLORS=yes/g' features.conf && \
./configure --prefix=/usr && \
make -j $SHED_NUMJOBS && \
make DESTDIR="$SHED_FAKEROOT" install
