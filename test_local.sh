#!/usr/bin/env bash
set -e

set -a
. test.env
set +a

go vet ./...
gotestsum --junitfile test_results.xml