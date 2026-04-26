.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/development-pathway .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t matchday/development-pathway:latest .

docker-run:
	docker run --rm -p 50302:50302 --env-file .env matchday/development-pathway:latest
