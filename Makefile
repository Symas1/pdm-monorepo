install:
	pdm install

build:
	docker build -t pdm:latest .

run:
	docker run --rm pdm

enter:
	docker run --rm -ti pdm bash
