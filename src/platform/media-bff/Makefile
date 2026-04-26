.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/media-bff .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

docker-build: tidy
	docker build -t matchday/media-bff:latest .
