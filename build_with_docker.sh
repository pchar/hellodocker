#!/bin/sh
set -e

docker ps 
cd /s2i-java/
make
