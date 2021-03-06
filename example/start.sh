#!/usr/bin/env bash

set -x

go install github.com/MathieuTurcotte/go-browserchannel/... || exit

GOMAXPROCS=8

bin/server \
    --public_directory=src/github.com/MathieuTurcotte/go-browserchannel/example/client \
    --closure_directory=src/github.com/MathieuTurcotte/go-browserchannel/closure \
    --port=8080 $@
