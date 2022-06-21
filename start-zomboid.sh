#!/bin/bash

SERVER_DIR=/path/to/install/dir
SERVER_SCRIPT=./start-server.sh
SERVER_NAME=name_of_server

cd "$SERVER_DIR"

$SERVER_SCRIPT -servername $SERVER_NAME
