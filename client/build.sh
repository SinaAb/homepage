#!/bin/bash

if [ -d dist ]
then
  rm -rf dist
fi

if [ -d ../server/SPA ]
then
  rm -rf ../server/SPA
fi

if [ "$1"  == "dev" ]
then
  ng build
fi

if [ "$1"  == "prod" ]
then
  ng build --prod
fi

mkdir ../server/SPA && cp -R dist/angular-homepage/* ../server/SPA