.PHONY: build test run lint docker-build

build:
	cargo build

test:
	cargo test

run:
	cargo run

lint:
	cargo clippy -- -D warnings

release:
	cargo build --release

docker-build:
	docker build -t matchday/athlete-sso:latest .
