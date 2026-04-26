.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/access-control .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

docker-build: tidy
	docker build -t matchday/access-control:latest .
