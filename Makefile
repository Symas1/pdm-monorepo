install:
	pdm install

build:
	docker build -t pdm:latest -f projects/api/Dockerfile .

run:
	docker run --rm pdm

enter:
	docker run --rm -ti pdm bash
