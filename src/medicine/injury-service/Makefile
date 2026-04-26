.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/injury-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t matchday/injury-service:latest .

docker-run:
	docker run --rm -p 50120:50120 --env-file .env matchday/injury-service:latest
