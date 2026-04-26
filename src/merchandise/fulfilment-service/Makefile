.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/fulfilment-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t matchday/fulfilment-service:latest .

docker-run:
	docker run --rm -p 50281:50281 --env-file .env matchday/fulfilment-service:latest
