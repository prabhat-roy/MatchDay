.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/clipping-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t matchday/clipping-service:latest .

docker-run:
	docker run --rm -p 50143:50143 --env-file .env matchday/clipping-service:latest
