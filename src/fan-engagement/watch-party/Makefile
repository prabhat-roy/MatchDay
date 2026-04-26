.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/watch-party .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t matchday/watch-party:latest .

docker-run:
	docker run --rm -p 50203:50203 --env-file .env matchday/watch-party:latest
