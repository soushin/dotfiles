#!/bin/bash

# install
go get github.com/golang/mock/gomock
go install github.com/golang/mock/mockgen

go get -u github.com/sourcegraph/go-langserver
go get -u github.com/saibing/bingo
