#!/bin/sh

POM=$1
JAR=$2

if [ -z "$JAR" -o -z "$POM" ]; then
    echo "Usage: $0 foo.pom foo.jar"
    exit 255
fi

mvn install:install-file -Dfile=$JAR -DpomFile=$POM -DlocalRepositoryPath=maven
