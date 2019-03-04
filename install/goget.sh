#!/bin/bash

# install
go get github.com/golang/mock/gomock
go install github.com/golang/mock/mockgen

go get -u github.com/nsoushi/describe-ec2/cmd/describe-ec2
go get -u bitbucket.org/liamstask/goose/cmd/goose
go get -u github.com/stormcat24/protodep

go get -u github.com/sourcegraph/go-langserver
