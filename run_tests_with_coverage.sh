#!/bin/bash

# script to be used in devops pipeline to run tests and generate coverage reports

# get GOPATH from go env
GOPATH=$(go env GOPATH)

mkdir ./output/coverage
go test -v -coverprofile=./output/coverage/coverage.txt ./... 2>&1 | $GOPATH/bin/go-junit-report > ./output/coverage/report.xml
$GOPATH/bin/gocov convert ./output/coverage/coverage.txt > ./output/coverage/coverage.json
$GOPATH/bin/gocov-xml < ./output/coverage/coverage.json > ./output/coverage/coverage.xml
$GOPATH/bin/gocov-html < ./output/coverage/coverage.json > ./output/coverage/index.html