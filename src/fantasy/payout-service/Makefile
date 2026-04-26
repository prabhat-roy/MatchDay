.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/payout-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t matchday/payout-service:latest .

docker-run:
	docker run --rm -p 50223:50223 --env-file .env matchday/payout-service:latest
