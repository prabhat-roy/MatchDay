.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/fixture-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t matchday/fixture-service:latest .

docker-run:
	docker run --rm -p 50041:50041 --env-file .env matchday/fixture-service:latest
