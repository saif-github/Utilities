#!/usr/bin/env bash

for i in list*; do 
   sed -r 's/(\.168\.[0-9]{1,3})/\.168\.102/g' $i; 
done;
