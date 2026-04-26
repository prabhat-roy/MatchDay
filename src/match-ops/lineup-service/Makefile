.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/lineup-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t matchday/lineup-service:latest .

docker-run:
	docker run --rm -p 50140:50140 --env-file .env matchday/lineup-service:latest
