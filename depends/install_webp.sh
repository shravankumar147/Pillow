#!/bin/bash
# install webp

if [ ! -f libwebp-0.5.1.tar.gz ]; then
    wget -O 'libwebp-0.5.1.tar.gz' 'https://github.com/python-pillow/pillow-depends/blob/master/libwebp-0.5.1.tar.gz?raw=true'
fi

rm -r libwebp-0.5.1
tar -xvzf libwebp-0.5.1.tar.gz

pushd libwebp-0.5.1

./configure --prefix=/usr --enable-libwebpmux --enable-libwebpdemux && make -j4 && sudo make -j4 install

popd
