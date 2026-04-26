.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/fitness-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t matchday/fitness-service:latest .

docker-run:
	docker run --rm -p 50122:50122 --env-file .env matchday/fitness-service:latest
