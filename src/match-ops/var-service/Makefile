.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/var-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t matchday/var-service:latest .

docker-run:
	docker run --rm -p 50142:50142 --env-file .env matchday/var-service:latest
