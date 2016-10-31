#!/bin/sh

# Compress 100 million random bytes using gzip

head -c 100000000 /dev/urandom | gzip >> /dev/null
