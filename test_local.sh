#!/usr/bin/env bash
set -e

set -a
. .env.development
. test.env
set +a

go vet ./...
gotestsum --junitfile test_results.xml