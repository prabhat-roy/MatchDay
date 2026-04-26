.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/season-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t matchday/season-service:latest .

docker-run:
	docker run --rm -p 50040:50040 --env-file .env matchday/season-service:latest
