.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/transfer-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t matchday/transfer-service:latest .

docker-run:
	docker run --rm -p 50063:50063 --env-file .env matchday/transfer-service:latest
