build:
	docker build -t marians/benchmark-container .

run-all:
	docker run --rm -ti marians/benchmark-container
