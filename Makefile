install:
	pdm install

build: install
	docker build -t pdm:latest .

run:
	docker run --rm pdm

enter:
	docker run --rm -ti pdm bash
