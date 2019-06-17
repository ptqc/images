#!/bin/sh

BIN_DIR=$(dirname "$0")


prepare() {
    apt-get update && apt-get install -y vim
}

installMySQLForPython() {
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py && pip install mysql.connector
}

installCrontab() {
    apt-get -y install cron
}

installPythonJose() {
    pip install python-jose[cryptography]
}

run() {
    prepare && installMySQLForPython && installCrontab && installPythonJose
}


run

