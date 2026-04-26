.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/roster-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t matchday/roster-service:latest .

docker-run:
	docker run --rm -p 50061:50061 --env-file .env matchday/roster-service:latest
