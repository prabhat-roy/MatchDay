.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/squad-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t matchday/squad-service:latest .

docker-run:
	docker run --rm -p 50060:50060 --env-file .env matchday/squad-service:latest
