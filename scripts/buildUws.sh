#!/bin/bash

echo "Build custom uWebSockets.js ..."
cd bakend
rm -rf lib/uws
git clone --recursive https://github.com/uNetworking/uWebSockets.js.git lib/uws
cp lib/uws/build.c lib/uws/build.bak
cp lib/uws_build.c lib/uws/build.c
cd lib/uws
make
cd ../
echo "Finished"