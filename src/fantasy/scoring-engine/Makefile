.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/scoring-engine .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t matchday/scoring-engine:latest .

docker-run:
	docker run --rm -p 50221:50221 --env-file .env matchday/scoring-engine:latest
