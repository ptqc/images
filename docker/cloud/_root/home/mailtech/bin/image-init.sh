#!/bin/sh

BIN_DIR=$(dirname "$0")


installMySQLForPython() {
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python get-pip.py
    pip install mysql.connector
}

installMySQLForPython

