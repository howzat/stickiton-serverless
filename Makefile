.PHONY: build clean test deploy
build:
	export GO111MODULE=on
	env GOOS=linux go build -ldflags="-s -w" -o bin/hello hello/main.go

clean:
	rm -rf ./bin

deploy:
	sls deploy --verbose

test:
	sh ./test_local.sh

all: build clean test