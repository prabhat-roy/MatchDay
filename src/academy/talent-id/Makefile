.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/talent-id .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t matchday/talent-id:latest .

docker-run:
	docker run --rm -p 50301:50301 --env-file .env matchday/talent-id:latest
