.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/odds-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t matchday/odds-service:latest .

docker-run:
	docker run --rm -p 50240:50240 --env-file .env matchday/odds-service:latest
