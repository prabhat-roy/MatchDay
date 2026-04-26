.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/gps-tracking .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

docker-build: tidy
	docker build -t matchday/gps-tracking:latest .
