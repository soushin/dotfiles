#!/bin/bash

# install
GO111MODULE=on go install github.com/golang/mock/gomock
GO111MODULE=on go install github.com/golang/mock/mockgen
GO111MODULE=on go install golang.org/x/tools/gopls@latest

GO111MODULE=on go install github.com/saibing/bingo
GO111MODULE=on go install golang.org/x/tools/cmd/goimports@latest
GO111MODULE=on go install github.com/cweill/gotests/...
