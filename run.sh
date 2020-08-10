#!/bin/bash

cd client
./build.sh prod

cd ../server

go run main-server.go