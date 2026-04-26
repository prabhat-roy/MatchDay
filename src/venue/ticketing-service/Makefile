.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/ticketing-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t matchday/ticketing-service:latest .

docker-run:
	docker run --rm -p 50160:50160 --env-file .env matchday/ticketing-service:latest
